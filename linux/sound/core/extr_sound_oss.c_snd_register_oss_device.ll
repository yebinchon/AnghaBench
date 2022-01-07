; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_sound_oss.c_snd_register_oss_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_sound_oss.c_snd_register_oss_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_minor = type { i32, i32, i32, %struct.snd_card*, i8*, %struct.file_operations* }
%struct.snd_card = type { i64 }
%struct.file_operations = type { i32 }
%struct.device = type { i32 }

@SNDRV_MINOR_OSS_DEVICES = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sound_oss_mutex = common dso_local global i32 0, align 4
@snd_oss_minors = common dso_local global %struct.snd_minor** null, align 8
@SNDRV_MINOR_OSS_AUDIO = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_DMMIDI = common dso_local global i32 0, align 4
@SNDRV_MINOR_OSS_DMMIDI1 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_register_oss_device(i32 %0, %struct.snd_card* %1, i32 %2, %struct.file_operations* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file_operations*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_minor*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.device*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.snd_card* %1, %struct.snd_card** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.file_operations* %3, %struct.file_operations** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @snd_oss_kernel_minor(i32 %20, %struct.snd_card* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @SNDRV_MINOR_OSS_CARD(i32 %24)
  store i32 %25, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %26 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %27 = call %struct.device* @snd_card_get_device_link(%struct.snd_card* %26)
  store %struct.device* %27, %struct.device** %19, align 8
  %28 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %29 = icmp ne %struct.snd_card* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNDRV_MINOR_OSS_DEVICES, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %150

37:                                               ; preds = %30, %5
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %150

42:                                               ; preds = %37
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.snd_minor* @kmalloc(i32 40, i32 %43)
  store %struct.snd_minor* %44, %struct.snd_minor** %14, align 8
  %45 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %46 = icmp eq %struct.snd_minor* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %150

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %53 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %55 = icmp ne %struct.snd_card* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %58 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  br label %61

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i64 [ %59, %56 ], [ -1, %60 ]
  %63 = trunc i64 %62 to i32
  %64 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %65 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %68 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %70 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %71 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %70, i32 0, i32 5
  store %struct.file_operations* %69, %struct.file_operations** %71, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %74 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %76 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %77 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %76, i32 0, i32 3
  store %struct.snd_card* %75, %struct.snd_card** %77, align 8
  %78 = call i32 @mutex_lock(i32* @sound_oss_mutex)
  %79 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %80 = load %struct.snd_minor**, %struct.snd_minor*** @snd_oss_minors, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %80, i64 %82
  store %struct.snd_minor* %79, %struct.snd_minor** %83, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @SNDRV_MINOR_OSS_DEVICE(i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  switch i32 %86, label %99 [
    i32 128, label %87
    i32 130, label %91
    i32 129, label %95
  ]

87:                                               ; preds = %61
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @SNDRV_MINOR_OSS_AUDIO, align 4
  %90 = call i32 @SNDRV_MINOR_OSS(i32 %88, i32 %89)
  store i32 %90, i32* %16, align 4
  br label %99

91:                                               ; preds = %61
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @SNDRV_MINOR_OSS_DMMIDI, align 4
  %94 = call i32 @SNDRV_MINOR_OSS(i32 %92, i32 %93)
  store i32 %94, i32* %16, align 4
  br label %99

95:                                               ; preds = %61
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @SNDRV_MINOR_OSS_DMMIDI1, align 4
  %98 = call i32 @SNDRV_MINOR_OSS(i32 %96, i32 %97)
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %61, %95, %91, %87
  %100 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.device*, %struct.device** %19, align 8
  %103 = call i32 @register_sound_special_device(%struct.file_operations* %100, i32 %101, %struct.device* %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %128

108:                                              ; preds = %99
  %109 = load i32, i32* %16, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load %struct.file_operations*, %struct.file_operations** %10, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.device*, %struct.device** %19, align 8
  %115 = call i32 @register_sound_special_device(%struct.file_operations* %112, i32 %113, %struct.device* %114)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %128

120:                                              ; preds = %111
  %121 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %122 = load %struct.snd_minor**, %struct.snd_minor*** @snd_oss_minors, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %122, i64 %124
  store %struct.snd_minor* %121, %struct.snd_minor** %125, align 8
  br label %126

126:                                              ; preds = %120, %108
  %127 = call i32 @mutex_unlock(i32* @sound_oss_mutex)
  store i32 0, i32* %6, align 4
  br label %150

128:                                              ; preds = %119, %107
  %129 = load i32, i32* %18, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @unregister_sound_special(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %17, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @unregister_sound_special(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.snd_minor**, %struct.snd_minor*** @snd_oss_minors, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %141, i64 %143
  store %struct.snd_minor* null, %struct.snd_minor** %144, align 8
  %145 = call i32 @mutex_unlock(i32* @sound_oss_mutex)
  %146 = load %struct.snd_minor*, %struct.snd_minor** %14, align 8
  %147 = call i32 @kfree(%struct.snd_minor* %146)
  %148 = load i32, i32* @EBUSY, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %140, %126, %47, %40, %36
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i32 @snd_oss_kernel_minor(i32, %struct.snd_card*, i32) #1

declare dso_local i32 @SNDRV_MINOR_OSS_CARD(i32) #1

declare dso_local %struct.device* @snd_card_get_device_link(%struct.snd_card*) #1

declare dso_local %struct.snd_minor* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SNDRV_MINOR_OSS_DEVICE(i32) #1

declare dso_local i32 @SNDRV_MINOR_OSS(i32, i32) #1

declare dso_local i32 @register_sound_special_device(%struct.file_operations*, i32, %struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unregister_sound_special(i32) #1

declare dso_local i32 @kfree(%struct.snd_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
