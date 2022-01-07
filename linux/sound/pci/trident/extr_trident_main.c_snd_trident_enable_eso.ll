; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_enable_eso.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_enable_eso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64 }

@T4D_LFO_GC_CIR = common dso_local global i32 0, align 4
@ENDLP_IE = common dso_local global i32 0, align 4
@MIDLP_IE = common dso_local global i32 0, align 4
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@BANK_B_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_trident*)* @snd_trident_enable_eso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_trident_enable_eso(%struct.snd_trident* %0) #0 {
  %2 = alloca %struct.snd_trident*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %2, align 8
  %4 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %5 = load i32, i32* @T4D_LFO_GC_CIR, align 4
  %6 = call i32 @TRID_REG(%struct.snd_trident* %4, i32 %5)
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @ENDLP_IE, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MIDLP_IE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %15 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @BANK_B_EN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.snd_trident*, %struct.snd_trident** %2, align 8
  %26 = load i32, i32* @T4D_LFO_GC_CIR, align 4
  %27 = call i32 @TRID_REG(%struct.snd_trident* %25, i32 %26)
  %28 = call i32 @outl(i32 %24, i32 %27)
  ret void
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
