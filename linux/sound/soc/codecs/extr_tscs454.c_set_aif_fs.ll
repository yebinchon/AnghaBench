; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_fs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_set_aif_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@FV_I2SMBR_32 = common dso_local global i32 0, align 4
@FV_I2SMBM_0PT25 = common dso_local global i32 0, align 4
@FV_I2SMBM_0PT5 = common dso_local global i32 0, align 4
@FV_I2SMBR_48 = common dso_local global i32 0, align 4
@FV_I2SMBM_1 = common dso_local global i32 0, align 4
@FV_I2SMBM_2 = common dso_local global i32 0, align 4
@FV_I2SMBR_44PT1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported sample rate (%d)\0A\00", align 1
@R_I2S1MRATE = common dso_local global i32 0, align 4
@R_I2S2MRATE = common dso_local global i32 0, align 4
@R_I2S3MRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DAI ID not recognized (%d)\0A\00", align 1
@FM_I2SMRATE_I2SMBR = common dso_local global i32 0, align 4
@FM_I2SMRATE_I2SMBM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to update register (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @set_aif_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_aif_fs(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %43 [
    i32 8000, label %13
    i32 16000, label %16
    i32 24000, label %19
    i32 32000, label %22
    i32 48000, label %25
    i32 96000, label %28
    i32 11025, label %31
    i32 22050, label %34
    i32 44100, label %37
    i32 88200, label %40
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @FV_I2SMBR_32, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @FV_I2SMBM_0PT25, align 4
  store i32 %15, i32* %10, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load i32, i32* @FV_I2SMBR_32, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @FV_I2SMBM_0PT5, align 4
  store i32 %18, i32* %10, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* @FV_I2SMBR_48, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @FV_I2SMBM_0PT5, align 4
  store i32 %21, i32* %10, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load i32, i32* @FV_I2SMBR_32, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @FV_I2SMBM_1, align 4
  store i32 %24, i32* %10, align 4
  br label %52

25:                                               ; preds = %3
  %26 = load i32, i32* @FV_I2SMBR_48, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @FV_I2SMBM_1, align 4
  store i32 %27, i32* %10, align 4
  br label %52

28:                                               ; preds = %3
  %29 = load i32, i32* @FV_I2SMBR_48, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @FV_I2SMBM_2, align 4
  store i32 %30, i32* %10, align 4
  br label %52

31:                                               ; preds = %3
  %32 = load i32, i32* @FV_I2SMBR_44PT1, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @FV_I2SMBM_0PT25, align 4
  store i32 %33, i32* %10, align 4
  br label %52

34:                                               ; preds = %3
  %35 = load i32, i32* @FV_I2SMBR_44PT1, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @FV_I2SMBM_0PT5, align 4
  store i32 %36, i32* %10, align 4
  br label %52

37:                                               ; preds = %3
  %38 = load i32, i32* @FV_I2SMBR_44PT1, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @FV_I2SMBM_1, align 4
  store i32 %39, i32* %10, align 4
  br label %52

40:                                               ; preds = %3
  %41 = load i32, i32* @FV_I2SMBR_44PT1, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @FV_I2SMBM_2, align 4
  store i32 %42, i32* %10, align 4
  br label %52

43:                                               ; preds = %3
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %89

52:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %60 [
    i32 130, label %54
    i32 129, label %56
    i32 128, label %58
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* @R_I2S1MRATE, align 4
  store i32 %55, i32* %8, align 4
  br label %69

56:                                               ; preds = %52
  %57 = load i32, i32* @R_I2S2MRATE, align 4
  store i32 %57, i32* %8, align 4
  br label %69

58:                                               ; preds = %52
  %59 = load i32, i32* @R_I2S3MRATE, align 4
  store i32 %59, i32* %8, align 4
  br label %69

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %89

69:                                               ; preds = %58, %56, %54
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @FM_I2SMRATE_I2SMBR, align 4
  %73 = load i32, i32* @FM_I2SMRATE_I2SMBM, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %74, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %89

88:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %81, %60, %43
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
