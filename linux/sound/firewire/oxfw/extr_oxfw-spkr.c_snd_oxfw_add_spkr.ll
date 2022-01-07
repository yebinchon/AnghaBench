; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_snd_oxfw_add_spkr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_snd_oxfw_add_spkr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i8*, i32, i32, i32, i32 }
%struct.snd_oxfw = type { %struct.TYPE_2__*, i32, %struct.fw_spkr* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_spkr = type { i32, i32, i32, i32*, i32, i32, i32 }

@snd_oxfw_add_spkr.controls = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 131, i32 132, i32 133, i32 134 }, %struct.snd_kcontrol_new { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 128, i32 130, i32 129, i32 134 }], align 16
@.str = private unnamed_addr constant [20 x i8] c"PCM Playback Switch\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"PCM Playback Volume\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTL_MIN = common dso_local global i32 0, align 4
@CTL_READ = common dso_local global i32 0, align 4
@CTL_MAX = common dso_local global i32 0, align 4
@CTL_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_oxfw_add_spkr(%struct.snd_oxfw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_oxfw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_spkr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %11 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.fw_spkr* @devm_kzalloc(i32* %13, i32 40, i32 %14)
  store %struct.fw_spkr* %15, %struct.fw_spkr** %6, align 8
  %16 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %17 = icmp ne %struct.fw_spkr* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %152

21:                                               ; preds = %2
  %22 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %23 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %24 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %23, i32 0, i32 2
  store %struct.fw_spkr* %22, %struct.fw_spkr** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %29 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %31 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %33 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  br label %41

34:                                               ; preds = %21
  %35 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %36 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %35, i32 0, i32 0
  store i32 6, i32* %36, align 8
  %37 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %38 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %40 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %39, i32 0, i32 2
  store i32 2, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %43 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %46 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %49 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %48, i32 0, i32 6
  %50 = load i32, i32* @CTL_MIN, align 4
  %51 = load i32, i32* @CTL_READ, align 4
  %52 = call i32 @avc_audio_feature_volume(i32 %44, i32 %47, i32* %49, i32 0, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %152

57:                                               ; preds = %41
  %58 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %59 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %62 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %65 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %64, i32 0, i32 5
  %66 = load i32, i32* @CTL_MAX, align 4
  %67 = load i32, i32* @CTL_READ, align 4
  %68 = call i32 @avc_audio_feature_volume(i32 %60, i32 %63, i32* %65, i32 0, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %152

73:                                               ; preds = %57
  %74 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %75 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %78 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %81 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %80, i32 0, i32 4
  %82 = load i32, i32* @CTL_READ, align 4
  %83 = call i32 @avc_audio_feature_mute(i32 %76, i32 %79, i32* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %152

88:                                               ; preds = %73
  %89 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %90 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 1
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 0, i32 1
  store i32 %94, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %125, %88
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %98 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %95
  %102 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %103 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %106 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fw_spkr*, %struct.fw_spkr** %6, align 8
  %109 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %114, %115
  %117 = load i32, i32* @CTL_CURRENT, align 4
  %118 = load i32, i32* @CTL_READ, align 4
  %119 = call i32 @avc_audio_feature_volume(i32 %104, i32 %107, i32* %113, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %101
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %152

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %95

128:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %148, %128
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* getelementptr inbounds ([2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* @snd_oxfw_add_spkr.controls, i64 0, i64 0))
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %129
  %134 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %135 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [2 x %struct.snd_kcontrol_new], [2 x %struct.snd_kcontrol_new]* @snd_oxfw_add_spkr.controls, i64 0, i64 %138
  %140 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %141 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %139, %struct.snd_oxfw* %140)
  %142 = call i32 @snd_ctl_add(%struct.TYPE_2__* %136, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %133
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %3, align 4
  br label %152

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %129

151:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %145, %122, %86, %71, %55, %18
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.fw_spkr* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @avc_audio_feature_volume(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @avc_audio_feature_mute(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @snd_ctl_add(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_oxfw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
