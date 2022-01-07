; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_dsp_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_dsp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sst_pdata = type { %struct.sst_hsw* }
%struct.sst_hsw = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@SST_HSW_DX_CONTEXT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_hsw_dsp_free(%struct.device* %0, %struct.sst_pdata* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sst_pdata*, align 8
  %5 = alloca %struct.sst_hsw*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %4, align 8
  %6 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %7 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %6, i32 0, i32 0
  %8 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  store %struct.sst_hsw* %8, %struct.sst_hsw** %5, align 8
  %9 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %10 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @sst_dsp_reset(%struct.TYPE_4__* %11)
  %13 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %14 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @sst_fw_free_all(%struct.TYPE_4__* %15)
  %17 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %18 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SST_HSW_DX_CONTEXT_SIZE, align 4
  %23 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %24 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %27 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_free_coherent(i32 %21, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %31 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @sst_dsp_free(%struct.TYPE_4__* %32)
  %34 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %35 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %34, i32 0, i32 0
  %36 = call i32 @sst_ipc_fini(i32* %35)
  ret void
}

declare dso_local i32 @sst_dsp_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @sst_fw_free_all(%struct.TYPE_4__*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @sst_dsp_free(%struct.TYPE_4__*) #1

declare dso_local i32 @sst_ipc_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
