; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_denum_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_denum_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.snd_soc_tplg_enum_control = type { %struct.TYPE_13__, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.soc_enum = type { i32, %struct.TYPE_11__, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.snd_kcontrol_new = type { i32, i64, i32, i32 }
%struct.snd_soc_tplg_ctl_hdr = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"enums\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ASoC: invalid count %d for enum controls\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ASoC: adding enum kcontrol %s size %d\0A\00", align 1
@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@SNDRV_CHMAP_FL = common dso_local global i32 0, align 4
@SND_SOC_DOBJ_ENUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ASoC: could not create values for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"ASoC: could not create texts for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"ASoC: invalid enum control type %d for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ASoC: failed to init %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"ASoC: could not add kcontrol %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, i32, i64)* @soc_tplg_denum_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_denum_create(%struct.soc_tplg* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_tplg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_soc_tplg_enum_control*, align 8
  %9 = alloca %struct.soc_enum*, align 8
  %10 = alloca %struct.snd_kcontrol_new, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @soc_tplg_check_elem_count(%struct.soc_tplg* %14, i32 28, i32 %15, i64 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %21 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %276

27:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %272, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %275

32:                                               ; preds = %28
  %33 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %34 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.snd_soc_tplg_enum_control*
  store %struct.snd_soc_tplg_enum_control* %37, %struct.snd_soc_tplg_enum_control** %8, align 8
  %38 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %39 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %43 = call i64 @strnlen(i32 %41, i64 %42)
  %44 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %276

49:                                               ; preds = %32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.soc_enum* @kzalloc(i32 48, i32 %50)
  store %struct.soc_enum* %51, %struct.soc_enum** %9, align 8
  %52 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %53 = icmp eq %struct.soc_enum* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %276

57:                                               ; preds = %49
  %58 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %59 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = add i64 28, %63
  %65 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %66 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %72 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %75 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %79 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80)
  %82 = call i32 @memset(%struct.snd_kcontrol_new* %10, i32 0, i32 24)
  %83 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %84 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %89 = ptrtoint %struct.soc_enum* %88 to i64
  %90 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %92 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  %93 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %94 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %10, i32 0, i32 2
  store i32 %97, i32* %98, align 8
  %99 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %100 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %101 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %104 = call i32 @tplc_chan_get_reg(%struct.soc_tplg* %99, i32 %102, i32 %103)
  %105 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %106 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %108 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %109 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %112 = call i8* @tplc_chan_get_shift(%struct.soc_tplg* %107, i32 %110, i32 %111)
  %113 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %114 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %116 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %117 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SNDRV_CHMAP_FL, align 4
  %120 = call i8* @tplc_chan_get_shift(%struct.soc_tplg* %115, i32 %118, i32 %119)
  %121 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %122 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %124 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le32_to_cpu(i32 %125)
  %127 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %128 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %130 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %133 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @SND_SOC_DOBJ_ENUM, align 4
  %136 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %137 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %140 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %143 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 4
  %145 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %146 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %150 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le32_to_cpu(i32 %153)
  switch i32 %154, label %191 [
    i32 129, label %155
    i32 131, label %155
    i32 132, label %173
    i32 130, label %173
    i32 128, label %173
  ]

155:                                              ; preds = %57, %57
  %156 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %157 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %158 = call i32 @soc_tplg_denum_create_values(%struct.soc_enum* %156, %struct.snd_soc_tplg_enum_control* %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %163 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %166 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %164, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %171 = call i32 @kfree(%struct.soc_enum* %170)
  br label %272

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %57, %57, %57, %172
  %174 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %175 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %176 = call i32 @soc_tplg_denum_create_texts(%struct.soc_enum* %174, %struct.snd_soc_tplg_enum_control* %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %181 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %184 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %182, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  %188 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %189 = call i32 @kfree(%struct.soc_enum* %188)
  br label %272

190:                                              ; preds = %173
  br label %207

191:                                              ; preds = %57
  %192 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %193 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %196 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %201 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %194, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %199, i32 %203)
  %205 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %206 = call i32 @kfree(%struct.soc_enum* %205)
  br label %272

207:                                              ; preds = %190
  %208 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %209 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %208, i32 0, i32 0
  %210 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %211 = call i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_13__* %209, %struct.snd_kcontrol_new* %10, %struct.soc_tplg* %210)
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %207
  %215 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %216 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %217 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %216, i32 0, i32 0
  %218 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %219 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @soc_control_err(%struct.soc_tplg* %215, %struct.TYPE_13__* %217, i32 %221)
  %223 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %224 = call i32 @kfree(%struct.soc_enum* %223)
  br label %272

225:                                              ; preds = %207
  %226 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %227 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %228 = bitcast %struct.snd_soc_tplg_enum_control* %227 to %struct.snd_soc_tplg_ctl_hdr*
  %229 = call i32 @soc_tplg_init_kcontrol(%struct.soc_tplg* %226, %struct.snd_kcontrol_new* %10, %struct.snd_soc_tplg_ctl_hdr* %228)
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %225
  %233 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %234 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %237 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %239)
  %241 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %242 = call i32 @kfree(%struct.soc_enum* %241)
  br label %272

243:                                              ; preds = %225
  %244 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %245 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %246 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = call i32 @soc_tplg_add_kcontrol(%struct.soc_tplg* %244, %struct.snd_kcontrol_new* %10, i32* %248)
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %243
  %253 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %254 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %8, align 8
  %257 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %255, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %259)
  %261 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %262 = call i32 @kfree(%struct.soc_enum* %261)
  br label %272

263:                                              ; preds = %243
  %264 = load %struct.soc_enum*, %struct.soc_enum** %9, align 8
  %265 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %268 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %267, i32 0, i32 1
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = call i32 @list_add(i32* %266, i32* %270)
  br label %272

272:                                              ; preds = %263, %252, %232, %214, %191, %179, %161
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %11, align 4
  br label %28

275:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  br label %276

276:                                              ; preds = %275, %54, %46, %19
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local i64 @soc_tplg_check_elem_count(%struct.soc_tplg*, i32, i32, i64, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local %struct.soc_enum* @kzalloc(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local i32 @tplc_chan_get_reg(%struct.soc_tplg*, i32, i32) #1

declare dso_local i8* @tplc_chan_get_shift(%struct.soc_tplg*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @soc_tplg_denum_create_values(%struct.soc_enum*, %struct.snd_soc_tplg_enum_control*) #1

declare dso_local i32 @kfree(%struct.soc_enum*) #1

declare dso_local i32 @soc_tplg_denum_create_texts(%struct.soc_enum*, %struct.snd_soc_tplg_enum_control*) #1

declare dso_local i32 @soc_tplg_kcontrol_bind_io(%struct.TYPE_13__*, %struct.snd_kcontrol_new*, %struct.soc_tplg*) #1

declare dso_local i32 @soc_control_err(%struct.soc_tplg*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @soc_tplg_init_kcontrol(%struct.soc_tplg*, %struct.snd_kcontrol_new*, %struct.snd_soc_tplg_ctl_hdr*) #1

declare dso_local i32 @soc_tplg_add_kcontrol(%struct.soc_tplg*, %struct.snd_kcontrol_new*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
