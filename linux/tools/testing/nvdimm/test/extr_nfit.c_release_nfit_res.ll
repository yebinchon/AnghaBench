; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_release_nfit_res.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_nfit.c_release_nfit_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfit_test_resource = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@nfit_test_lock = common dso_local global i32 0, align 4
@DIMM_SIZE = common dso_local global i64 0, align 8
@nfit_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @release_nfit_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_nfit_res(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfit_test_resource*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nfit_test_resource*
  store %struct.nfit_test_resource* %5, %struct.nfit_test_resource** %3, align 8
  %6 = call i32 @spin_lock(i32* @nfit_test_lock)
  %7 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %3, align 8
  %8 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %7, i32 0, i32 2
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @spin_unlock(i32* @nfit_test_lock)
  %11 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %3, align 8
  %12 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %11, i32 0, i32 1
  %13 = call i64 @resource_size(%struct.TYPE_2__* %12)
  %14 = load i64, i64* @DIMM_SIZE, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @nfit_pool, align 4
  %18 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %3, align 8
  %19 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %3, align 8
  %23 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %22, i32 0, i32 1
  %24 = call i64 @resource_size(%struct.TYPE_2__* %23)
  %25 = call i32 @gen_pool_free(i32 %17, i32 %21, i64 %24)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %3, align 8
  %28 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vfree(i32 %29)
  %31 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %3, align 8
  %32 = call i32 @kfree(%struct.nfit_test_resource* %31)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @gen_pool_free(i32, i32, i64) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.nfit_test_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
