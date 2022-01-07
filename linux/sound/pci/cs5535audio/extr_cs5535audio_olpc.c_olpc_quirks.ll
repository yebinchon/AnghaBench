; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_olpc.c_olpc_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_olpc.c_olpc_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ac97 = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i8* }

@OLPC_GPIO_MIC_AC = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to allocate MIC GPIO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"High Pass Filter Enable\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"V_REFOUT Enable\00", align 1
@olpc_cs5535audio_ctls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @olpc_quirks(%struct.snd_card* %0, %struct.snd_ac97* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca %struct.snd_ctl_elem_id, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_ac97* %1, %struct.snd_ac97** %5, align 8
  %9 = call i32 (...) @machine_is_olpc()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

12:                                               ; preds = %2
  %13 = load i32, i32* @OLPC_GPIO_MIC_AC, align 4
  %14 = load i32, i32* @DRV_NAME, align 4
  %15 = call i64 @gpio_request(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %19 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %72

24:                                               ; preds = %12
  %25 = load i32, i32* @OLPC_GPIO_MIC_AC, align 4
  %26 = call i32 @gpio_direction_output(i32 %25, i32 0)
  %27 = call i32 @memset(%struct.snd_ctl_elem_id* %6, i32 0, i32 16)
  %28 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %29 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strlcpy(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %33 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %34 = call i32 @snd_ctl_remove_id(%struct.snd_card* %33, %struct.snd_ctl_elem_id* %6)
  %35 = call i32 @memset(%struct.snd_ctl_elem_id* %6, i32 0, i32 16)
  %36 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strlcpy(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %41 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %42 = call i32 @snd_ctl_remove_id(%struct.snd_card* %41, %struct.snd_ctl_elem_id* %6)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %66, %24
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** @olpc_cs5535audio_ctls, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %50 = load i32*, i32** @olpc_cs5535audio_ctls, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %55 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_ctl_new1(i32* %53, i32 %56)
  %58 = call i32 @snd_ctl_add(%struct.snd_card* %49, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @OLPC_GPIO_MIC_AC, align 4
  %63 = call i32 @gpio_free(i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %43

69:                                               ; preds = %43
  %70 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %71 = call i32 @olpc_mic_bias(%struct.snd_ac97* %70, i32 0)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %61, %17, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @machine_is_olpc(...) #1

declare dso_local i64 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snd_ctl_remove_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @olpc_mic_bias(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
