; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_init_stereo_onoff_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_init_stereo_onoff_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1_fx8010_control_gpr = type { i32, i32, i32*, i32*, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@EMU10K1_GPR_TRANSLATION_ONOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1_fx8010_control_gpr*, i8*, i32, i32)* @snd_emu10k1_init_stereo_onoff_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_init_stereo_onoff_control(%struct.snd_emu10k1_fx8010_control_gpr* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emu10k1_fx8010_control_gpr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1_fx8010_control_gpr* %0, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %10 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %11 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strcpy(i32 %16, i8* %17)
  %19 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 0
  %25 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %47, i32 0, i32 4
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* @EMU10K1_GPR_TRANSLATION_ONOFF, align 4
  %50 = load %struct.snd_emu10k1_fx8010_control_gpr*, %struct.snd_emu10k1_fx8010_control_gpr** %5, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1_fx8010_control_gpr, %struct.snd_emu10k1_fx8010_control_gpr* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
