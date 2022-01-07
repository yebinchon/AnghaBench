; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c___test_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c___test_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.nfit_test_resource = type { i8*, i32, i32, i32, %struct.TYPE_4__, %struct.device* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@release_nfit_res = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NFIT\00", align 1
@nfit_test_lock = common dso_local global i32 0, align 4
@DIMM_SIZE = common dso_local global i64 0, align 8
@nfit_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfit_test*, i64, i8**, i8*)* @__test_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__test_alloc(%struct.nfit_test* %0, i64 %1, i8** %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfit_test*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.nfit_test_resource*, align 8
  %12 = alloca i32, align 4
  store %struct.nfit_test* %0, %struct.nfit_test** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.nfit_test*, %struct.nfit_test** %6, align 8
  %14 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.nfit_test_resource* @kzalloc(i32 56, i32 %16)
  store %struct.nfit_test_resource* %17, %struct.nfit_test_resource** %11, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %22 = icmp ne %struct.nfit_test_resource* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %20, %4
  br label %81

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %10, align 8
  %30 = load i32, i32* @release_nfit_res, align 4
  %31 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %32 = call i32 @devm_add_action(%struct.device* %29, i32 %30, %struct.nfit_test_resource* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %81

36:                                               ; preds = %28
  %37 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %38 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @memset(i8* %40, i32 0, i64 %41)
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %45 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %44, i32 0, i32 5
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %48 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %52 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = getelementptr i8, i8* %57, i64 -1
  %59 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %60 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %63 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %64, align 8
  %65 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %66 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %65, i32 0, i32 3
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %69 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %68, i32 0, i32 2
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = call i32 @spin_lock(i32* @nfit_test_lock)
  %72 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %73 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %72, i32 0, i32 1
  %74 = load %struct.nfit_test*, %struct.nfit_test** %6, align 8
  %75 = getelementptr inbounds %struct.nfit_test, %struct.nfit_test* %74, i32 0, i32 0
  %76 = call i32 @list_add(i32* %73, i32* %75)
  %77 = call i32 @spin_unlock(i32* @nfit_test_lock)
  %78 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %79 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %5, align 8
  br label %104

81:                                               ; preds = %35, %27
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @DIMM_SIZE, align 8
  %88 = icmp uge i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* @nfit_pool, align 4
  %91 = load i8**, i8*** %8, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @gen_pool_free(i32 %90, i8* %92, i64 %93)
  br label %95

95:                                               ; preds = %89, %85, %81
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @vfree(i8* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %11, align 8
  %103 = call i32 @kfree(%struct.nfit_test_resource* %102)
  store i8* null, i8** %5, align 8
  br label %104

104:                                              ; preds = %101, %36
  %105 = load i8*, i8** %5, align 8
  ret i8* %105
}

declare dso_local %struct.nfit_test_resource* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.nfit_test_resource*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gen_pool_free(i32, i8*, i64) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @kfree(%struct.nfit_test_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
