; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_card_dai_links_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_card_dai_links_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dai_link = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.snd_soc_dai_link_component*, i32, i8*, i8*, %struct.snd_soc_dai_link_component*, i32* }
%struct.snd_soc_dai_link_component = type { i8*, i8* }
%struct.device = type { i32 }

@sof_audio_card_rt5682 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SSP%d-Codec\00", align 1
@rt5682_component = common dso_local global i8* null, align 8
@platform_component = common dso_local global i8* null, align 8
@sof_rt5682_codec_init = common dso_local global i32 0, align 4
@sof_rt5682_ops = common dso_local global i32 0, align 4
@is_legacy_cpu = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"ssp%d-port\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SSP%d Pin\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"dmic01\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DMIC01 Pin\00", align 1
@dmic_init = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"dmic16k\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"DMIC16k Pin\00", align 1
@dmic_component = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"iDisp%d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"iDisp%d Pin\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ehdaudio0D2\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"intel-hdmi-hifi%d\00", align 1
@sof_hdmi_init = common dso_local global i32 0, align 4
@sof_rt5682_quirk = common dso_local global i32 0, align 4
@SOF_SPEAKER_AMP_PRESENT = common dso_local global i32 0, align 4
@max98357a_component = common dso_local global i8* null, align 8
@speaker_codec_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_soc_dai_link* (%struct.device*, i32, i32, i32, i32)* @sof_card_dai_links_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_soc_dai_link* @sof_card_dai_links_create(%struct.device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai_link*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_dai_link_component*, align 8
  %13 = alloca %struct.snd_soc_dai_link_component*, align 8
  %14 = alloca %struct.snd_soc_dai_link*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sof_audio_card_rt5682, i32 0, i32 0), align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 96, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.device* %17, i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.snd_soc_dai_link*
  store %struct.snd_soc_dai_link* %24, %struct.snd_soc_dai_link** %14, align 8
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sof_audio_card_rt5682, i32 0, i32 0), align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 16, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(%struct.device* %25, i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %32, %struct.snd_soc_dai_link_component** %13, align 8
  %33 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %34 = icmp ne %struct.snd_soc_dai_link* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %13, align 8
  %37 = icmp ne %struct.snd_soc_dai_link_component* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %5
  br label %618

39:                                               ; preds = %35
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @devm_kasprintf(%struct.device* %40, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %44, i64 %46
  %48 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %47, i32 0, i32 0
  store i8* %43, i8** %48, align 8
  %49 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %49, i64 %51
  %53 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %39
  br label %618

57:                                               ; preds = %39
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %59, i64 %61
  %63 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 8
  %64 = load i8*, i8** @rt5682_component, align 8
  %65 = bitcast i8* %64 to %struct.snd_soc_dai_link_component*
  %66 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %66, i64 %68
  %70 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %69, i32 0, i32 14
  store %struct.snd_soc_dai_link_component* %65, %struct.snd_soc_dai_link_component** %70, align 8
  %71 = load i8*, i8** @rt5682_component, align 8
  %72 = call i8* @ARRAY_SIZE(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %74, i64 %76
  %78 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %77, i32 0, i32 2
  store i32 %73, i32* %78, align 4
  %79 = load i8*, i8** @platform_component, align 8
  %80 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %80, i64 %82
  %84 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %83, i32 0, i32 13
  store i8* %79, i8** %84, align 8
  %85 = load i8*, i8** @platform_component, align 8
  %86 = call i8* @ARRAY_SIZE(i8* %85)
  %87 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %87, i64 %89
  %91 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %90, i32 0, i32 12
  store i8* %86, i8** %91, align 8
  %92 = load i32, i32* @sof_rt5682_codec_init, align 4
  %93 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %93, i64 %95
  %97 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %96, i32 0, i32 11
  store i32 %92, i32* %97, align 8
  %98 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %98, i64 %100
  %102 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %101, i32 0, i32 15
  store i32* @sof_rt5682_ops, i32** %102, align 8
  %103 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %103, i64 %105
  %107 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %106, i32 0, i32 3
  store i32 1, i32* %107, align 8
  %108 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %108, i64 %110
  %112 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %111, i32 0, i32 4
  store i32 1, i32* %112, align 4
  %113 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %113, i64 %115
  %117 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %116, i32 0, i32 5
  store i32 1, i32* %117, align 8
  %118 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %118, i64 %120
  %122 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %121, i32 0, i32 6
  store i32 1, i32* %122, align 4
  %123 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %13, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %123, i64 %125
  %127 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %127, i64 %129
  %131 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %130, i32 0, i32 10
  store %struct.snd_soc_dai_link_component* %126, %struct.snd_soc_dai_link_component** %131, align 8
  %132 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %132, i64 %134
  %136 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %135, i32 0, i32 7
  store i32 1, i32* %136, align 8
  %137 = load i64, i64* @is_legacy_cpu, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %57
  %140 = load %struct.device*, %struct.device** %7, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i8* @devm_kasprintf(%struct.device* %140, i32 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %144, i64 %146
  %148 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %147, i32 0, i32 10
  %149 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %148, align 8
  %150 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %149, i32 0, i32 0
  store i8* %143, i8** %150, align 8
  %151 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %151, i64 %153
  %155 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %154, i32 0, i32 10
  %156 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %155, align 8
  %157 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %139
  br label %618

161:                                              ; preds = %139
  br label %190

162:                                              ; preds = %57
  %163 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %163, i64 %165
  %167 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %166, i32 0, i32 8
  store i32 1, i32* %167, align 4
  %168 = load %struct.device*, %struct.device** %7, align 8
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i8* @devm_kasprintf(%struct.device* %168, i32 %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  %172 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %172, i64 %174
  %176 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %175, i32 0, i32 10
  %177 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %176, align 8
  %178 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %177, i32 0, i32 0
  store i8* %171, i8** %178, align 8
  %179 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %179, i64 %181
  %183 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %182, i32 0, i32 10
  %184 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %183, align 8
  %185 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %162
  br label %618

189:                                              ; preds = %162
  br label %190

190:                                              ; preds = %189, %161
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %252

195:                                              ; preds = %190
  %196 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %196, i64 %198
  %200 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %199, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %200, align 8
  %201 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %13, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %201, i64 %203
  %205 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %205, i64 %207
  %209 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %208, i32 0, i32 10
  store %struct.snd_soc_dai_link_component* %204, %struct.snd_soc_dai_link_component** %209, align 8
  %210 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %210, i64 %212
  %214 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %213, i32 0, i32 10
  %215 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %214, align 8
  %216 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %215, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %216, align 8
  %217 = load i32, i32* @dmic_init, align 4
  %218 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %218, i64 %220
  %222 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %221, i32 0, i32 11
  store i32 %217, i32* %222, align 8
  %223 = load i32, i32* %10, align 4
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %251

225:                                              ; preds = %195
  %226 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %226, i64 %229
  %231 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %230, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %231, align 8
  %232 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %13, align 8
  %233 = load i32, i32* %16, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %232, i64 %235
  %237 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %237, i64 %240
  %242 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %241, i32 0, i32 10
  store %struct.snd_soc_dai_link_component* %236, %struct.snd_soc_dai_link_component** %242, align 8
  %243 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %243, i64 %246
  %248 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %247, i32 0, i32 10
  %249 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %248, align 8
  %250 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %249, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %250, align 8
  store i32 2, i32* %10, align 4
  br label %251

251:                                              ; preds = %225, %195
  br label %252

252:                                              ; preds = %251, %190
  store i32 0, i32* %15, align 4
  br label %253

253:                                              ; preds = %314, %252
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %317

257:                                              ; preds = %253
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %259, i64 %261
  %263 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %262, i32 0, i32 1
  store i32 %258, i32* %263, align 8
  %264 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %265 = load i32, i32* %16, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %264, i64 %266
  %268 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %267, i32 0, i32 7
  store i32 1, i32* %268, align 8
  %269 = load i8*, i8** @dmic_component, align 8
  %270 = bitcast i8* %269 to %struct.snd_soc_dai_link_component*
  %271 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %272 = load i32, i32* %16, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %271, i64 %273
  %275 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %274, i32 0, i32 14
  store %struct.snd_soc_dai_link_component* %270, %struct.snd_soc_dai_link_component** %275, align 8
  %276 = load i8*, i8** @dmic_component, align 8
  %277 = call i8* @ARRAY_SIZE(i8* %276)
  %278 = ptrtoint i8* %277 to i32
  %279 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %279, i64 %281
  %283 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %282, i32 0, i32 2
  store i32 %278, i32* %283, align 4
  %284 = load i8*, i8** @platform_component, align 8
  %285 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %285, i64 %287
  %289 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %288, i32 0, i32 13
  store i8* %284, i8** %289, align 8
  %290 = load i8*, i8** @platform_component, align 8
  %291 = call i8* @ARRAY_SIZE(i8* %290)
  %292 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %292, i64 %294
  %296 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %295, i32 0, i32 12
  store i8* %291, i8** %296, align 8
  %297 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %298 = load i32, i32* %16, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %297, i64 %299
  %301 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %300, i32 0, i32 9
  store i32 1, i32* %301, align 8
  %302 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %303 = load i32, i32* %16, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %302, i64 %304
  %306 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %305, i32 0, i32 5
  store i32 1, i32* %306, align 8
  %307 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %308 = load i32, i32* %16, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %307, i64 %309
  %311 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %310, i32 0, i32 6
  store i32 1, i32* %311, align 4
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %16, align 4
  br label %314

314:                                              ; preds = %257
  %315 = load i32, i32* %15, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %15, align 4
  br label %253

317:                                              ; preds = %253
  %318 = load i32, i32* %11, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %317
  %321 = load %struct.device*, %struct.device** %7, align 8
  %322 = load i32, i32* %11, align 4
  %323 = sext i32 %322 to i64
  %324 = mul i64 16, %323
  %325 = trunc i64 %324 to i32
  %326 = load i32, i32* @GFP_KERNEL, align 4
  %327 = call i8* @devm_kzalloc(%struct.device* %321, i32 %325, i32 %326)
  %328 = bitcast i8* %327 to %struct.snd_soc_dai_link_component*
  store %struct.snd_soc_dai_link_component* %328, %struct.snd_soc_dai_link_component** %12, align 8
  %329 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %330 = icmp ne %struct.snd_soc_dai_link_component* %329, null
  br i1 %330, label %332, label %331

331:                                              ; preds = %320
  br label %618

332:                                              ; preds = %320
  br label %333

333:                                              ; preds = %332, %317
  store i32 1, i32* %15, align 4
  br label %334

334:                                              ; preds = %471, %333
  %335 = load i32, i32* %15, align 4
  %336 = load i32, i32* %11, align 4
  %337 = icmp sle i32 %335, %336
  br i1 %337, label %338, label %474

338:                                              ; preds = %334
  %339 = load %struct.device*, %struct.device** %7, align 8
  %340 = load i32, i32* @GFP_KERNEL, align 4
  %341 = load i32, i32* %15, align 4
  %342 = call i8* @devm_kasprintf(%struct.device* %339, i32 %340, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %341)
  %343 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %344 = load i32, i32* %16, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %343, i64 %345
  %347 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %346, i32 0, i32 0
  store i8* %342, i8** %347, align 8
  %348 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %348, i64 %350
  %352 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %351, i32 0, i32 0
  %353 = load i8*, i8** %352, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %356, label %355

355:                                              ; preds = %338
  br label %618

356:                                              ; preds = %338
  %357 = load i32, i32* %16, align 4
  %358 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %359 = load i32, i32* %16, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %358, i64 %360
  %362 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %361, i32 0, i32 1
  store i32 %357, i32* %362, align 8
  %363 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %13, align 8
  %364 = load i32, i32* %16, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %363, i64 %365
  %367 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %368 = load i32, i32* %16, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %367, i64 %369
  %371 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %370, i32 0, i32 10
  store %struct.snd_soc_dai_link_component* %366, %struct.snd_soc_dai_link_component** %371, align 8
  %372 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %373 = load i32, i32* %16, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %372, i64 %374
  %376 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %375, i32 0, i32 7
  store i32 1, i32* %376, align 8
  %377 = load %struct.device*, %struct.device** %7, align 8
  %378 = load i32, i32* @GFP_KERNEL, align 4
  %379 = load i32, i32* %15, align 4
  %380 = call i8* @devm_kasprintf(%struct.device* %377, i32 %378, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %379)
  %381 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %382 = load i32, i32* %16, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %381, i64 %383
  %385 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %384, i32 0, i32 10
  %386 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %385, align 8
  %387 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %386, i32 0, i32 0
  store i8* %380, i8** %387, align 8
  %388 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %389 = load i32, i32* %16, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %388, i64 %390
  %392 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %391, i32 0, i32 10
  %393 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %392, align 8
  %394 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %356
  br label %618

398:                                              ; preds = %356
  %399 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %400 = load i32, i32* %15, align 4
  %401 = sub nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %399, i64 %402
  %404 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %403, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %404, align 8
  %405 = load %struct.device*, %struct.device** %7, align 8
  %406 = load i32, i32* @GFP_KERNEL, align 4
  %407 = load i32, i32* %15, align 4
  %408 = call i8* @devm_kasprintf(%struct.device* %405, i32 %406, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %407)
  %409 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %410 = load i32, i32* %15, align 4
  %411 = sub nsw i32 %410, 1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %409, i64 %412
  %414 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %413, i32 0, i32 0
  store i8* %408, i8** %414, align 8
  %415 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %416 = load i32, i32* %15, align 4
  %417 = sub nsw i32 %416, 1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %415, i64 %418
  %420 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %419, i32 0, i32 0
  %421 = load i8*, i8** %420, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %398
  br label %618

424:                                              ; preds = %398
  %425 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %426 = load i32, i32* %15, align 4
  %427 = sub nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %425, i64 %428
  %430 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %431 = load i32, i32* %16, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %430, i64 %432
  %434 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %433, i32 0, i32 14
  store %struct.snd_soc_dai_link_component* %429, %struct.snd_soc_dai_link_component** %434, align 8
  %435 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %436 = load i32, i32* %16, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %435, i64 %437
  %439 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %438, i32 0, i32 2
  store i32 1, i32* %439, align 4
  %440 = load i8*, i8** @platform_component, align 8
  %441 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %442 = load i32, i32* %16, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %441, i64 %443
  %445 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %444, i32 0, i32 13
  store i8* %440, i8** %445, align 8
  %446 = load i8*, i8** @platform_component, align 8
  %447 = call i8* @ARRAY_SIZE(i8* %446)
  %448 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %449 = load i32, i32* %16, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %448, i64 %450
  %452 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %451, i32 0, i32 12
  store i8* %447, i8** %452, align 8
  %453 = load i32, i32* @sof_hdmi_init, align 4
  %454 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %455 = load i32, i32* %16, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %454, i64 %456
  %458 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %457, i32 0, i32 11
  store i32 %453, i32* %458, align 8
  %459 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %460 = load i32, i32* %16, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %459, i64 %461
  %463 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %462, i32 0, i32 4
  store i32 1, i32* %463, align 4
  %464 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %465 = load i32, i32* %16, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %464, i64 %466
  %468 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %467, i32 0, i32 6
  store i32 1, i32* %468, align 4
  %469 = load i32, i32* %16, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %16, align 4
  br label %471

471:                                              ; preds = %424
  %472 = load i32, i32* %15, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %15, align 4
  br label %334

474:                                              ; preds = %334
  %475 = load i32, i32* @sof_rt5682_quirk, align 4
  %476 = load i32, i32* @SOF_SPEAKER_AMP_PRESENT, align 4
  %477 = and i32 %475, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %616

479:                                              ; preds = %474
  %480 = load %struct.device*, %struct.device** %7, align 8
  %481 = load i32, i32* @GFP_KERNEL, align 4
  %482 = load i32, i32* %9, align 4
  %483 = call i8* @devm_kasprintf(%struct.device* %480, i32 %481, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %482)
  %484 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %485 = load i32, i32* %16, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %484, i64 %486
  %488 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %487, i32 0, i32 0
  store i8* %483, i8** %488, align 8
  %489 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %490 = load i32, i32* %16, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %489, i64 %491
  %493 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %492, i32 0, i32 0
  %494 = load i8*, i8** %493, align 8
  %495 = icmp ne i8* %494, null
  br i1 %495, label %497, label %496

496:                                              ; preds = %479
  br label %618

497:                                              ; preds = %479
  %498 = load i32, i32* %16, align 4
  %499 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %500 = load i32, i32* %16, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %499, i64 %501
  %503 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %502, i32 0, i32 1
  store i32 %498, i32* %503, align 8
  %504 = load i8*, i8** @max98357a_component, align 8
  %505 = bitcast i8* %504 to %struct.snd_soc_dai_link_component*
  %506 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %507 = load i32, i32* %16, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %506, i64 %508
  %510 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %509, i32 0, i32 14
  store %struct.snd_soc_dai_link_component* %505, %struct.snd_soc_dai_link_component** %510, align 8
  %511 = load i8*, i8** @max98357a_component, align 8
  %512 = call i8* @ARRAY_SIZE(i8* %511)
  %513 = ptrtoint i8* %512 to i32
  %514 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %515 = load i32, i32* %16, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %514, i64 %516
  %518 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %517, i32 0, i32 2
  store i32 %513, i32* %518, align 4
  %519 = load i8*, i8** @platform_component, align 8
  %520 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %521 = load i32, i32* %16, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %520, i64 %522
  %524 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %523, i32 0, i32 13
  store i8* %519, i8** %524, align 8
  %525 = load i8*, i8** @platform_component, align 8
  %526 = call i8* @ARRAY_SIZE(i8* %525)
  %527 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %528 = load i32, i32* %16, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %527, i64 %529
  %531 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %530, i32 0, i32 12
  store i8* %526, i8** %531, align 8
  %532 = load i32, i32* @speaker_codec_init, align 4
  %533 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %534 = load i32, i32* %16, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %533, i64 %535
  %537 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %536, i32 0, i32 11
  store i32 %532, i32* %537, align 8
  %538 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %539 = load i32, i32* %16, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %538, i64 %540
  %542 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %541, i32 0, i32 3
  store i32 1, i32* %542, align 8
  %543 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %544 = load i32, i32* %16, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %543, i64 %545
  %547 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %546, i32 0, i32 4
  store i32 1, i32* %547, align 4
  %548 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %549 = load i32, i32* %16, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %548, i64 %550
  %552 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %551, i32 0, i32 6
  store i32 1, i32* %552, align 4
  %553 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %13, align 8
  %554 = load i32, i32* %16, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %553, i64 %555
  %557 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %558 = load i32, i32* %16, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %557, i64 %559
  %561 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %560, i32 0, i32 10
  store %struct.snd_soc_dai_link_component* %556, %struct.snd_soc_dai_link_component** %561, align 8
  %562 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %563 = load i32, i32* %16, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %562, i64 %564
  %566 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %565, i32 0, i32 7
  store i32 1, i32* %566, align 8
  %567 = load i64, i64* @is_legacy_cpu, align 8
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %592

569:                                              ; preds = %497
  %570 = load %struct.device*, %struct.device** %7, align 8
  %571 = load i32, i32* @GFP_KERNEL, align 4
  %572 = load i32, i32* %9, align 4
  %573 = call i8* @devm_kasprintf(%struct.device* %570, i32 %571, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %572)
  %574 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %575 = load i32, i32* %16, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %574, i64 %576
  %578 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %577, i32 0, i32 10
  %579 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %578, align 8
  %580 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %579, i32 0, i32 0
  store i8* %573, i8** %580, align 8
  %581 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %582 = load i32, i32* %16, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %581, i64 %583
  %585 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %584, i32 0, i32 10
  %586 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %585, align 8
  %587 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %586, i32 0, i32 0
  %588 = load i8*, i8** %587, align 8
  %589 = icmp ne i8* %588, null
  br i1 %589, label %591, label %590

590:                                              ; preds = %569
  br label %618

591:                                              ; preds = %569
  br label %615

592:                                              ; preds = %497
  %593 = load %struct.device*, %struct.device** %7, align 8
  %594 = load i32, i32* @GFP_KERNEL, align 4
  %595 = load i32, i32* %9, align 4
  %596 = call i8* @devm_kasprintf(%struct.device* %593, i32 %594, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %595)
  %597 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %598 = load i32, i32* %16, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %597, i64 %599
  %601 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %600, i32 0, i32 10
  %602 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %601, align 8
  %603 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %602, i32 0, i32 0
  store i8* %596, i8** %603, align 8
  %604 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  %605 = load i32, i32* %16, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %604, i64 %606
  %608 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %607, i32 0, i32 10
  %609 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %608, align 8
  %610 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %609, i32 0, i32 0
  %611 = load i8*, i8** %610, align 8
  %612 = icmp ne i8* %611, null
  br i1 %612, label %614, label %613

613:                                              ; preds = %592
  br label %618

614:                                              ; preds = %592
  br label %615

615:                                              ; preds = %614, %591
  br label %616

616:                                              ; preds = %615, %474
  %617 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %14, align 8
  store %struct.snd_soc_dai_link* %617, %struct.snd_soc_dai_link** %6, align 8
  br label %619

618:                                              ; preds = %613, %590, %496, %423, %397, %355, %331, %188, %160, %56, %38
  store %struct.snd_soc_dai_link* null, %struct.snd_soc_dai_link** %6, align 8
  br label %619

619:                                              ; preds = %618, %616
  %620 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %6, align 8
  ret %struct.snd_soc_dai_link* %620
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
