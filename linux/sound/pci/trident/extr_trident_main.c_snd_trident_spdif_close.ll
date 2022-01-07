; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_trident = type { i64, i32, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@NX_SPCTRL_SPCSO = common dso_local global i64 0, align 8
@NX_SPCSTATUS = common dso_local global i64 0, align 8
@SI_SPDIF_CS = common dso_local global i64 0, align 8
@SI_SERIAL_INTF_CTRL = common dso_local global i64 0, align 8
@SPDIF_EN = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_spdif_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_spdif_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_trident* %6, %struct.snd_trident** %3, align 8
  %7 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %8 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %7, i32 0, i32 4
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %11 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %17 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %20 = load i64, i64* @NX_SPCTRL_SPCSO, align 8
  %21 = add nsw i64 %20, 3
  %22 = call i32 @TRID_REG(%struct.snd_trident* %19, i64 %21)
  %23 = call i32 @outb(i64 %18, i32 %22)
  %24 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %25 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %28 = load i64, i64* @NX_SPCSTATUS, align 8
  %29 = call i32 @TRID_REG(%struct.snd_trident* %27, i64 %28)
  %30 = call i32 @outl(i32 %26, i32 %29)
  br label %62

31:                                               ; preds = %1
  %32 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %33 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %36 = load i64, i64* @SI_SPDIF_CS, align 8
  %37 = call i32 @TRID_REG(%struct.snd_trident* %35, i64 %36)
  %38 = call i32 @outl(i32 %34, i32 %37)
  %39 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %40 = load i64, i64* @SI_SERIAL_INTF_CTRL, align 8
  %41 = call i32 @TRID_REG(%struct.snd_trident* %39, i64 %40)
  %42 = call i32 @inl(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %44 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load i32, i32* @SPDIF_EN, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %31
  %52 = load i32, i32* @SPDIF_EN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %59 = load i64, i64* @SI_SERIAL_INTF_CTRL, align 8
  %60 = call i32 @TRID_REG(%struct.snd_trident* %58, i64 %59)
  %61 = call i32 @outl(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %15
  %63 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %64 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %63, i32 0, i32 4
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %67 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %68 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %66
  store i32 %75, i32* %73, align 4
  %76 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %77 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %80 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %83 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @snd_ctl_notify(i32 %78, i32 %81, i32* %85)
  ret i32 0
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
