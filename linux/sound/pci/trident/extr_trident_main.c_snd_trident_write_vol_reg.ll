; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_vol_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_vol_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32 }
%struct.snd_trident_voice = type { i32, i32, i32 }

@T4D_LFO_GC_CIR = common dso_local global i32 0, align 4
@CH_GVSEL_PAN_VOL_CTRL_EC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_trident*, %struct.snd_trident_voice*, i32)* @snd_trident_write_vol_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_trident_write_vol_reg(%struct.snd_trident* %0, %struct.snd_trident_voice* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store %struct.snd_trident_voice* %1, %struct.snd_trident_voice** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %9 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %11 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %14 = load i32, i32* @T4D_LFO_GC_CIR, align 4
  %15 = call i32 @TRID_REG(%struct.snd_trident* %13, i32 %14)
  %16 = call i32 @outb(i32 %12, i32 %15)
  %17 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %18 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %43 [
    i32 130, label %20
    i32 129, label %20
    i32 128, label %30
  ]

20:                                               ; preds = %3, %3
  %21 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %22 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %23, 2
  %25 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %26 = load i32, i32* @CH_GVSEL_PAN_VOL_CTRL_EC, align 4
  %27 = add nsw i32 %26, 2
  %28 = call i32 @TRID_REG(%struct.snd_trident* %25, i32 %27)
  %29 = call i32 @outb(i32 %24, i32 %28)
  br label %43

30:                                               ; preds = %3
  %31 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %32 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 12
  %35 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %36 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %40 = load i32, i32* @CH_GVSEL_PAN_VOL_CTRL_EC, align 4
  %41 = call i32 @TRID_REG(%struct.snd_trident* %39, i32 %40)
  %42 = call i32 @outw(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %3, %30, %20
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
