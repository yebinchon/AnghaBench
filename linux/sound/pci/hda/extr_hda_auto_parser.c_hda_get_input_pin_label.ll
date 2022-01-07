; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_hda_get_input_pin_label.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_auto_parser.c_hda_get_input_pin_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg_item = type { i32, i32 }

@hda_get_input_pin_label.mic_names = internal constant [5 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"Internal Mic\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Dock Mic\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Rear Mic\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Front Mic\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Headphone Mic\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@INPUT_PIN_ATTR_DOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"Dock Line\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"SPDIF In\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Digital In\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hda_codec*, %struct.auto_pin_cfg_item*, i32, i32)* @hda_get_input_pin_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hda_get_input_pin_label(%struct.hda_codec* %0, %struct.auto_pin_cfg_item* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.auto_pin_cfg_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store %struct.auto_pin_cfg_item* %1, %struct.auto_pin_cfg_item** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @get_defcfg_device(i32 %15)
  switch i32 %16, label %72 [
    i32 129, label %17
    i32 130, label %51
    i32 134, label %67
    i32 133, label %68
    i32 128, label %69
    i32 132, label %70
    i32 131, label %71
  ]

17:                                               ; preds = %4
  %18 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %7, align 8
  %19 = icmp ne %struct.auto_pin_cfg_item* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %7, align 8
  %22 = getelementptr inbounds %struct.auto_pin_cfg_item, %struct.auto_pin_cfg_item* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %73

26:                                               ; preds = %20, %17
  %27 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %7, align 8
  %28 = icmp ne %struct.auto_pin_cfg_item* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %7, align 8
  %31 = getelementptr inbounds %struct.auto_pin_cfg_item, %struct.auto_pin_cfg_item* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %73

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %73

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @snd_hda_get_input_pin_attr(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %73

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hda_get_input_pin_label.mic_names, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %5, align 8
  br label %73

51:                                               ; preds = %4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %73

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @snd_hda_get_input_pin_attr(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @INPUT_PIN_ATTR_DOCK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %73

66:                                               ; preds = %61
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %73

67:                                               ; preds = %4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %73

68:                                               ; preds = %4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %73

69:                                               ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %73

70:                                               ; preds = %4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %73

71:                                               ; preds = %4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %73

72:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %73

73:                                               ; preds = %72, %71, %70, %69, %68, %67, %66, %65, %60, %54, %45, %44, %38, %34, %25
  %74 = load i8*, i8** %5, align 8
  ret i8* %74
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_defcfg_device(i32) #1

declare dso_local i32 @snd_hda_get_input_pin_attr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
