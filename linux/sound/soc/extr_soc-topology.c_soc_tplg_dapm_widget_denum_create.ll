; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_denum_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_dapm_widget_denum_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i64, %struct.snd_kcontrol_new*, %struct.TYPE_7__, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.soc_tplg = type { i32, i32, i64 }
%struct.snd_soc_tplg_enum_control = type { %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.soc_enum = type { i64, %struct.soc_enum*, %struct.TYPE_7__, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.snd_soc_tplg_ctl_hdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c" adding DAPM widget enum control %s\0A\00", align 1
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@SNDRV_CHMAP_FL = common dso_local global i32 0, align 4
@SNDRV_CHMAP_FR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ASoC: could not create values for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ASoC: could not create texts for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"ASoC: invalid enum control type %d for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ASoC: failed to init %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_kcontrol_new* (%struct.soc_tplg*, i32)* @soc_tplg_dapm_widget_denum_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_kcontrol_new* @soc_tplg_dapm_widget_denum_create(%struct.soc_tplg* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_kcontrol_new*, align 8
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca %struct.snd_soc_tplg_enum_control*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.soc_enum* @kcalloc(i32 %11, i32 64, i32 %12)
  %14 = bitcast %struct.soc_enum* %13 to %struct.snd_kcontrol_new*
  store %struct.snd_kcontrol_new* %14, %struct.snd_kcontrol_new** %6, align 8
  %15 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %16 = icmp eq %struct.snd_kcontrol_new* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %3, align 8
  br label %281

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %239, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %242

23:                                               ; preds = %19
  %24 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %25 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.snd_soc_tplg_enum_control*
  store %struct.snd_soc_tplg_enum_control* %27, %struct.snd_soc_tplg_enum_control** %7, align 8
  %28 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %29 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %33 = call i64 @strnlen(i32 %31, i64 %32)
  %34 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %244

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.soc_enum* @kzalloc(i32 64, i32 %38)
  store %struct.soc_enum* %39, %struct.soc_enum** %8, align 8
  %40 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %41 = icmp eq %struct.soc_enum* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %244

43:                                               ; preds = %37
  %44 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 32, %47
  %49 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %50 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %54 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %57 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %62 = ptrtoint %struct.soc_enum* %61 to i64
  %63 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %63, i64 %65
  %67 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  %68 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %69 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.soc_enum* @kstrdup(i32 %71, i32 %72)
  %74 = bitcast %struct.soc_enum* %73 to %struct.snd_kcontrol_new*
  %75 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %75, i64 %77
  %79 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %78, i32 0, i32 1
  store %struct.snd_kcontrol_new* %74, %struct.snd_kcontrol_new** %79, align 8
  %80 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %80, i64 %82
  %84 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %83, i32 0, i32 1
  %85 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %84, align 8
  %86 = icmp eq %struct.snd_kcontrol_new* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %43
  br label %244

88:                                               ; preds = %43
  %89 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %90 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %90, i64 %92
  %94 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %93, i32 0, i32 9
  store i32 %89, i32* %94, align 8
  %95 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %96 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %99, i64 %101
  %103 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %102, i32 0, i32 8
  store i32 %98, i32* %103, align 4
  %104 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %105 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %106 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %109 = call i32 @tplc_chan_get_reg(%struct.soc_tplg* %104, i32 %107, i32 %108)
  %110 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %111 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %113 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %114 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %117 = call i8* @tplc_chan_get_shift(%struct.soc_tplg* %112, i32 %115, i32 %116)
  %118 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %119 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  %120 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %121 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %122 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SNDRV_CHMAP_FR, align 4
  %125 = call i8* @tplc_chan_get_shift(%struct.soc_tplg* %120, i32 %123, i32 %124)
  %126 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %127 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  %128 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %129 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %132 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %134 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %137 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %139 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %142 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %145 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le32_to_cpu(i32 %148)
  switch i32 %149, label %182 [
    i32 131, label %150
    i32 129, label %150
    i32 132, label %166
    i32 130, label %166
    i32 128, label %166
  ]

150:                                              ; preds = %88, %88
  %151 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %152 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %153 = call i32 @soc_tplg_denum_create_values(%struct.soc_enum* %151, %struct.snd_soc_tplg_enum_control* %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %158 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %161 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %159, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %244

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %88, %88, %88, %165
  %167 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %168 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %169 = call i32 @soc_tplg_denum_create_texts(%struct.soc_enum* %167, %struct.snd_soc_tplg_enum_control* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %174 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %177 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  br label %244

181:                                              ; preds = %166
  br label %196

182:                                              ; preds = %88
  %183 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %184 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %187 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %192 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %194)
  br label %244

196:                                              ; preds = %181
  %197 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %198 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %197, i32 0, i32 0
  %199 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %199, i64 %201
  %203 = bitcast %struct.snd_kcontrol_new* %202 to %struct.soc_enum*
  %204 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %205 = call i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_9__* %198, %struct.soc_enum* %203, %struct.soc_tplg* %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %196
  %209 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %210 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %211 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %210, i32 0, i32 0
  %212 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %213 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @soc_control_err(%struct.soc_tplg* %209, %struct.TYPE_9__* %211, i32 %215)
  br label %244

217:                                              ; preds = %196
  %218 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %219 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %219, i64 %221
  %223 = bitcast %struct.snd_kcontrol_new* %222 to %struct.soc_enum*
  %224 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %225 = bitcast %struct.snd_soc_tplg_enum_control* %224 to %struct.snd_soc_tplg_ctl_hdr*
  %226 = call i32 @soc_tplg_init_kcontrol(%struct.soc_tplg* %218, %struct.soc_enum* %223, %struct.snd_soc_tplg_ctl_hdr* %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %217
  %230 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %231 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %7, align 8
  %234 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %236)
  br label %244

238:                                              ; preds = %217
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %19

242:                                              ; preds = %19
  %243 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  store %struct.snd_kcontrol_new* %243, %struct.snd_kcontrol_new** %3, align 8
  br label %281

244:                                              ; preds = %229, %208, %182, %172, %156, %87, %42, %36
  br label %245

245:                                              ; preds = %274, %244
  %246 = load i32, i32* %9, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %277

248:                                              ; preds = %245
  %249 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %249, i64 %251
  %253 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to %struct.soc_enum*
  store %struct.soc_enum* %255, %struct.soc_enum** %8, align 8
  %256 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %257 = icmp ne %struct.soc_enum* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %248
  %259 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %260 = call i32 @soc_tplg_denum_remove_values(%struct.soc_enum* %259)
  %261 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %262 = call i32 @soc_tplg_denum_remove_texts(%struct.soc_enum* %261)
  br label %263

263:                                              ; preds = %258, %248
  %264 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %265 = call i32 @kfree(%struct.soc_enum* %264)
  %266 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %266, i64 %268
  %270 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %269, i32 0, i32 1
  %271 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %270, align 8
  %272 = bitcast %struct.snd_kcontrol_new* %271 to %struct.soc_enum*
  %273 = call i32 @kfree(%struct.soc_enum* %272)
  br label %274

274:                                              ; preds = %263
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %9, align 4
  br label %245

277:                                              ; preds = %245
  %278 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %279 = bitcast %struct.snd_kcontrol_new* %278 to %struct.soc_enum*
  %280 = call i32 @kfree(%struct.soc_enum* %279)
  store %struct.snd_kcontrol_new* null, %struct.snd_kcontrol_new** %3, align 8
  br label %281

281:                                              ; preds = %277, %242, %17
  %282 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %3, align 8
  ret %struct.snd_kcontrol_new* %282
}

declare dso_local %struct.soc_enum* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local %struct.soc_enum* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.soc_enum* @kstrdup(i32, i32) #1

declare dso_local i32 @tplc_chan_get_reg(%struct.soc_tplg*, i32, i32) #1

declare dso_local i8* @tplc_chan_get_shift(%struct.soc_tplg*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @soc_tplg_denum_create_values(%struct.soc_enum*, %struct.snd_soc_tplg_enum_control*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @soc_tplg_denum_create_texts(%struct.soc_enum*, %struct.snd_soc_tplg_enum_control*) #1

declare dso_local i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_9__*, %struct.soc_enum*, %struct.soc_tplg*) #1

declare dso_local i32 @soc_control_err(%struct.soc_tplg*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @soc_tplg_init_kcontrol(%struct.soc_tplg*, %struct.soc_enum*, %struct.snd_soc_tplg_ctl_hdr*) #1

declare dso_local i32 @soc_tplg_denum_remove_values(%struct.soc_enum*) #1

declare dso_local i32 @soc_tplg_denum_remove_texts(%struct.soc_enum*) #1

declare dso_local i32 @kfree(%struct.soc_enum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
