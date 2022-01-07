; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mixer_oss.c_snd_mixer_oss_build_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer_oss = type { i32, %struct.snd_mixer_oss_slot*, %struct.TYPE_6__* }
%struct.snd_mixer_oss_slot = type { i32, i32, %struct.slot*, i32, i32, i32, i64 }
%struct.slot = type { i32, i32, i32, i32, %struct.snd_mixer_oss_assign_table*, i32, %struct.slot* }
%struct.TYPE_6__ = type { i32 }
%struct.snd_mixer_oss_assign_table = type { i64, i64, i8* }
%struct.snd_kcontrol = type { i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* }
%struct.snd_ctl_elem_info = type opaque
%struct.snd_ctl_elem_info.0 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Capture Source\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Master Mono\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Mix Mono\00", align 1
@SNDRV_MIXER_OSS_PRESENT_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_SIGNATURE = common dso_local global i32 0, align 4
@snd_mixer_oss_get_volume1 = common dso_local global i64 0, align 8
@snd_mixer_oss_put_volume1 = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_PRESENT_CSWITCH = common dso_local global i32 0, align 4
@snd_mixer_oss_get_recsrc1_sw = common dso_local global i32 0, align 4
@snd_mixer_oss_put_recsrc1_sw = common dso_local global i32 0, align 4
@SNDRV_MIXER_OSS_PRESENT_CROUTE = common dso_local global i32 0, align 4
@snd_mixer_oss_get_recsrc1_route = common dso_local global i32 0, align 4
@snd_mixer_oss_put_recsrc1_route = common dso_local global i32 0, align 4
@snd_mixer_oss_slot_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer_oss*, %struct.snd_mixer_oss_assign_table*, i32, i32)* @snd_mixer_oss_build_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_mixer_oss_build_input(%struct.snd_mixer_oss* %0, %struct.snd_mixer_oss_assign_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer_oss*, align 8
  %7 = alloca %struct.snd_mixer_oss_assign_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.slot, align 8
  %11 = alloca %struct.slot*, align 8
  %12 = alloca %struct.snd_kcontrol*, align 8
  %13 = alloca %struct.snd_mixer_oss_slot*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca %struct.snd_ctl_elem_info.0*, align 8
  store %struct.snd_mixer_oss* %0, %struct.snd_mixer_oss** %6, align 8
  store %struct.snd_mixer_oss_assign_table* %1, %struct.snd_mixer_oss_assign_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %17 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %16, i32 0, i32 1
  %18 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %17, align 8
  %19 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %20 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %18, i64 %21
  %23 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %280

30:                                               ; preds = %26, %4
  %31 = call i32 @memset(%struct.slot* %10, i32 0, i32 40)
  %32 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 6
  %33 = load %struct.slot*, %struct.slot** %32, align 8
  %34 = call i32 @memset(%struct.slot* %33, i32 255, i32 8)
  %35 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %36 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %37 = call i64 @snd_mixer_oss_build_test_all(%struct.snd_mixer_oss* %35, %struct.snd_mixer_oss_assign_table* %36, %struct.slot* %10)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %280

40:                                               ; preds = %30
  %41 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %42 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @down_read(i32* %44)
  %46 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %47 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %177

50:                                               ; preds = %40
  %51 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %52 = call %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.snd_kcontrol* %52, %struct.snd_kcontrol** %12, align 8
  %53 = icmp ne %struct.snd_kcontrol* %52, null
  br i1 %53, label %54, label %177

54:                                               ; preds = %50
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.snd_ctl_elem_info.0* @kzalloc(i32 24, i32 %55)
  store %struct.snd_ctl_elem_info.0* %56, %struct.snd_ctl_elem_info.0** %15, align 8
  %57 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %58 = icmp ne %struct.snd_ctl_elem_info.0* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %61 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %280

67:                                               ; preds = %54
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %69 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %68, i32 0, i32 0
  %70 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)** %69, align 8
  %71 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %72 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %73 = bitcast %struct.snd_ctl_elem_info.0* %72 to %struct.snd_ctl_elem_info*
  %74 = call i64 %70(%struct.snd_kcontrol* %71, %struct.snd_ctl_elem_info* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %78 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @up_read(i32* %80)
  %82 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %83 = call i32 @kfree(%struct.snd_ctl_elem_info.0* %82)
  store i32 0, i32* %5, align 4
  br label %280

84:                                               ; preds = %67
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %86 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %87 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcpy(i8* %85, i8* %88)
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %95 = call i32 @strcpy(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %84
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %102 = call i32 @strcpy(i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %96
  %104 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %106 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %111 = call i32 @strcmp(i8* %109, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %115 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %174

118:                                              ; preds = %103
  %119 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %169, %118
  %121 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %125 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %123, %128
  br i1 %129, label %130, label %173

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %135 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i64 %133, i64* %137, align 8
  %138 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %139 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %138, i32 0, i32 0
  %140 = load i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)*, i64 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)** %139, align 8
  %141 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %142 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %143 = bitcast %struct.snd_ctl_elem_info.0* %142 to %struct.snd_ctl_elem_info*
  %144 = call i64 %140(%struct.snd_kcontrol* %141, %struct.snd_ctl_elem_info* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %130
  %147 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %148 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %147, i32 0, i32 2
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = call i32 @up_read(i32* %150)
  %152 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %153 = call i32 @kfree(%struct.snd_ctl_elem_info.0* %152)
  store i32 0, i32* %5, align 4
  br label %280

154:                                              ; preds = %130
  %155 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %156 = getelementptr inbounds %struct.snd_ctl_elem_info.0, %struct.snd_ctl_elem_info.0* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %161 = call i32 @strcmp(i8* %159, i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %154
  %164 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %165 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %164
  store i32 %167, i32* %165, align 4
  br label %173

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  br label %120

173:                                              ; preds = %163, %120
  br label %174

174:                                              ; preds = %173, %113
  %175 = load %struct.snd_ctl_elem_info.0*, %struct.snd_ctl_elem_info.0** %15, align 8
  %176 = call i32 @kfree(%struct.snd_ctl_elem_info.0* %175)
  br label %177

177:                                              ; preds = %174, %50, %40
  %178 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %179 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %178, i32 0, i32 2
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = call i32 @up_read(i32* %181)
  %183 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %279

186:                                              ; preds = %177
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call %struct.slot* @kmalloc(i32 40, i32 %187)
  store %struct.slot* %188, %struct.slot** %11, align 8
  %189 = load %struct.slot*, %struct.slot** %11, align 8
  %190 = icmp ne %struct.slot* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %5, align 4
  br label %280

194:                                              ; preds = %186
  %195 = load %struct.slot*, %struct.slot** %11, align 8
  %196 = bitcast %struct.slot* %195 to i8*
  %197 = bitcast %struct.slot* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 40, i1 false)
  %198 = load i32, i32* @SNDRV_MIXER_OSS_SIGNATURE, align 4
  %199 = load %struct.slot*, %struct.slot** %11, align 8
  %200 = getelementptr inbounds %struct.slot, %struct.slot* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  %201 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %202 = load %struct.slot*, %struct.slot** %11, align 8
  %203 = getelementptr inbounds %struct.slot, %struct.slot* %202, i32 0, i32 4
  store %struct.snd_mixer_oss_assign_table* %201, %struct.snd_mixer_oss_assign_table** %203, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.slot*, %struct.slot** %11, align 8
  %206 = getelementptr inbounds %struct.slot, %struct.slot* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %208 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %207, i32 0, i32 1
  %209 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %208, align 8
  %210 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %211 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %209, i64 %212
  store %struct.snd_mixer_oss_slot* %213, %struct.snd_mixer_oss_slot** %13, align 8
  %214 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %215 = call i32 @mixer_slot_clear(%struct.snd_mixer_oss_slot* %214)
  %216 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 1
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 1, i32 0
  %221 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %222 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load i64, i64* @snd_mixer_oss_get_volume1, align 8
  %224 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %225 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %224, i32 0, i32 6
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* @snd_mixer_oss_put_volume1, align 4
  %227 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %228 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  %229 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CSWITCH, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %194
  %235 = load i32, i32* @snd_mixer_oss_get_recsrc1_sw, align 4
  %236 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %237 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @snd_mixer_oss_put_recsrc1_sw, align 4
  %239 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %240 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  br label %272

241:                                              ; preds = %194
  %242 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CROUTE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %241
  %248 = load i32, i32* @snd_mixer_oss_get_recsrc1_route, align 4
  %249 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %250 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* @snd_mixer_oss_put_recsrc1_route, align 4
  %252 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %253 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 8
  br label %271

254:                                              ; preds = %241
  %255 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @SNDRV_MIXER_OSS_PRESENT_CAPTURE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %254
  %261 = load %struct.snd_mixer_oss_assign_table*, %struct.snd_mixer_oss_assign_table** %7, align 8
  %262 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, %struct.snd_mixer_oss_assign_table* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = shl i32 1, %264
  %266 = load %struct.snd_mixer_oss*, %struct.snd_mixer_oss** %6, align 8
  %267 = getelementptr inbounds %struct.snd_mixer_oss, %struct.snd_mixer_oss* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %270

270:                                              ; preds = %260, %254
  br label %271

271:                                              ; preds = %270, %247
  br label %272

272:                                              ; preds = %271, %234
  %273 = load %struct.slot*, %struct.slot** %11, align 8
  %274 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %275 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %274, i32 0, i32 2
  store %struct.slot* %273, %struct.slot** %275, align 8
  %276 = load i32, i32* @snd_mixer_oss_slot_free, align 4
  %277 = load %struct.snd_mixer_oss_slot*, %struct.snd_mixer_oss_slot** %13, align 8
  %278 = getelementptr inbounds %struct.snd_mixer_oss_slot, %struct.snd_mixer_oss_slot* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  store i32 1, i32* %5, align 4
  br label %280

279:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %280

280:                                              ; preds = %279, %272, %191, %146, %76, %59, %39, %29
  %281 = load i32, i32* %5, align 4
  ret i32 %281
}

declare dso_local i32 @memset(%struct.slot*, i32, i32) #1

declare dso_local i64 @snd_mixer_oss_build_test_all(%struct.snd_mixer_oss*, %struct.snd_mixer_oss_assign_table*, %struct.slot*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_mixer_oss_test_id(%struct.snd_mixer_oss*, i8*, i32) #1

declare dso_local %struct.snd_ctl_elem_info.0* @kzalloc(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_info.0*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.slot* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mixer_slot_clear(%struct.snd_mixer_oss_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
