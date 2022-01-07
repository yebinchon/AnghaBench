; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_imx8.c_imx8_dsp_handle_reply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/imx/extr_imx8.c_imx8_dsp_handle_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_dsp_ipc = type { i32 }
%struct.imx8_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_dsp_ipc*)* @imx8_dsp_handle_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx8_dsp_handle_reply(%struct.imx_dsp_ipc* %0) #0 {
  %2 = alloca %struct.imx_dsp_ipc*, align 8
  %3 = alloca %struct.imx8_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.imx_dsp_ipc* %0, %struct.imx_dsp_ipc** %2, align 8
  %5 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %2, align 8
  %6 = call %struct.imx8_priv* @imx_dsp_get_data(%struct.imx_dsp_ipc* %5)
  store %struct.imx8_priv* %6, %struct.imx8_priv** %3, align 8
  %7 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %8 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %14 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @imx8_get_reply(%struct.TYPE_3__* %15)
  %17 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %18 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @snd_sof_ipc_reply(%struct.TYPE_3__* %19, i32 0)
  %21 = load %struct.imx8_priv*, %struct.imx8_priv** %3, align 8
  %22 = getelementptr inbounds %struct.imx8_priv, %struct.imx8_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local %struct.imx8_priv* @imx_dsp_get_data(%struct.imx_dsp_ipc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @imx8_get_reply(%struct.TYPE_3__*) #1

declare dso_local i32 @snd_sof_ipc_reply(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
