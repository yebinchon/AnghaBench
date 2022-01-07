; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_core.c_snd_vx_dsp_boot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_core.c_snd_vx_dsp_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.firmware = type { i32 }

@VX_STAT_DEVICE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_vx_dsp_boot(%struct.vx_core* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %8 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %9 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VX_STAT_DEVICE_INIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @vx_reset_board(%struct.vx_core* %16, i32 %17)
  %19 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %20 = call i32 @vx_validate_irq(%struct.vx_core* %19, i32 0)
  %21 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %22 = load %struct.firmware*, %struct.firmware** %5, align 8
  %23 = call i32 @snd_vx_load_boot_image(%struct.vx_core* %21, %struct.firmware* %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = call i32 @msleep(i32 10)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @vx_reset_board(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_validate_irq(%struct.vx_core*, i32) #1

declare dso_local i32 @snd_vx_load_boot_image(%struct.vx_core*, %struct.firmware*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
