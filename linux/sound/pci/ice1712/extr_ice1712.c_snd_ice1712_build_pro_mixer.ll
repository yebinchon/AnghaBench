; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_build_pro_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_build_pro_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.snd_ice1712 = type { i32, i32*, %struct.snd_card* }
%struct.snd_card = type { i32 }

@snd_ice1712_multi_playback_ctrls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@snd_ice1712_multi_capture_analog_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_ice1712_multi_capture_spdif_switch = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_ice1712_multi_capture_analog_volume = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@snd_ice1712_multi_capture_spdif_volume = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @snd_ice1712_build_pro_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_build_pro_mixer(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_kcontrol_new, align 4
  %8 = alloca %struct.snd_kcontrol_new, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 2
  %11 = load %struct.snd_card*, %struct.snd_card** %10, align 8
  store %struct.snd_card* %11, %struct.snd_card** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_ice1712_multi_playback_ctrls, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %19 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @snd_ice1712_multi_playback_ctrls, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %19, i64 %21
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %24 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %22, %struct.snd_ice1712* %23)
  %25 = call i32 @snd_ctl_add(%struct.snd_card* %18, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %148

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = bitcast %struct.snd_kcontrol_new* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.snd_kcontrol_new* @snd_ice1712_multi_capture_analog_switch to i8*), i64 4, i1 false)
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %42 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %7, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %47 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %7, %struct.snd_ice1712* %46)
  %48 = call i32 @snd_ctl_add(%struct.snd_card* %45, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %148

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %57 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_multi_capture_spdif_switch, %struct.snd_ice1712* %56)
  %58 = call i32 @snd_ctl_add(%struct.snd_card* %55, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %148

63:                                               ; preds = %54
  %64 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %65 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = bitcast %struct.snd_kcontrol_new* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 bitcast (%struct.snd_kcontrol_new* @snd_ice1712_multi_capture_analog_volume to i8*), i64 4, i1 false)
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %71 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %75 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %76 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %8, %struct.snd_ice1712* %75)
  %77 = call i32 @snd_ctl_add(%struct.snd_card* %74, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %148

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %85 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %86 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* @snd_ice1712_multi_capture_spdif_volume, %struct.snd_ice1712* %85)
  %87 = call i32 @snd_ctl_add(%struct.snd_card* %84, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %148

92:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %106, %92
  %94 = load i32, i32* %5, align 4
  %95 = icmp ult i32 %94, 10
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %98 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 -2147450880, i32* %102, align 4
  %103 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @snd_ice1712_update_volume(%struct.snd_ice1712* %103, i32 %104)
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %93

109:                                              ; preds = %93
  store i32 10, i32* %5, align 4
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %113 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 10, %114
  %116 = icmp ult i32 %111, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %119 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 -2147450880, i32* %123, align 4
  %124 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @snd_ice1712_update_volume(%struct.snd_ice1712* %124, i32 %125)
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %110

130:                                              ; preds = %110
  store i32 18, i32* %5, align 4
  br label %131

131:                                              ; preds = %144, %130
  %132 = load i32, i32* %5, align 4
  %133 = icmp ult i32 %132, 20
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %136 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 -2147450880, i32* %140, align 4
  %141 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @snd_ice1712_update_volume(%struct.snd_ice1712* %141, i32 %142)
  br label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %5, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %131

147:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %90, %80, %61, %51, %28
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ice1712*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_ice1712_update_volume(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
