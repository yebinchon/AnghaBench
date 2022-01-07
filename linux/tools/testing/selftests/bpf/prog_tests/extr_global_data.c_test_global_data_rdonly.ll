; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_global_data.c_test_global_data_rdonly.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_global_data.c_test_global_data_rdonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }
%struct.bpf_map = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"test_glo.rodata\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"test .rodata read-only map\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"err %d errno %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_object*, i32)* @test_global_data_rdonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_global_data_rdonly(%struct.bpf_object* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_map*, align 8
  %9 = alloca i32*, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %13 = call %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.bpf_map* %13, %struct.bpf_map** %8, align 8
  %14 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %15 = icmp ne %struct.bpf_map* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %18 = call i32 @bpf_map__is_internal(%struct.bpf_map* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ true, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @CHECK_FAIL(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %63

27:                                               ; preds = %21
  %28 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %29 = call i32 @bpf_map__fd(%struct.bpf_map* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @CHECK_FAIL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %63

36:                                               ; preds = %27
  %37 = load %struct.bpf_map*, %struct.bpf_map** %8, align 8
  %38 = call %struct.TYPE_2__* @bpf_map__def(%struct.bpf_map* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @malloc(i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @bpf_map_update_elem(i32 %45, i32* %7, i32* %46, i32 0)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @free(i32* %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EPERM, align 8
  %56 = icmp ne i64 %54, %55
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i1 [ true, %48 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = load i64, i64* @errno, align 8
  %62 = call i32 @CHECK(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %57, %35, %26
  ret void
}

declare dso_local %struct.bpf_map* @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #1

declare dso_local i64 @CHECK_FAIL(i32) #1

declare dso_local i32 @bpf_map__is_internal(%struct.bpf_map*) #1

declare dso_local i32 @bpf_map__fd(%struct.bpf_map*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local %struct.TYPE_2__* @bpf_map__def(%struct.bpf_map*) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
