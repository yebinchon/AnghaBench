; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_pin_hbr_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_atihdmi_pin_hbr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@ATI_VERB_GET_HBR_CONTROL = common dso_local global i32 0, align 4
@ATI_HBR_CAPABLE = common dso_local global i32 0, align 4
@ATI_HBR_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"atihdmi_pin_hbr_setup: NID=0x%x, %shbr-ctl=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"new-\00", align 1
@ATI_VERB_SET_HBR_CONTROL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32)* @atihdmi_pin_hbr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atihdmi_pin_hbr_setup(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ATI_VERB_GET_HBR_CONTROL, align 4
  %13 = call i32 @snd_hda_codec_read(%struct.hda_codec* %10, i32 %11, i32 0, i32 %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ATI_HBR_CAPABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ATI_HBR_ENABLE, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %9, align 4
  br label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ATI_HBR_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @codec_dbg(%struct.hda_codec* %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ATI_VERB_SET_HBR_CONTROL, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @snd_hda_codec_write(%struct.hda_codec* %47, i32 %48, i32 0, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %33
  br label %60

53:                                               ; preds = %16, %3
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %52
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i32, i8*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
