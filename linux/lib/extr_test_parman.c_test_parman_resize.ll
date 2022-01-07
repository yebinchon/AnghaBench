; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_resize.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_parman.c_test_parman_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_parman = type { i64, %struct.test_parman_item** }
%struct.test_parman_item = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @test_parman_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_parman_resize(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.test_parman*, align 8
  %7 = alloca %struct.test_parman_item**, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.test_parman*
  store %struct.test_parman* %10, %struct.test_parman** %6, align 8
  %11 = load %struct.test_parman*, %struct.test_parman** %6, align 8
  %12 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %11, i32 0, i32 1
  %13 = load %struct.test_parman_item**, %struct.test_parman_item*** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @ITEM_PTRS_SIZE(i64 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.test_parman_item** @krealloc(%struct.test_parman_item** %13, i32 %15, i32 %16)
  store %struct.test_parman_item** %17, %struct.test_parman_item*** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.test_parman_item**, %struct.test_parman_item*** %7, align 8
  %23 = icmp ne %struct.test_parman_item** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %21
  %28 = load %struct.test_parman*, %struct.test_parman** %6, align 8
  %29 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.test_parman_item**, %struct.test_parman_item*** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.test_parman_item*, %struct.test_parman_item** %35, i64 %36
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %38, %39
  %41 = call i32 @ITEM_PTRS_SIZE(i64 %40)
  %42 = call i32 @memset(%struct.test_parman_item** %37, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %34, %27
  %44 = load %struct.test_parman_item**, %struct.test_parman_item*** %7, align 8
  %45 = load %struct.test_parman*, %struct.test_parman** %6, align 8
  %46 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %45, i32 0, i32 1
  store %struct.test_parman_item** %44, %struct.test_parman_item*** %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.test_parman*, %struct.test_parman** %6, align 8
  %49 = getelementptr inbounds %struct.test_parman, %struct.test_parman* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %24, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.test_parman_item** @krealloc(%struct.test_parman_item**, i32, i32) #1

declare dso_local i32 @ITEM_PTRS_SIZE(i64) #1

declare dso_local i32 @memset(%struct.test_parman_item**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
