; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_dsp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sst_pdata = type { %struct.sst_byt* }
%struct.sst_byt = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_byt_dsp_free(%struct.device* %0, %struct.sst_pdata* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sst_pdata*, align 8
  %5 = alloca %struct.sst_byt*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.sst_pdata* %1, %struct.sst_pdata** %4, align 8
  %6 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %7 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %6, i32 0, i32 0
  %8 = load %struct.sst_byt*, %struct.sst_byt** %7, align 8
  store %struct.sst_byt* %8, %struct.sst_byt** %5, align 8
  %9 = load %struct.sst_byt*, %struct.sst_byt** %5, align 8
  %10 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sst_dsp_reset(i32 %11)
  %13 = load %struct.sst_byt*, %struct.sst_byt** %5, align 8
  %14 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sst_fw_free_all(i32 %15)
  %17 = load %struct.sst_byt*, %struct.sst_byt** %5, align 8
  %18 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sst_dsp_free(i32 %19)
  %21 = load %struct.sst_byt*, %struct.sst_byt** %5, align 8
  %22 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %21, i32 0, i32 0
  %23 = call i32 @sst_ipc_fini(i32* %22)
  ret void
}

declare dso_local i32 @sst_dsp_reset(i32) #1

declare dso_local i32 @sst_fw_free_all(i32) #1

declare dso_local i32 @sst_dsp_free(i32) #1

declare dso_local i32 @sst_ipc_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
