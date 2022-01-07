; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c___rsnd_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c___rsnd_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { i32 }
%struct.device_node = type { i32 }
%struct.rsnd_dai_stream = type { %struct.rsnd_dai*, i32 }
%struct.rsnd_dai = type { i32, %struct.rsnd_priv*, %struct.rsnd_dai_stream, %struct.rsnd_dai_stream }
%struct.snd_soc_dai_driver = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8* }
%struct.device = type { i32 }

@RSND_DAI_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"rsnd-dai.%d\00", align 1
@rsnd_soc_dai_ops = common dso_local global i32 0, align 4
@rsnd_pcm_new = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"DAI%d Playback\00", align 1
@RSND_RATES = common dso_local global i8* null, align 8
@RSND_FMTS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"DAI%d Capture\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s (%s/%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" -- \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"  --   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_priv*, %struct.device_node*, i32)* @__rsnd_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rsnd_dai_probe(%struct.rsnd_priv* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.rsnd_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.rsnd_dai_stream*, align 8
  %10 = alloca %struct.rsnd_dai_stream*, align 8
  %11 = alloca %struct.snd_soc_dai_driver*, align 8
  %12 = alloca %struct.rsnd_dai*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %16 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %15)
  store %struct.device* %16, %struct.device** %13, align 8
  %17 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.rsnd_dai* @rsnd_rdai_get(%struct.rsnd_priv* %17, i32 %18)
  store %struct.rsnd_dai* %19, %struct.rsnd_dai** %12, align 8
  %20 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.snd_soc_dai_driver* @rsnd_daidrv_get(%struct.rsnd_priv* %20, i32 %21)
  store %struct.snd_soc_dai_driver* %22, %struct.snd_soc_dai_driver** %11, align 8
  %23 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %24 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %23, i32 0, i32 3
  store %struct.rsnd_dai_stream* %24, %struct.rsnd_dai_stream** %9, align 8
  %25 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %26 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %25, i32 0, i32 2
  store %struct.rsnd_dai_stream* %26, %struct.rsnd_dai_stream** %10, align 8
  %27 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %28 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RSND_DAI_NAME_SIZE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @snprintf(i32 %29, i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %34 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %35 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %34, i32 0, i32 1
  store %struct.rsnd_priv* %33, %struct.rsnd_priv** %35, align 8
  %36 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %37 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %41, i32 0, i32 4
  store i32* @rsnd_soc_dai_ops, i32** %42, align 8
  %43 = load i32, i32* @rsnd_pcm_new, align 4
  %44 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %47 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RSND_DAI_NAME_SIZE, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @snprintf(i32 %48, i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i8*, i8** @RSND_RATES, align 8
  %53 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @RSND_FMTS, align 8
  %57 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i8* %56, i8** %59, align 8
  %60 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 2, i32* %62, align 8
  %63 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %64 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 8, i32* %65, align 4
  %66 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %67 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %70 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %10, align 8
  %73 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RSND_DAI_NAME_SIZE, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @snprintf(i32 %74, i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** @RSND_RATES, align 8
  %79 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @RSND_FMTS, align 8
  %83 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  %86 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 2, i32* %88, align 8
  %89 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %90 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 8, i32* %91, align 4
  %92 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %10, align 8
  %93 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %96 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %99 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %100 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %99, i32 0, i32 0
  store %struct.rsnd_dai* %98, %struct.rsnd_dai** %100, align 8
  %101 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %102 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %10, align 8
  %103 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %102, i32 0, i32 0
  store %struct.rsnd_dai* %101, %struct.rsnd_dai** %103, align 8
  %104 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %105 = call i32 @rsnd_rdai_channels_set(%struct.rsnd_dai* %104, i32 2)
  %106 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %107 = call i32 @rsnd_rdai_ssi_lane_set(%struct.rsnd_dai* %106, i32 1)
  %108 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %109 = call i32 @rsnd_rdai_width_set(%struct.rsnd_dai* %108, i32 32)
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %152, %3
  %111 = load %struct.device_node*, %struct.device_node** %5, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store %struct.device_node* %113, %struct.device_node** %7, align 8
  %114 = load %struct.device_node*, %struct.device_node** %5, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  store %struct.device_node* %116, %struct.device_node** %8, align 8
  %117 = load %struct.device_node*, %struct.device_node** %7, align 8
  %118 = icmp ne %struct.device_node* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %110
  %120 = load %struct.device_node*, %struct.device_node** %8, align 8
  %121 = icmp ne %struct.device_node* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  br label %155

123:                                              ; preds = %119, %110
  %124 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %125 = load %struct.device_node*, %struct.device_node** %7, align 8
  %126 = load %struct.device_node*, %struct.device_node** %8, align 8
  %127 = call i32 @rsnd_parse_connect_ssi(%struct.rsnd_dai* %124, %struct.device_node* %125, %struct.device_node* %126)
  %128 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %129 = load %struct.device_node*, %struct.device_node** %7, align 8
  %130 = load %struct.device_node*, %struct.device_node** %8, align 8
  %131 = call i32 @rsnd_parse_connect_ssiu(%struct.rsnd_dai* %128, %struct.device_node* %129, %struct.device_node* %130)
  %132 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %133 = load %struct.device_node*, %struct.device_node** %7, align 8
  %134 = load %struct.device_node*, %struct.device_node** %8, align 8
  %135 = call i32 @rsnd_parse_connect_src(%struct.rsnd_dai* %132, %struct.device_node* %133, %struct.device_node* %134)
  %136 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %137 = load %struct.device_node*, %struct.device_node** %7, align 8
  %138 = load %struct.device_node*, %struct.device_node** %8, align 8
  %139 = call i32 @rsnd_parse_connect_ctu(%struct.rsnd_dai* %136, %struct.device_node* %137, %struct.device_node* %138)
  %140 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %141 = load %struct.device_node*, %struct.device_node** %7, align 8
  %142 = load %struct.device_node*, %struct.device_node** %8, align 8
  %143 = call i32 @rsnd_parse_connect_mix(%struct.rsnd_dai* %140, %struct.device_node* %141, %struct.device_node* %142)
  %144 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %145 = load %struct.device_node*, %struct.device_node** %7, align 8
  %146 = load %struct.device_node*, %struct.device_node** %8, align 8
  %147 = call i32 @rsnd_parse_connect_dvc(%struct.rsnd_dai* %144, %struct.device_node* %145, %struct.device_node* %146)
  %148 = load %struct.device_node*, %struct.device_node** %7, align 8
  %149 = call i32 @of_node_put(%struct.device_node* %148)
  %150 = load %struct.device_node*, %struct.device_node** %8, align 8
  %151 = call i32 @of_node_put(%struct.device_node* %150)
  br label %152

152:                                              ; preds = %123
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %110

155:                                              ; preds = %122
  %156 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %10, align 8
  %157 = call i64 @rsnd_ssi_is_pin_sharing(%struct.rsnd_dai_stream* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %161 = call i64 @rsnd_ssi_is_pin_sharing(%struct.rsnd_dai_stream* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159, %155
  %164 = load %struct.snd_soc_dai_driver*, %struct.snd_soc_dai_driver** %11, align 8
  %165 = getelementptr inbounds %struct.snd_soc_dai_driver, %struct.snd_soc_dai_driver* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %159
  %167 = load %struct.device*, %struct.device** %13, align 8
  %168 = load %struct.rsnd_dai*, %struct.rsnd_dai** %12, align 8
  %169 = getelementptr inbounds %struct.rsnd_dai, %struct.rsnd_dai* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %9, align 8
  %172 = call i64 @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %171)
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %176 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %10, align 8
  %177 = call i64 @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %176)
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)
  %181 = call i32 @dev_dbg(%struct.device* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %170, i8* %175, i8* %180)
  ret void
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_dai* @rsnd_rdai_get(%struct.rsnd_priv*, i32) #1

declare dso_local %struct.snd_soc_dai_driver* @rsnd_daidrv_get(%struct.rsnd_priv*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @rsnd_rdai_channels_set(%struct.rsnd_dai*, i32) #1

declare dso_local i32 @rsnd_rdai_ssi_lane_set(%struct.rsnd_dai*, i32) #1

declare dso_local i32 @rsnd_rdai_width_set(%struct.rsnd_dai*, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @rsnd_parse_connect_ssi(%struct.rsnd_dai*, %struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @rsnd_parse_connect_ssiu(%struct.rsnd_dai*, %struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @rsnd_parse_connect_src(%struct.rsnd_dai*, %struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @rsnd_parse_connect_ctu(%struct.rsnd_dai*, %struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @rsnd_parse_connect_mix(%struct.rsnd_dai*, %struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @rsnd_parse_connect_dvc(%struct.rsnd_dai*, %struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @rsnd_ssi_is_pin_sharing(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*) #1

declare dso_local i64 @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
