; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_hdav_slim_resume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_xonar_hdav_slim_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_hdav_slim_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_hdav_slim_resume(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %5, align 8
  store %struct.xonar_wm87x6* %6, %struct.xonar_wm87x6** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = call i32 @wm8776_registers_init(%struct.oxygen* %7)
  %9 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %10 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %11 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %10, i32 0, i32 0
  %12 = call i32 @xonar_hdmi_resume(%struct.oxygen* %9, i32* %11)
  %13 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %14 = call i32 @xonar_enable_output(%struct.oxygen* %13)
  ret void
}

declare dso_local i32 @wm8776_registers_init(%struct.oxygen*) #1

declare dso_local i32 @xonar_hdmi_resume(%struct.oxygen*, i32*) #1

declare dso_local i32 @xonar_enable_output(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
