; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_context_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_context_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32*, %struct.TYPE_5__, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@SST_SHUTDOWN = common dso_local global i32 0, align 4
@sst_fw_version_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_context_cleanup(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca %struct.intel_sst_drv*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %2, align 8
  %3 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %4 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %3, i32 0, i32 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = call i32 @pm_runtime_get_noresume(%struct.TYPE_6__* %5)
  %7 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %8 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %7, i32 0, i32 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call i32 @pm_runtime_disable(%struct.TYPE_6__* %9)
  %11 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %12 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call i32 @sst_unregister(%struct.TYPE_6__* %13)
  %15 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %16 = load i32, i32* @SST_SHUTDOWN, align 4
  %17 = call i32 @sst_set_fw_state_locked(%struct.intel_sst_drv* %15, i32 %16)
  %18 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %19 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %18, i32 0, i32 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @sysfs_remove_group(i32* %21, i32* @sst_fw_version_attr_group)
  %23 = call i32 (...) @flush_scheduled_work()
  %24 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %25 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @destroy_workqueue(i32 %26)
  %28 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %29 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pm_qos_remove_request(i32 %30)
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %33 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %38 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %43 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %46 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %50 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  %51 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %52 = call i32 @sst_memcpy_free_resources(%struct.intel_sst_drv* %51)
  store %struct.intel_sst_drv* null, %struct.intel_sst_drv** %2, align 8
  ret void
}

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_6__*) #1

declare dso_local i32 @sst_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @sst_set_fw_state_locked(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @pm_qos_remove_request(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @sst_memcpy_free_resources(%struct.intel_sst_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
