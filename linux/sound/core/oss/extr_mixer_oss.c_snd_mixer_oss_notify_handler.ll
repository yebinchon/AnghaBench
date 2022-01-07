; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_notify_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, %struct.snd_mixer_oss*, i64*, i32 }
%struct.snd_mixer_oss = type { i32, %struct.snd_card*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SND_MIXER_OSS_NOTIFY_REGISTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_OSS_DEVICE_TYPE_MIXER = common dso_local global i32 0, align 4
@snd_mixer_oss_f_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unable to register OSS mixer device %i:%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mixer%i\00", align 1
@SNDRV_OSS_MAX_MIXERS = common dso_local global i32 0, align 4
@SND_MIXER_OSS_NOTIFY_DISCONNECT = common dso_local global i32 0, align 4
@SNDRV_OSS_INFO_DEV_MIXERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i32)* @snd_mixer_oss_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_notify_handler(%struct.snd_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer_oss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SND_MIXER_OSS_NOTIFY_REGISTER, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %92

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.snd_mixer_oss* @kcalloc(i32 2, i32 32, i32 %13)
  store %struct.snd_mixer_oss* %14, %struct.snd_mixer_oss** %6, align 8
  %15 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %16 = icmp eq %struct.snd_mixer_oss* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %123

20:                                               ; preds = %12
  %21 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %22 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %21, i32 0, i32 4
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_MIXER, align 4
  %25 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %26 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %27 = call i32 @snd_register_oss_device(i32 %24, %struct.snd_card* %25, i32 0, i32* @snd_mixer_oss_f_ops, %struct.snd_card* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %34 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35, i32 0)
  %37 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %38 = call i32 @kfree(%struct.snd_mixer_oss* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %123

40:                                               ; preds = %20
  %41 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %42 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %44 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %45 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %44, i32 0, i32 1
  store %struct.snd_card* %43, %struct.snd_card** %45, align 8
  %46 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %47 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %53 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %56 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @strlcpy(i32 %54, i64* %57, i32 4)
  br label %67

59:                                               ; preds = %40
  %60 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %61 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %64 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snprintf(i32 %62, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %59, %51
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %81, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @SNDRV_OSS_MAX_MIXERS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %75 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %73, i32* %80, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %68

84:                                               ; preds = %68
  %85 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %86 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %87 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %86, i32 0, i32 1
  store %struct.snd_mixer_oss* %85, %struct.snd_mixer_oss** %87, align 8
  %88 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %89 = call i32 @snd_mixer_oss_build(%struct.snd_mixer_oss* %88)
  %90 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %91 = call i32 @snd_mixer_oss_proc_init(%struct.snd_mixer_oss* %90)
  br label %122

92:                                               ; preds = %2
  %93 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %94 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %93, i32 0, i32 1
  %95 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %94, align 8
  store %struct.snd_mixer_oss* %95, %struct.snd_mixer_oss** %6, align 8
  %96 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %97 = icmp eq %struct.snd_mixer_oss* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %123

99:                                               ; preds = %92
  %100 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %101 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_MIXER, align 4
  %106 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %107 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %106, i32 0, i32 1
  %108 = load %struct.snd_card*, %struct.snd_card** %107, align 8
  %109 = call i32 @snd_unregister_oss_device(i32 %105, %struct.snd_card* %108, i32 0)
  %110 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %111 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %104, %99
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @SND_MIXER_OSS_NOTIFY_DISCONNECT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %123

117:                                              ; preds = %112
  %118 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %119 = call i32 @snd_mixer_oss_proc_done(%struct.snd_mixer_oss* %118)
  %120 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %121 = call i32 @snd_mixer_oss_free1(%struct.snd_mixer_oss* %120)
  store i32 %121, i32* %3, align 4
  br label %123

122:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %117, %116, %98, %29, %17
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.snd_mixer_oss* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_register_oss_device(i32, %struct.snd_card*, i32, i32*, %struct.snd_card*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_mixer_oss*) #1

declare dso_local i32 @strlcpy(i32, i64*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @snd_mixer_oss_build(%struct.snd_mixer_oss*) #1

declare dso_local i32 @snd_mixer_oss_proc_init(%struct.snd_mixer_oss*) #1

declare dso_local i32 @snd_unregister_oss_device(i32, %struct.snd_card*, i32) #1

declare dso_local i32 @snd_mixer_oss_proc_done(%struct.snd_mixer_oss*) #1

declare dso_local i32 @snd_mixer_oss_free1(%struct.snd_mixer_oss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
