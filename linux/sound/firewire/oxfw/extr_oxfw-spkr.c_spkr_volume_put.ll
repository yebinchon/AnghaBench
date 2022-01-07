; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_spkr_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.snd_oxfw* }
%struct.snd_oxfw = type { i32, %struct.fw_spkr* }
%struct.fw_spkr = type { i32, i64, i64, i64*, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@channel_map = common dso_local global i64* null, align 8
@CTL_CURRENT = common dso_local global i32 0, align 4
@CTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @spkr_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spkr_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_oxfw*, align 8
  %7 = alloca %struct.fw_spkr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load %struct.snd_oxfw*, %struct.snd_oxfw** %14, align 8
  store %struct.snd_oxfw* %15, %struct.snd_oxfw** %6, align 8
  %16 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %17 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %16, i32 0, i32 1
  %18 = load %struct.fw_spkr*, %struct.fw_spkr** %17, align 8
  store %struct.fw_spkr* %18, %struct.fw_spkr** %7, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %76, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %22 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %19
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %36 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %25
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %50 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %39, %25
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %192

56:                                               ; preds = %39
  %57 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %65, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %74, %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %19

79:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %114, %79
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %83 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %80
  %87 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %88 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i64*, i64** @channel_map, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %91, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %100 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %99, i32 0, i32 3
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %98, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %86
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, 1
  %110 = shl i32 1, %109
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %107, %86
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %80

117:                                              ; preds = %80
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 1, i32* %9, align 4
  br label %124

124:                                              ; preds = %123, %120, %117
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %185, %124
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %128 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ule i32 %126, %129
  br i1 %130, label %131, label %188

131:                                              ; preds = %125
  %132 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %133 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load i64*, i64** @channel_map, align 8
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %8, align 4
  %142 = sub i32 %141, 1
  br label %144

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %140
  %145 = phi i32 [ %142, %140 ], [ 0, %143 ]
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %137, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i64, i64* %136, i64 %148
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %11, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = shl i32 1, %152
  %154 = and i32 %151, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %144
  %157 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %158 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %161 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @CTL_CURRENT, align 4
  %165 = load i32, i32* @CTL_WRITE, align 4
  %166 = call i32 @avc_audio_feature_volume(i32 %159, i32 %162, i64* %11, i32 %163, i32 %164, i32 %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %156
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %3, align 4
  br label %192

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171, %144
  %173 = load i32, i32* %8, align 4
  %174 = icmp ugt i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.fw_spkr*, %struct.fw_spkr** %7, align 8
  %178 = getelementptr inbounds %struct.fw_spkr, %struct.fw_spkr* %177, i32 0, i32 3
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sub i32 %180, 1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %179, i64 %182
  store i64 %176, i64* %183, align 8
  br label %184

184:                                              ; preds = %175, %172
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %8, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %125

188:                                              ; preds = %125
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %188, %169, %53
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @avc_audio_feature_volume(i32, i32, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
