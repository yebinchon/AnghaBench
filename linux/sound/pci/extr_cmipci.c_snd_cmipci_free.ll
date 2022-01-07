; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i64, i32 }

@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_FM_EN = common dso_local global i32 0, align 4
@CM_REG_LEGACY_CTRL = common dso_local global i32 0, align 4
@CM_ENSPDOUT = common dso_local global i32 0, align 4
@CM_REG_INT_HLDCLR = common dso_local global i32 0, align 4
@CM_CH_PLAY = common dso_local global i32 0, align 4
@CM_CH_CAPT = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL0 = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*)* @snd_cmipci_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_free(%struct.cmipci* %0) #0 {
  %2 = alloca %struct.cmipci*, align 8
  store %struct.cmipci* %0, %struct.cmipci** %2, align 8
  %3 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %4 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %9 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %10 = load i32, i32* @CM_FM_EN, align 4
  %11 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %8, i32 %9, i32 %10)
  %12 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %13 = load i32, i32* @CM_REG_LEGACY_CTRL, align 4
  %14 = load i32, i32* @CM_ENSPDOUT, align 4
  %15 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %12, i32 %13, i32 %14)
  %16 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %17 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %18 = call i32 @snd_cmipci_write(%struct.cmipci* %16, i32 %17, i32 0)
  %19 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %20 = load i32, i32* @CM_CH_PLAY, align 4
  %21 = call i32 @snd_cmipci_ch_reset(%struct.cmipci* %19, i32 %20)
  %22 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %23 = load i32, i32* @CM_CH_CAPT, align 4
  %24 = call i32 @snd_cmipci_ch_reset(%struct.cmipci* %22, i32 %23)
  %25 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %26 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %27 = call i32 @snd_cmipci_write(%struct.cmipci* %25, i32 %26, i32 0)
  %28 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %29 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %30 = call i32 @snd_cmipci_write(%struct.cmipci* %28, i32 %29, i32 0)
  %31 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %32 = call i32 @snd_cmipci_mixer_write(%struct.cmipci* %31, i32 0, i32 0)
  %33 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %34 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %37 = call i32 @free_irq(i64 %35, %struct.cmipci* %36)
  br label %38

38:                                               ; preds = %7, %1
  %39 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %40 = call i32 @snd_cmipci_free_gameport(%struct.cmipci* %39)
  %41 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %42 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pci_release_regions(i32 %43)
  %45 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %46 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_disable_device(i32 %47)
  %49 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %50 = call i32 @kfree(%struct.cmipci* %49)
  ret i32 0
}

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_ch_reset(%struct.cmipci*, i32) #1

declare dso_local i32 @snd_cmipci_mixer_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.cmipci*) #1

declare dso_local i32 @snd_cmipci_free_gameport(%struct.cmipci*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.cmipci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
