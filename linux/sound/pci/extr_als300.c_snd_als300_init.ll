; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_als300 = type { i32, i32, i32 }

@MISC_CONTROL = common dso_local global i32 0, align 4
@DRAM_WRITE_CONTROL = common dso_local global i32 0, align 4
@DRAM_MODE_2 = common dso_local global i32 0, align 4
@WRITE_TRANS_START = common dso_local global i32 0, align 4
@IRQ_ENABLE = common dso_local global i32 0, align 4
@VMUTE_NORMAL = common dso_local global i32 0, align 4
@MMUTE_NORMAL = common dso_local global i32 0, align 4
@MUS_VOC_VOL = common dso_local global i32 0, align 4
@PLAYBACK_CONTROL = common dso_local global i32 0, align 4
@TRANSFER_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_als300*)* @snd_als300_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_als300_init(%struct.snd_als300* %0) #0 {
  %2 = alloca %struct.snd_als300*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.snd_als300* %0, %struct.snd_als300** %2, align 8
  %5 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %6 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %10 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MISC_CONTROL, align 4
  %13 = call i32 @snd_als300_gcr_read(i32 %11, i32 %12)
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 15
  %16 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %17 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %19 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DRAM_WRITE_CONTROL, align 4
  %22 = call i32 @snd_als300_gcr_read(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %24 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DRAM_WRITE_CONTROL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DRAM_MODE_2, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WRITE_TRANS_START, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @snd_als300_gcr_write(i32 %25, i32 %26, i32 %32)
  %34 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %35 = load i32, i32* @IRQ_ENABLE, align 4
  %36 = call i32 @snd_als300_set_irq_flag(%struct.snd_als300* %34, i32 %35)
  %37 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %38 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MISC_CONTROL, align 4
  %41 = call i32 @snd_als300_gcr_read(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %43 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MISC_CONTROL, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @VMUTE_NORMAL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MMUTE_NORMAL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @snd_als300_gcr_write(i32 %44, i32 %45, i32 %50)
  %52 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %53 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MUS_VOC_VOL, align 4
  %56 = call i32 @snd_als300_gcr_write(i32 %54, i32 %55, i32 0)
  %57 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %58 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PLAYBACK_CONTROL, align 4
  %61 = call i32 @snd_als300_gcr_read(i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %63 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PLAYBACK_CONTROL, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @TRANSFER_START, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = call i32 @snd_als300_gcr_write(i32 %64, i32 %65, i32 %69)
  %71 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %72 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %71, i32 0, i32 1
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_als300_gcr_read(i32, i32) #1

declare dso_local i32 @snd_als300_gcr_write(i32, i32, i32) #1

declare dso_local i32 @snd_als300_set_irq_flag(%struct.snd_als300*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
