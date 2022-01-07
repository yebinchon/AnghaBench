; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to create hashmap key=%d value=%d '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_hashmap_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hashmap_sizes(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 512
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %39, %11
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 262144
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @map_flags, align 4
  %20 = call i32 @bpf_create_map(i32 %16, i32 %17, i32 %18, i32 2, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %46

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* @errno, align 8
  %32 = call i8* @strerror(i64 %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i8* %32)
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %15
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @close(i32 %36)
  %38 = call i32 @usleep(i32 10)
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %12

42:                                               ; preds = %12
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %8

46:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
