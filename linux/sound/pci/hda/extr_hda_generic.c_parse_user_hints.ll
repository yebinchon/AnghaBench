; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_user_hints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_parse_user_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"jack_detect\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"inv_jack_detect\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"trigger_sense\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"inv_eapd\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"pcm_format_first\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"sticky_stream\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"spdif_status_reset\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"pin_amp_workaround\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"single_adc_amp\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"power_save_node\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"auto_mute\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"auto_mic\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"line_in_auto_switch\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"auto_mute_via_amp\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"need_dac_fix\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"primary_hp\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"multi_io\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"multi_cap_vol\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"inv_dmic_split\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"indep_hp\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"add_stereo_mix_input\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"add_out_jack_modes\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"add_in_jack_modes\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"add_jack_modes\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"power_down_unused\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"add_hp_mic\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"hp_mic_detect\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"vmaster\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"mixer_nid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @parse_user_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_user_hints(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 10
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  store %struct.hda_gen_spec* %7, %struct.hda_gen_spec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %84 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %94 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %97 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %107 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %95
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %120 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %113, %108
  %122 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %123 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %133 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %121
  %135 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %136 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %145 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %134
  %147 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %148 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %157 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %151, %146
  %159 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %160 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %159, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %170 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %163, %158
  %172 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %173 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %183 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %176, %171
  %185 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %186 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load i32, i32* %4, align 4
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %196 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %189, %184
  %198 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %199 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %208 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %197
  %210 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %211 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  store i32 %211, i32* %4, align 4
  %212 = load i32, i32* %4, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %209
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %220 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %219, i32 0, i32 6
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %214, %209
  %222 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %223 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp sge i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load i32, i32* %4, align 4
  %228 = icmp ne i32 %227, 0
  %229 = xor i1 %228, true
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %233 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %232, i32 0, i32 7
  store i32 %231, i32* %233, align 4
  br label %234

234:                                              ; preds = %226, %221
  %235 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %236 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %235, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %4, align 4
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load i32, i32* %4, align 4
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %246 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %245, i32 0, i32 8
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %239, %234
  %248 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %249 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load i32, i32* %4, align 4
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %259 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %258, i32 0, i32 9
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %252, %247
  %261 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %262 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %261, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* %4, align 4
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load i32, i32* %4, align 4
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  %269 = xor i1 %268, true
  %270 = zext i1 %269 to i32
  %271 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %272 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %271, i32 0, i32 10
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %265, %260
  %274 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %275 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %274, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  store i32 %275, i32* %4, align 4
  %276 = load i32, i32* %4, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %273
  %279 = load i32, i32* %4, align 4
  %280 = icmp ne i32 %279, 0
  %281 = xor i1 %280, true
  %282 = xor i1 %281, true
  %283 = zext i1 %282 to i32
  %284 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %285 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %284, i32 0, i32 11
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %278, %273
  %287 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %288 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %287, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  store i32 %288, i32* %4, align 4
  %289 = load i32, i32* %4, align 4
  %290 = icmp sge i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %286
  %292 = load i32, i32* %4, align 4
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %298 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %297, i32 0, i32 11
  store i32 %296, i32* %298, align 4
  br label %299

299:                                              ; preds = %291, %286
  %300 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %301 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %300, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store i32 %301, i32* %4, align 4
  %302 = load i32, i32* %4, align 4
  %303 = icmp sge i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %299
  %305 = load i32, i32* %4, align 4
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %311 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %310, i32 0, i32 11
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %304, %299
  %313 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %314 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %313, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  store i32 %314, i32* %4, align 4
  %315 = load i32, i32* %4, align 4
  %316 = icmp sge i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %312
  %318 = load i32, i32* %4, align 4
  %319 = icmp ne i32 %318, 0
  %320 = xor i1 %319, true
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %324 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %323, i32 0, i32 12
  store i32 %322, i32* %324, align 4
  br label %325

325:                                              ; preds = %317, %312
  %326 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %327 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %326, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  store i32 %327, i32* %4, align 4
  %328 = load i32, i32* %4, align 4
  %329 = icmp sge i32 %328, 0
  br i1 %329, label %330, label %338

330:                                              ; preds = %325
  %331 = load i32, i32* %4, align 4
  %332 = icmp ne i32 %331, 0
  %333 = xor i1 %332, true
  %334 = xor i1 %333, true
  %335 = zext i1 %334 to i32
  %336 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %337 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %336, i32 0, i32 13
  store i32 %335, i32* %337, align 4
  br label %338

338:                                              ; preds = %330, %325
  %339 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %340 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %339, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  store i32 %340, i32* %4, align 4
  %341 = load i32, i32* %4, align 4
  %342 = icmp sge i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %338
  %344 = load i32, i32* %4, align 4
  %345 = icmp ne i32 %344, 0
  %346 = xor i1 %345, true
  %347 = zext i1 %346 to i32
  %348 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %349 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %348, i32 0, i32 14
  store i32 %347, i32* %349, align 4
  br label %350

350:                                              ; preds = %343, %338
  %351 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %352 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %351, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  store i32 %352, i32* %4, align 4
  %353 = load i32, i32* %4, align 4
  %354 = icmp sge i32 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %350
  %356 = load i32, i32* %4, align 4
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  %359 = zext i1 %358 to i32
  %360 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %361 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %360, i32 0, i32 15
  store i32 %359, i32* %361, align 4
  br label %362

362:                                              ; preds = %355, %350
  %363 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %364 = call i32 @snd_hda_get_int_hint(%struct.hda_codec* %363, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32* %4)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load i32, i32* %4, align 4
  %368 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %369 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %368, i32 0, i32 16
  store i32 %367, i32* %369, align 4
  br label %370

370:                                              ; preds = %366, %362
  ret void
}

declare dso_local i32 @snd_hda_get_bool_hint(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_get_int_hint(%struct.hda_codec*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
