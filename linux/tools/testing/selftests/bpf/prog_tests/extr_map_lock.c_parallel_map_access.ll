; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_map_lock.c_parallel_map_access.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_map_lock.c_parallel_map_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_F_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"lookup failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"lookup #%d var[0]=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"lookup #%d var[1]=%d var[%d]=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @parallel_map_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parallel_map_access(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [17 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %74, %1
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 10000
  br i1 %16, label %17, label %77

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* @BPF_F_LOCK, align 4
  %21 = call i32 @bpf_map_lookup_elem_flags(i32 %18, i32* %10, i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @CHECK_FAIL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %78

27:                                               ; preds = %17
  %28 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %29 = load i32, i32* %28, align 16
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @CHECK_FAIL(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  br label %78

39:                                               ; preds = %27
  %40 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %42

42:                                               ; preds = %70, %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 17
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %70

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @CHECK_FAIL(i32 %68)
  br label %78

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %42

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %14

77:                                               ; preds = %14
  br label %78

78:                                               ; preds = %77, %53, %34, %25
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @pthread_exit(i8* %79)
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i32 @bpf_map_lookup_elem_flags(i32, i32*, i32*, i32) #1

declare dso_local i64 @CHECK_FAIL(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pthread_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
