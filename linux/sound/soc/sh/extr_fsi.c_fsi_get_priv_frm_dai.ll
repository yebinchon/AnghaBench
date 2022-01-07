; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_get_priv_frm_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_get_priv_frm_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.fsi_master = type { %struct.fsi_priv, %struct.fsi_priv }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsi_priv* (%struct.snd_soc_dai*)* @fsi_get_priv_frm_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsi_priv* @fsi_get_priv_frm_dai(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.fsi_priv*, align 8
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca %struct.fsi_master*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %6 = call %struct.fsi_master* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %5)
  store %struct.fsi_master* %6, %struct.fsi_master** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %13 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %12, i32 0, i32 1
  store %struct.fsi_priv* %13, %struct.fsi_priv** %2, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %16 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %15, i32 0, i32 0
  store %struct.fsi_priv* %16, %struct.fsi_priv** %2, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.fsi_priv*, %struct.fsi_priv** %2, align 8
  ret %struct.fsi_priv* %18
}

declare dso_local %struct.fsi_master* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
