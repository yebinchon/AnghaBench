; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_hda_dsp_common.c_skl_hda_hdmi_add_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_hda_dsp_common.c_skl_hda_hdmi_add_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.skl_hda_private = type { i32, i32 }
%struct.skl_hda_hdmi_pcm = type { i32, i32, i32 }

@NAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"intel-hdmi-hifi%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_hda_hdmi_add_pcm(%struct.snd_soc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_hda_private*, align 8
  %7 = alloca %struct.skl_hda_hdmi_pcm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %12 = call %struct.skl_hda_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %11)
  store %struct.skl_hda_private* %12, %struct.skl_hda_private** %6, align 8
  %13 = load i32, i32* @NAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.skl_hda_hdmi_pcm* @devm_kzalloc(i32 %19, i32 12, i32 %20)
  store %struct.skl_hda_hdmi_pcm* %21, %struct.skl_hda_hdmi_pcm** %7, align 8
  %22 = load %struct.skl_hda_hdmi_pcm*, %struct.skl_hda_hdmi_pcm** %7, align 8
  %23 = icmp ne %struct.skl_hda_hdmi_pcm* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

27:                                               ; preds = %2
  %28 = trunc i64 %14 to i32
  %29 = load %struct.skl_hda_private*, %struct.skl_hda_private** %6, align 8
  %30 = getelementptr inbounds %struct.skl_hda_private, %struct.skl_hda_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snprintf(i8* %16, i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %4, align 8
  %34 = call i32 @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %33, i8* %16)
  %35 = load %struct.skl_hda_hdmi_pcm*, %struct.skl_hda_hdmi_pcm** %7, align 8
  %36 = getelementptr inbounds %struct.skl_hda_hdmi_pcm, %struct.skl_hda_hdmi_pcm* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.skl_hda_hdmi_pcm*, %struct.skl_hda_hdmi_pcm** %7, align 8
  %38 = getelementptr inbounds %struct.skl_hda_hdmi_pcm, %struct.skl_hda_hdmi_pcm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.skl_hda_hdmi_pcm*, %struct.skl_hda_hdmi_pcm** %7, align 8
  %47 = getelementptr inbounds %struct.skl_hda_hdmi_pcm, %struct.skl_hda_hdmi_pcm* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.skl_hda_hdmi_pcm*, %struct.skl_hda_hdmi_pcm** %7, align 8
  %49 = getelementptr inbounds %struct.skl_hda_hdmi_pcm, %struct.skl_hda_hdmi_pcm* %48, i32 0, i32 1
  %50 = load %struct.skl_hda_private*, %struct.skl_hda_private** %6, align 8
  %51 = getelementptr inbounds %struct.skl_hda_private, %struct.skl_hda_private* %50, i32 0, i32 1
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %53

53:                                               ; preds = %44, %41, %24
  %54 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.skl_hda_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.skl_hda_hdmi_pcm* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @snd_soc_card_get_codec_dai(%struct.snd_soc_card*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
