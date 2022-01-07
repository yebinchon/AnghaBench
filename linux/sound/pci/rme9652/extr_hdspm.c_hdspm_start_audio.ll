; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_start_audio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_start_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }

@HDSPM_AudioInterruptEnable = common dso_local global i32 0, align 4
@HDSPM_Start = common dso_local global i32 0, align 4
@HDSPM_controlRegister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdspm*)* @hdspm_start_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspm_start_audio(%struct.hdspm* %0) #0 {
  %2 = alloca %struct.hdspm*, align 8
  store %struct.hdspm* %0, %struct.hdspm** %2, align 8
  %3 = load i32, i32* @HDSPM_AudioInterruptEnable, align 4
  %4 = load i32, i32* @HDSPM_Start, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %7 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %11 = load i32, i32* @HDSPM_controlRegister, align 4
  %12 = load %struct.hdspm*, %struct.hdspm** %2, align 8
  %13 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hdspm_write(%struct.hdspm* %10, i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
