; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_single_cap_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_add_single_cap_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.snd_kcontrol_new = type { i8* }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@HDA_CTL_WIDGET_MUTE = common dso_local global i32 0, align 4
@HDA_CTL_WIDGET_VOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Switch\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s Capture %s\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Capture %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cap_single_sw_put = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Inverted %s Capture %s\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Inverted Capture %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32, i32, i32, i32)* @add_single_cap_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_single_cap_ctl(%struct.hda_codec* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hda_gen_spec*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.snd_kcontrol_new*, align 8
  %21 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  %24 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %23, align 8
  store %struct.hda_gen_spec* %24, %struct.hda_gen_spec** %14, align 8
  %25 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @HDA_CTL_WIDGET_MUTE, align 4
  br label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @HDA_CTL_WIDGET_VOL, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %40, i8** %18, align 8
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 3
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %116

48:                                               ; preds = %35
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = trunc i64 %26 to i32
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %54)
  br label %60

56:                                               ; preds = %48
  %57 = trunc i64 %26 to i32
  %58 = load i8*, i8** %18, align 8
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @amp_val_replace_channels(i32 %64, i32 %65)
  %67 = call %struct.snd_kcontrol_new* @add_control(%struct.hda_gen_spec* %61, i32 %62, i8* %28, i32 %63, i32 %66)
  store %struct.snd_kcontrol_new* %67, %struct.snd_kcontrol_new** %20, align 8
  %68 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %20, align 8
  %69 = icmp ne %struct.snd_kcontrol_new* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %116

73:                                               ; preds = %60
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** @cap_single_sw_put, align 8
  %78 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %20, align 8
  %79 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %116

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = trunc i64 %26 to i32
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %89, i8* %90)
  br label %96

92:                                               ; preds = %84
  %93 = trunc i64 %26 to i32
  %94 = load i8*, i8** %18, align 8
  %95 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @amp_val_replace_channels(i32 %100, i32 2)
  %102 = call %struct.snd_kcontrol_new* @add_control(%struct.hda_gen_spec* %97, i32 %98, i8* %28, i32 %99, i32 %101)
  store %struct.snd_kcontrol_new* %102, %struct.snd_kcontrol_new** %20, align 8
  %103 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %20, align 8
  %104 = icmp ne %struct.snd_kcontrol_new* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %116

108:                                              ; preds = %96
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** @cap_single_sw_put, align 8
  %113 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %20, align 8
  %114 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %111, %108
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %116

116:                                              ; preds = %115, %105, %83, %70, %47
  %117 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local %struct.snd_kcontrol_new* @add_control(%struct.hda_gen_spec*, i32, i8*, i32, i32) #2

declare dso_local i32 @amp_val_replace_channels(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
