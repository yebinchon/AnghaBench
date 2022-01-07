; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_snd_ca0106_volume_spi_dac_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_mixer.c_snd_ca0106_volume_spi_dac_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ca0106_details = type { i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@spi_mute_info = common dso_local global i32 0, align 4
@spi_mute_get = common dso_local global i32 0, align 4
@spi_mute_put = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Analog Front Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Analog Rear Playback Switch\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Analog Center/LFE Playback Switch\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Analog Side Playback Switch\00", align 1
@spi_dmute_reg = common dso_local global i32* null, align 8
@spi_dmute_bit = common dso_local global i32* null, align 8
@SPI_REG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol_new*, %struct.snd_ca0106_details*, i32)* @snd_ca0106_volume_spi_dac_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ca0106_volume_spi_dac_ctl(%struct.snd_kcontrol_new* noalias sret %0, %struct.snd_ca0106_details* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ca0106_details*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ca0106_details* %1, %struct.snd_ca0106_details** %4, align 8
  store i32 %2, i32* %5, align 4
  %9 = bitcast %struct.snd_kcontrol_new* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  %10 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %11 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 6
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %13 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 5
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @spi_mute_info, align 4
  %15 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @spi_mute_get, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @spi_mute_put, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %49 [
    i32 130, label %21
    i32 129, label %28
    i32 131, label %35
    i32 128, label %42
  ]

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.snd_ca0106_details*, %struct.snd_ca0106_details** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ca0106_details, %struct.snd_ca0106_details* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 61440
  %27 = ashr i32 %26, 12
  store i32 %27, i32* %8, align 4
  br label %51

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %29, align 8
  %30 = load %struct.snd_ca0106_details*, %struct.snd_ca0106_details** %4, align 8
  %31 = getelementptr inbounds %struct.snd_ca0106_details, %struct.snd_ca0106_details* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3840
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %8, align 4
  br label %51

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.snd_ca0106_details*, %struct.snd_ca0106_details** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ca0106_details, %struct.snd_ca0106_details* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 240
  %41 = ashr i32 %40, 4
  store i32 %41, i32* %8, align 4
  br label %51

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  %44 = load %struct.snd_ca0106_details*, %struct.snd_ca0106_details** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ca0106_details, %struct.snd_ca0106_details* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = ashr i32 %47, 0
  store i32 %48, i32* %8, align 4
  br label %51

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 0
  store i8* null, i8** %50, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %42, %35, %28, %21
  %52 = load i32*, i32** @spi_dmute_reg, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** @spi_dmute_bit, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SPI_REG_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %64, %65
  %67 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %0, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
