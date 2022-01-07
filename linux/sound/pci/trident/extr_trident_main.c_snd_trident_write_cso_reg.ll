; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_cso_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_cso_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64 }
%struct.snd_trident_voice = type { i32, i32, i32 }

@T4D_LFO_GC_CIR = common dso_local global i32 0, align 4
@TRIDENT_DEVICE_ID_NX = common dso_local global i64 0, align 8
@CH_DX_CSO_ALPHA_FMS = common dso_local global i32 0, align 4
@CH_NX_DELTA_CSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_trident*, %struct.snd_trident_voice*, i32)* @snd_trident_write_cso_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_trident_write_cso_reg(%struct.snd_trident* %0, %struct.snd_trident_voice* %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %14 = load i32, i32* @T4D_LFO_GC_CIR, align 4
  %15 = call i64 @TRID_REG(%struct.snd_trident* %13, i32 %14)
  %16 = call i32 @outb(i32 %12, i64 %15)
  %17 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %18 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TRIDENT_DEVICE_ID_NX, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %24 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %27 = load i32, i32* @CH_DX_CSO_ALPHA_FMS, align 4
  %28 = call i64 @TRID_REG(%struct.snd_trident* %26, i32 %27)
  %29 = add nsw i64 %28, 2
  %30 = call i32 @outw(i32 %25, i64 %29)
  br label %45

31:                                               ; preds = %3
  %32 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %33 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 24
  %36 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %37 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 16777215
  %40 = or i32 %35, %39
  %41 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %42 = load i32, i32* @CH_NX_DELTA_CSO, align 4
  %43 = call i64 @TRID_REG(%struct.snd_trident* %41, i32 %42)
  %44 = call i32 @outl(i32 %40, i64 %43)
  br label %45

45:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @TRID_REG(%struct.snd_trident*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
