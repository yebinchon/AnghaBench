; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i64, i64 }

@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AC_VERB_SET_PROC_COEF = common dso_local global i32 0, align 4
@AC_AMP_FAKE_MUTE = common dso_local global i32 0, align 4
@AC_AMP_MUTE = common dso_local global i32 0, align 4
@AC_AMP_GET_LEFT = common dso_local global i32 0, align 4
@AC_AMP_SET_LEFT = common dso_local global i32 0, align 4
@AC_AMP_SET_RIGHT = common dso_local global i32 0, align 4
@AC_AMP_GET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_SET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_SET_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @hda_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_reg_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hdac_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.hdac_device*
  store %struct.hdac_device* %15, %struct.hdac_device** %8, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %17 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %160

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -524289
  store i32 %23, i32* %6, align 4
  %24 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %25 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 28
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @get_verb(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %21
  %36 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %37 = call i32 @codec_pm_lock(%struct.hdac_device* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %42 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  store i32 %50, i32* %4, align 4
  br label %160

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @is_stereo_amp_verb(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @hda_reg_write_stereo_amp(%struct.hdac_device* %57, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %155

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @AC_VERB_SET_PROC_COEF, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @hda_reg_write_coef(%struct.hdac_device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %155

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 3840
  switch i32 %72, label %119 [
    i32 130, label %73
  ]

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @AC_AMP_FAKE_MUTE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @AC_AMP_MUTE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %78, %73
  store i32 130, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @AC_AMP_GET_LEFT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* @AC_AMP_SET_LEFT, align 4
  %91 = ashr i32 %90, 8
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %99

94:                                               ; preds = %84
  %95 = load i32, i32* @AC_AMP_SET_RIGHT, align 4
  %96 = ashr i32 %95, 8
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @AC_AMP_GET_OUTPUT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* @AC_AMP_SET_OUTPUT, align 4
  %106 = ashr i32 %105, 8
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %118

109:                                              ; preds = %99
  %110 = load i32, i32* @AC_AMP_SET_INPUT, align 4
  %111 = ashr i32 %110, 8
  %112 = load i32, i32* %9, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 15
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %109, %104
  br label %119

119:                                              ; preds = %70, %118
  %120 = load i32, i32* %9, align 4
  switch i32 %120, label %123 [
    i32 128, label %121
    i32 129, label %122
  ]

121:                                              ; preds = %119
  store i32 2, i32* %11, align 4
  br label %124

122:                                              ; preds = %119
  store i32 4, i32* %11, align 4
  br label %124

123:                                              ; preds = %119
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %122, %121
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %151, %124
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %125
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, -1048576
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %132, %133
  %135 = shl i32 %134, 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %10, align 4
  %138 = mul nsw i32 8, %137
  %139 = lshr i32 %136, %138
  %140 = and i32 %139, 255
  %141 = or i32 %135, %140
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @snd_hdac_exec_verb(%struct.hdac_device* %144, i32 %145, i32 0, i32* null)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %129
  br label %155

150:                                              ; preds = %129
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %125

154:                                              ; preds = %125
  br label %155

155:                                              ; preds = %154, %149, %65, %56
  %156 = load %struct.hdac_device*, %struct.hdac_device** %8, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @codec_pm_unlock(%struct.hdac_device* %156, i32 %157)
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %155, %49, %20
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @get_verb(i32) #1

declare dso_local i32 @codec_pm_lock(%struct.hdac_device*) #1

declare dso_local i64 @is_stereo_amp_verb(i32) #1

declare dso_local i32 @hda_reg_write_stereo_amp(%struct.hdac_device*, i32, i32) #1

declare dso_local i32 @hda_reg_write_coef(%struct.hdac_device*, i32, i32) #1

declare dso_local i32 @snd_hdac_exec_verb(%struct.hdac_device*, i32, i32, i32*) #1

declare dso_local i32 @codec_pm_unlock(%struct.hdac_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
