; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_dmixer_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_dmixer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i64, %struct.snd_kcontrol_new*, %struct.TYPE_7__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.soc_tplg = type { i32, i32, i64 }
%struct.soc_mixer_control = type { i64, %struct.soc_mixer_control*, %struct.TYPE_7__, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.snd_soc_tplg_mixer_control = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_tplg_ctl_hdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c" adding DAPM widget mixer control %s at %d\0A\00", align 1
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@SNDRV_CHMAP_FL = common dso_local global i32 0, align 4
@SNDRV_CHMAP_FR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ASoC: failed to init %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_kcontrol_new* (%struct.soc_tplg*, i32)* @soc_tplg_dapm_widget_dmixer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_kcontrol_new* @soc_tplg_dapm_widget_dmixer_create(%struct.soc_tplg* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_kcontrol_new*, align 8
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca %struct.snd_soc_tplg_mixer_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.soc_mixer_control* @kcalloc(i32 %11, i32 80, i32 %12)
  %14 = bitcast %struct.soc_mixer_control* %13 to %struct.snd_kcontrol_new*
  store %struct.snd_kcontrol_new* %14, %struct.snd_kcontrol_new** %6, align 8
  %15 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %16 = icmp eq %struct.snd_kcontrol_new* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %3, align 8
  br label %260

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %226, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %229

23:                                               ; preds = %19
  %24 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %25 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.snd_soc_tplg_mixer_control*
  store %struct.snd_soc_tplg_mixer_control* %27, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %28 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %29 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %33 = call i64 @strnlen(i32 %31, i64 %32)
  %34 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %231

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.soc_mixer_control* @kzalloc(i32 80, i32 %38)
  store %struct.soc_mixer_control* %39, %struct.soc_mixer_control** %7, align 8
  %40 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %41 = icmp eq %struct.soc_mixer_control* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %231

43:                                               ; preds = %37
  %44 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  %49 = add i64 32, %48
  %50 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %51 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %55 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %58 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %64 = ptrtoint %struct.soc_mixer_control* %63 to i64
  %65 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %65, i64 %67
  %69 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %68, i32 0, i32 0
  store i64 %64, i64* %69, align 8
  %70 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %71 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.soc_mixer_control* @kstrdup(i32 %73, i32 %74)
  %76 = bitcast %struct.soc_mixer_control* %75 to %struct.snd_kcontrol_new*
  %77 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %77, i64 %79
  %81 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %80, i32 0, i32 1
  store %struct.snd_kcontrol_new* %76, %struct.snd_kcontrol_new** %81, align 8
  %82 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %82, i64 %84
  %86 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %85, i32 0, i32 1
  %87 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %86, align 8
  %88 = icmp eq %struct.snd_kcontrol_new* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %43
  br label %231

90:                                               ; preds = %43
  %91 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %92 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %92, i64 %94
  %96 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %95, i32 0, i32 12
  store i32 %91, i32* %96, align 4
  %97 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %98 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %101, i64 %103
  %105 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %104, i32 0, i32 11
  store i32 %100, i32* %105, align 8
  %106 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %107 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %108 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %111 = call i8* @tplc_chan_get_reg(%struct.soc_tplg* %106, i32 %109, i32 %110)
  %112 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %113 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %112, i32 0, i32 10
  store i8* %111, i8** %113, align 8
  %114 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %115 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %116 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SNDRV_CHMAP_FR, align 4
  %119 = call i8* @tplc_chan_get_reg(%struct.soc_tplg* %114, i32 %117, i32 %118)
  %120 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %121 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %120, i32 0, i32 9
  store i8* %119, i8** %121, align 8
  %122 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %123 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %124 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %127 = call i8* @tplc_chan_get_shift(%struct.soc_tplg* %122, i32 %125, i32 %126)
  %128 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %129 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %128, i32 0, i32 8
  store i8* %127, i8** %129, align 8
  %130 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %131 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %132 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SNDRV_CHMAP_FR, align 4
  %135 = call i8* @tplc_chan_get_shift(%struct.soc_tplg* %130, i32 %133, i32 %134)
  %136 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %137 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %136, i32 0, i32 7
  store i8* %135, i8** %137, align 8
  %138 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %139 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %142 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %144 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %147 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %149 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %152 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %154 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %157 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %159 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %162 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %165 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = call i32 @INIT_LIST_HEAD(i32* %166)
  %168 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %169 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %168, i32 0, i32 0
  %170 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %170, i64 %172
  %174 = bitcast %struct.snd_kcontrol_new* %173 to %struct.soc_mixer_control*
  %175 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %176 = call i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_8__* %169, %struct.soc_mixer_control* %174, %struct.soc_tplg* %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %90
  %180 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %181 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %182 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %181, i32 0, i32 0
  %183 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %184 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @soc_control_err(%struct.soc_tplg* %180, %struct.TYPE_8__* %182, i32 %186)
  br label %231

188:                                              ; preds = %90
  %189 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %190 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %190, i64 %192
  %194 = bitcast %struct.snd_kcontrol_new* %193 to %struct.soc_mixer_control*
  %195 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %196 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %195, i32 0, i32 0
  %197 = call i32 @soc_tplg_create_tlv(%struct.soc_tplg* %189, %struct.soc_mixer_control* %194, %struct.TYPE_8__* %196)
  %198 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %199 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %199, i64 %201
  %203 = bitcast %struct.snd_kcontrol_new* %202 to %struct.soc_mixer_control*
  %204 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %205 = bitcast %struct.snd_soc_tplg_mixer_control* %204 to %struct.snd_soc_tplg_ctl_hdr*
  %206 = call i32 @soc_tplg_init_kcontrol(%struct.soc_tplg* %198, %struct.soc_mixer_control* %203, %struct.snd_soc_tplg_ctl_hdr* %205)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %188
  %210 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %211 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.snd_soc_tplg_mixer_control*, %struct.snd_soc_tplg_mixer_control** %8, align 8
  %214 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, %struct.snd_soc_tplg_mixer_control* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @dev_err(i32 %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %216)
  %218 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %219 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %219, i64 %221
  %223 = bitcast %struct.snd_kcontrol_new* %222 to %struct.soc_mixer_control*
  %224 = call i32 @soc_tplg_free_tlv(%struct.soc_tplg* %218, %struct.soc_mixer_control* %223)
  br label %231

225:                                              ; preds = %188
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %19

229:                                              ; preds = %19
  %230 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  store %struct.snd_kcontrol_new* %230, %struct.snd_kcontrol_new** %3, align 8
  br label %260

231:                                              ; preds = %209, %179, %89, %42, %36
  br label %232

232:                                              ; preds = %253, %231
  %233 = load i32, i32* %9, align 4
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %232
  %236 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %236, i64 %238
  %240 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %242, %struct.soc_mixer_control** %7, align 8
  %243 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %244 = call i32 @kfree(%struct.soc_mixer_control* %243)
  %245 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %245, i64 %247
  %249 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %248, i32 0, i32 1
  %250 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %249, align 8
  %251 = bitcast %struct.snd_kcontrol_new* %250 to %struct.soc_mixer_control*
  %252 = call i32 @kfree(%struct.soc_mixer_control* %251)
  br label %253

253:                                              ; preds = %235
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %9, align 4
  br label %232

256:                                              ; preds = %232
  %257 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %258 = bitcast %struct.snd_kcontrol_new* %257 to %struct.soc_mixer_control*
  %259 = call i32 @kfree(%struct.soc_mixer_control* %258)
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %3, align 8
  br label %260

260:                                              ; preds = %256, %229, %17
  %261 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %3, align 8
  ret %struct.snd_kcontrol_new* %261
}

declare dso_local %struct.soc_mixer_control* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local %struct.soc_mixer_control* @kzalloc(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.soc_mixer_control* @kstrdup(i32, i32) #1

declare dso_local i8* @tplc_chan_get_reg(%struct.soc_tplg*, i32, i32) #1

declare dso_local i8* @tplc_chan_get_shift(%struct.soc_tplg*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_8__*, %struct.soc_mixer_control*, %struct.soc_tplg*) #1

declare dso_local i32 @soc_control_err(%struct.soc_tplg*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @soc_tplg_create_tlv(%struct.soc_tplg*, %struct.soc_mixer_control*, %struct.TYPE_8__*) #1

declare dso_local i32 @soc_tplg_init_kcontrol(%struct.soc_tplg*, %struct.soc_mixer_control*, %struct.snd_soc_tplg_ctl_hdr*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @soc_tplg_free_tlv(%struct.soc_tplg*, %struct.soc_mixer_control*) #1

declare dso_local i32 @kfree(%struct.soc_mixer_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
