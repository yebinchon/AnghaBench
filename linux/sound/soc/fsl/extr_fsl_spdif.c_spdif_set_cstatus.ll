; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_set_cstatus.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_set_cstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdif_mixer_control = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spdif_mixer_control*, i32, i32)* @spdif_set_cstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_set_cstatus(%struct.spdif_mixer_control* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spdif_mixer_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spdif_mixer_control* %0, %struct.spdif_mixer_control** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %4, align 8
  %10 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %8
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.spdif_mixer_control*, %struct.spdif_mixer_control** %4, align 8
  %19 = getelementptr inbounds %struct.spdif_mixer_control, %struct.spdif_mixer_control* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %17
  store i32 %23, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
