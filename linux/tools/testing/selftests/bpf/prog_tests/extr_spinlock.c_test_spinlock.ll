; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_spinlock.c_test_spinlock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_spinlock.c_test_spinlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"./test_spin_lock.o\00", align 1
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"test_spin_lock:bpf_prog_load errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@spin_lock_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_spinlock() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [4 x i32], align 16
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store %struct.bpf_object* null, %struct.bpf_object** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %1, align 8
  %9 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  %10 = call i32 @bpf_prog_load(i8* %8, i32 %9, %struct.bpf_object** %3, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @CHECK_FAIL(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %59

17:                                               ; preds = %0
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %23
  %25 = call i32 @pthread_create(i32* %24, i32* null, i32* @spin_lock_thread, i32* %4)
  %26 = call i64 @CHECK_FAIL(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %59

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %18

33:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @pthread_join(i32 %41, i8** %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i32* %4 to i8*
  %47 = icmp ne i8* %45, %46
  br label %48

48:                                               ; preds = %44, %37
  %49 = phi i1 [ true, %37 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @CHECK_FAIL(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %59

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %34

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %53, %28, %14
  %60 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %61 = call i32 @bpf_object__close(%struct.bpf_object* %60)
  ret void
}

declare dso_local i32 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #1

declare dso_local i64 @CHECK_FAIL(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
