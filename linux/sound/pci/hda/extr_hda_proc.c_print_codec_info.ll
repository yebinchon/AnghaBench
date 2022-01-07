; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_codec_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_proc.c_print_codec_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hda_codec* }
%struct.hda_codec = type { i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i64, i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Default PCM:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Default Amp-In caps: \00", align 1
@HDA_INPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Default Amp-Out caps: \00", align 1
@HDA_OUTPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"State of AFG node 0x%02x:\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid AFG subtree\0A\00", align 1
@AC_PAR_AUDIO_WIDGET_CAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Node 0x%02x [%s] wcaps 0x%x:\00", align 1
@AC_WCAP_STEREO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c" Stereo\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" %d-Channels\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" Mono\00", align 1
@AC_WCAP_DIGITAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" Digital\00", align 1
@AC_WCAP_IN_AMP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c" Amp-In\00", align 1
@AC_WCAP_OUT_AMP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c" Amp-Out\00", align 1
@AC_WCAP_STRIPE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c" Stripe\00", align 1
@AC_WCAP_LR_SWAP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c" R/L\00", align 1
@AC_WCAP_CP_CAPS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c" CP\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AC_WCAP_CONN_LIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"  Amp-In caps: \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"  Amp-In vals: \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"  Amp-Out caps: \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"  Amp-Out vals: \00", align 1
@AC_WCAP_FORMAT_OVRD = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"  PCM:\0A\00", align 1
@AC_WCAP_UNSOL_CAP = common dso_local global i32 0, align 4
@AC_WCAP_POWER = common dso_local global i32 0, align 4
@AC_WCAP_DELAY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"  Delay: %d samples\0A\00", align 1
@AC_WCAP_DELAY_SHIFT = common dso_local global i32 0, align 4
@AC_WCAP_PROC_WID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @print_codec_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_codec_info(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %16 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %17 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %16, i32 0, i32 0
  %18 = load %struct.hda_codec*, %struct.hda_codec** %17, align 8
  store %struct.hda_codec* %18, %struct.hda_codec** %5, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 6
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = call i32 @print_codec_core_info(%struct.TYPE_2__* %20, %struct.snd_info_buffer* %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %24 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %446

30:                                               ; preds = %2
  %31 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %32 = call i32 @snd_hda_power_up(%struct.hda_codec* %31)
  %33 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %34 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @print_pcm_caps(%struct.snd_info_buffer* %35, %struct.hda_codec* %36, i32 %37)
  %39 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %40 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %42 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @HDA_INPUT, align 4
  %45 = call i32 @print_amp_caps(%struct.snd_info_buffer* %41, %struct.hda_codec* %42, i32 %43, i32 %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %49 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HDA_OUTPUT, align 4
  %52 = call i32 @print_amp_caps(%struct.snd_info_buffer* %48, %struct.hda_codec* %49, i32 %50, i32 %51)
  %53 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %57 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @print_power_state(%struct.snd_info_buffer* %56, %struct.hda_codec* %57, i32 %58)
  %60 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @snd_hda_get_sub_nodes(%struct.hda_codec* %60, i32 %61, i32* %6)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %30
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65, %30
  %69 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %70 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %72 = call i32 @snd_hda_power_down(%struct.hda_codec* %71)
  br label %446

73:                                               ; preds = %65
  %74 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %75 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @print_gpio(%struct.snd_info_buffer* %74, %struct.hda_codec* %75, i32 %76)
  %78 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %79 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %78, i32 0, i32 0
  %80 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %84 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %83, i32 0, i32 0
  %85 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %84, align 8
  %86 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %87 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 %85(%struct.snd_info_buffer* %86, %struct.hda_codec* %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %73
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %438, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %443

95:                                               ; preds = %91
  %96 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @AC_PAR_AUDIO_WIDGET_CAP, align 4
  %99 = call i32 @param_read(%struct.hda_codec* %96, i32 %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @get_wcaps_type(i32 %100)
  store i32 %101, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %102 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @get_wid_type_name(i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %103, i32 %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @AC_WCAP_STEREO, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %95
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @get_wcaps_channels(i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %119 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %124

120:                                              ; preds = %112
  %121 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %122 = load i32, i32* %14, align 4
  %123 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %117
  br label %128

125:                                              ; preds = %95
  %126 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %127 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %124
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %135 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %143 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @AC_WCAP_OUT_AMP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %151 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @AC_WCAP_STRIPE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %159 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @AC_WCAP_LR_SWAP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %167 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %160
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @AC_WCAP_CP_CAPS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %175 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %178 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %179 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %180 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %183 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %182, i32 0, i32 5
  %184 = call i32 @print_nid_array(%struct.snd_info_buffer* %179, %struct.hda_codec* %180, i32 %181, i32* %183)
  %185 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %186 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %189 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %188, i32 0, i32 4
  %190 = call i32 @print_nid_array(%struct.snd_info_buffer* %185, %struct.hda_codec* %186, i32 %187, i32* %189)
  %191 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %192 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @print_nid_pcms(%struct.snd_info_buffer* %191, %struct.hda_codec* %192, i32 %193)
  %195 = load i32, i32* %11, align 4
  %196 = icmp eq i32 %195, 128
  br i1 %196, label %197, label %201

197:                                              ; preds = %176
  %198 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %199 = load i32, i32* %10, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %197, %176
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %201
  %207 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @snd_hda_get_num_raw_conns(%struct.hda_codec* %207, i32 %208)
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %206
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @GFP_KERNEL, align 4
  %215 = call i32* @kmalloc_array(i32 %213, i32 4, i32 %214)
  store i32* %215, i32** %12, align 8
  %216 = load i32*, i32** %12, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %212
  br label %446

219:                                              ; preds = %212
  %220 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* %13, align 4
  %224 = call i64 @snd_hda_get_raw_connections(%struct.hda_codec* %220, i32 %221, i32* %222, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %226, %219
  br label %228

228:                                              ; preds = %227, %206
  br label %229

229:                                              ; preds = %228, %201
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %270

234:                                              ; preds = %229
  %235 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %236 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %237 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %238 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* @HDA_INPUT, align 4
  %241 = call i32 @print_amp_caps(%struct.snd_info_buffer* %237, %struct.hda_codec* %238, i32 %239, i32 %240)
  %242 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %243 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %242, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %244 = load i32, i32* %11, align 4
  %245 = icmp eq i32 %244, 129
  br i1 %245, label %254, label %246

246:                                              ; preds = %234
  %247 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %248 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %246
  %252 = load i32, i32* %11, align 4
  %253 = icmp eq i32 %252, 131
  br i1 %253, label %254, label %261

254:                                              ; preds = %251, %234
  %255 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %256 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @HDA_INPUT, align 4
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @print_amp_vals(%struct.snd_info_buffer* %255, %struct.hda_codec* %256, i32 %257, i32 %258, i32 %259, i32 1)
  br label %269

261:                                              ; preds = %251, %246
  %262 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %263 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* @HDA_INPUT, align 4
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %13, align 4
  %268 = call i32 @print_amp_vals(%struct.snd_info_buffer* %262, %struct.hda_codec* %263, i32 %264, i32 %265, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %261, %254
  br label %270

270:                                              ; preds = %269, %229
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* @AC_WCAP_OUT_AMP, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %308

275:                                              ; preds = %270
  %276 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %277 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %276, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %278 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %279 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* @HDA_OUTPUT, align 4
  %282 = call i32 @print_amp_caps(%struct.snd_info_buffer* %278, %struct.hda_codec* %279, i32 %280, i32 %281)
  %283 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %284 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %283, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %285 = load i32, i32* %11, align 4
  %286 = icmp eq i32 %285, 129
  br i1 %286, label %287, label %300

287:                                              ; preds = %275
  %288 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %289 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %294 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %295 = load i32, i32* %6, align 4
  %296 = load i32, i32* @HDA_OUTPUT, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %13, align 4
  %299 = call i32 @print_amp_vals(%struct.snd_info_buffer* %293, %struct.hda_codec* %294, i32 %295, i32 %296, i32 %297, i32 %298)
  br label %307

300:                                              ; preds = %287, %275
  %301 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %302 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* @HDA_OUTPUT, align 4
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @print_amp_vals(%struct.snd_info_buffer* %301, %struct.hda_codec* %302, i32 %303, i32 %304, i32 %305, i32 1)
  br label %307

307:                                              ; preds = %300, %292
  br label %308

308:                                              ; preds = %307, %270
  %309 = load i32, i32* %11, align 4
  switch i32 %309, label %353 [
    i32 129, label %310
    i32 128, label %320
    i32 130, label %325
    i32 131, label %325
  ]

310:                                              ; preds = %308
  %311 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %312 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %313 = load i32, i32* %6, align 4
  %314 = call i32 @print_pin_caps(%struct.snd_info_buffer* %311, %struct.hda_codec* %312, i32 %313, i32* %15)
  %315 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %316 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call i32 @print_pin_ctls(%struct.snd_info_buffer* %315, %struct.hda_codec* %316, i32 %317, i32 %318)
  br label %353

320:                                              ; preds = %308
  %321 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %322 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %323 = load i32, i32* %6, align 4
  %324 = call i32 @print_vol_knob(%struct.snd_info_buffer* %321, %struct.hda_codec* %322, i32 %323)
  br label %353

325:                                              ; preds = %308, %308
  %326 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %327 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* %11, align 4
  %330 = call i32 @print_audio_io(%struct.snd_info_buffer* %326, %struct.hda_codec* %327, i32 %328, i32 %329)
  %331 = load i32, i32* %10, align 4
  %332 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %325
  %336 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %337 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @print_digital_conv(%struct.snd_info_buffer* %336, %struct.hda_codec* %337, i32 %338)
  br label %340

340:                                              ; preds = %335, %325
  %341 = load i32, i32* %10, align 4
  %342 = load i32, i32* @AC_WCAP_FORMAT_OVRD, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %340
  %346 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %347 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %346, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %348 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %349 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %350 = load i32, i32* %6, align 4
  %351 = call i32 @print_pcm_caps(%struct.snd_info_buffer* %348, %struct.hda_codec* %349, i32 %350)
  br label %352

352:                                              ; preds = %345, %340
  br label %353

353:                                              ; preds = %308, %352, %320, %310
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @AC_WCAP_UNSOL_CAP, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %353
  %359 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %360 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %361 = load i32, i32* %6, align 4
  %362 = call i32 @print_unsol_cap(%struct.snd_info_buffer* %359, %struct.hda_codec* %360, i32 %361)
  br label %363

363:                                              ; preds = %358, %353
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* @AC_WCAP_POWER, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %363
  %369 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %370 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %371 = load i32, i32* %6, align 4
  %372 = call i32 @print_power_state(%struct.snd_info_buffer* %369, %struct.hda_codec* %370, i32 %371)
  br label %373

373:                                              ; preds = %368, %363
  %374 = load i32, i32* %10, align 4
  %375 = load i32, i32* @AC_WCAP_DELAY, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %386

378:                                              ; preds = %373
  %379 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %380 = load i32, i32* %10, align 4
  %381 = load i32, i32* @AC_WCAP_DELAY, align 4
  %382 = and i32 %380, %381
  %383 = load i32, i32* @AC_WCAP_DELAY_SHIFT, align 4
  %384 = lshr i32 %382, %383
  %385 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %379, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %384)
  br label %386

386:                                              ; preds = %378, %373
  %387 = load i32, i32* %11, align 4
  %388 = icmp eq i32 %387, 129
  br i1 %388, label %389, label %399

389:                                              ; preds = %386
  %390 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %391 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %389
  %395 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %396 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %397 = load i32, i32* %6, align 4
  %398 = call i32 @print_device_list(%struct.snd_info_buffer* %395, %struct.hda_codec* %396, i32 %397)
  br label %399

399:                                              ; preds = %394, %389, %386
  %400 = load i32, i32* %10, align 4
  %401 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %412

404:                                              ; preds = %399
  %405 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %406 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %407 = load i32, i32* %6, align 4
  %408 = load i32, i32* %11, align 4
  %409 = load i32*, i32** %12, align 8
  %410 = load i32, i32* %13, align 4
  %411 = call i32 @print_conn_list(%struct.snd_info_buffer* %405, %struct.hda_codec* %406, i32 %407, i32 %408, i32* %409, i32 %410)
  br label %412

412:                                              ; preds = %404, %399
  %413 = load i32, i32* %10, align 4
  %414 = load i32, i32* @AC_WCAP_PROC_WID, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %412
  %418 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %419 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %420 = load i32, i32* %6, align 4
  %421 = call i32 @print_proc_caps(%struct.snd_info_buffer* %418, %struct.hda_codec* %419, i32 %420)
  br label %422

422:                                              ; preds = %417, %412
  %423 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %424 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %423, i32 0, i32 0
  %425 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %424, align 8
  %426 = icmp ne i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* %425, null
  br i1 %426, label %427, label %435

427:                                              ; preds = %422
  %428 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %429 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %428, i32 0, i32 0
  %430 = load i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)*, i32 (%struct.snd_info_buffer*, %struct.hda_codec*, i32)** %429, align 8
  %431 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %432 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %433 = load i32, i32* %6, align 4
  %434 = call i32 %430(%struct.snd_info_buffer* %431, %struct.hda_codec* %432, i32 %433)
  br label %435

435:                                              ; preds = %427, %422
  %436 = load i32*, i32** %12, align 8
  %437 = call i32 @kfree(i32* %436)
  br label %438

438:                                              ; preds = %435
  %439 = load i32, i32* %8, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %8, align 4
  %441 = load i32, i32* %6, align 4
  %442 = add i32 %441, 1
  store i32 %442, i32* %6, align 4
  br label %91

443:                                              ; preds = %91
  %444 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %445 = call i32 @snd_hda_power_down(%struct.hda_codec* %444)
  br label %446

446:                                              ; preds = %443, %218, %68, %29
  ret void
}

declare dso_local i32 @print_codec_core_info(%struct.TYPE_2__*, %struct.snd_info_buffer*) #1

declare dso_local i32 @snd_hda_power_up(%struct.hda_codec*) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @print_pcm_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_amp_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32) #1

declare dso_local i32 @print_power_state(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_sub_nodes(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @snd_hda_power_down(%struct.hda_codec*) #1

declare dso_local i32 @print_gpio(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wid_type_name(i32) #1

declare dso_local i32 @get_wcaps_channels(i32) #1

declare dso_local i32 @print_nid_array(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @print_nid_pcms(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_num_raw_conns(%struct.hda_codec*, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @snd_hda_get_raw_connections(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i32 @print_amp_vals(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @print_pin_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @print_pin_ctls(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32) #1

declare dso_local i32 @print_vol_knob(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_audio_io(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32) #1

declare dso_local i32 @print_digital_conv(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_unsol_cap(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_device_list(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @print_conn_list(%struct.snd_info_buffer*, %struct.hda_codec*, i32, i32, i32*, i32) #1

declare dso_local i32 @print_proc_caps(%struct.snd_info_buffer*, %struct.hda_codec*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
