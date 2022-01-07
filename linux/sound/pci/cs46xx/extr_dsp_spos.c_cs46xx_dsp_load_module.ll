; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_load_module.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_5__*, %struct.dsp_spos_instance* }
%struct.TYPE_5__ = type { i32 }
%struct.dsp_spos_instance = type { i32, %struct.dsp_module_desc*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dsp_module_desc = type { i64, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dsp_segment_desc = type { i64, i32, i32 }

@SEGTYPE_SP_PROGRAM = common dso_local global i32 0, align 4
@DSP_MAX_MODULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dsp_spos: to many modules loaded into DSP\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dsp_spos: loading module %s into DSP\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"dsp_spos: clearing parameter area\0A\00", align 1
@DSP_PARAMETER_BYTE_OFFSET = common dso_local global i32 0, align 4
@DSP_PARAMETER_BYTE_SIZE = common dso_local global i64 0, align 8
@SEGTYPE_SP_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"dsp_spos: clearing sample area\0A\00", align 1
@DSP_SAMPLE_BYTE_OFFSET = common dso_local global i32 0, align 4
@DSP_SAMPLE_BYTE_SIZE = common dso_local global i64 0, align 8
@SEGTYPE_SP_SAMPLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"dsp_spos: clearing code area\0A\00", align 1
@DSP_CODE_BYTE_OFFSET = common dso_local global i32 0, align 4
@DSP_CODE_BYTE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"dsp_spos: module got no code segment\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"dsp_spos: no space available in DSP\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"dsp_spos: failed to load symbol table\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"dsp_spos: downloading code to chip (%08x-%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"dsp_spos: failed to download code to DSP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_load_module(%struct.snd_cs46xx* %0, %struct.dsp_module_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_module_desc*, align 8
  %6 = alloca %struct.dsp_spos_instance*, align 8
  %7 = alloca %struct.dsp_segment_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_module_desc* %1, %struct.dsp_module_desc** %5, align 8
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %12 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %11, i32 0, i32 1
  %13 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  store %struct.dsp_spos_instance* %13, %struct.dsp_spos_instance** %6, align 8
  %14 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %15 = load i32, i32* @SEGTYPE_SP_PROGRAM, align 4
  %16 = call %struct.dsp_segment_desc* @get_segment_desc(%struct.dsp_module_desc* %14, i32 %15)
  store %struct.dsp_segment_desc* %16, %struct.dsp_segment_desc** %7, align 8
  %17 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %18 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DSP_MAX_MODULES, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %25 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %267

32:                                               ; preds = %2
  %33 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %34 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %39 = getelementptr inbounds %struct.dsp_module_desc, %struct.dsp_module_desc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %43 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %32
  %47 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %48 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %54 = load i32, i32* @DSP_PARAMETER_BYTE_OFFSET, align 4
  %55 = load i64, i64* @DSP_PARAMETER_BYTE_SIZE, align 8
  %56 = call i32 @snd_cs46xx_clear_BA1(%struct.snd_cs46xx* %53, i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %46, %32
  %58 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %59 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %60 = load i32, i32* @SEGTYPE_SP_PARAMETER, align 4
  %61 = call %struct.dsp_segment_desc* @get_segment_desc(%struct.dsp_module_desc* %59, i32 %60)
  %62 = call i32 @dsp_load_parameter(%struct.snd_cs46xx* %58, %struct.dsp_segment_desc* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %267

67:                                               ; preds = %57
  %68 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %69 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %74 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %80 = load i32, i32* @DSP_SAMPLE_BYTE_OFFSET, align 4
  %81 = load i64, i64* @DSP_SAMPLE_BYTE_SIZE, align 8
  %82 = call i32 @snd_cs46xx_clear_BA1(%struct.snd_cs46xx* %79, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %72, %67
  %84 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %85 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %86 = load i32, i32* @SEGTYPE_SP_SAMPLE, align 4
  %87 = call %struct.dsp_segment_desc* @get_segment_desc(%struct.dsp_module_desc* %85, i32 %86)
  %88 = call i32 @dsp_load_sample(%struct.snd_cs46xx* %84, %struct.dsp_segment_desc* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %267

93:                                               ; preds = %83
  %94 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %95 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %100 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %106 = load i32, i32* @DSP_CODE_BYTE_OFFSET, align 4
  %107 = load i64, i64* @DSP_CODE_BYTE_SIZE, align 8
  %108 = call i32 @snd_cs46xx_clear_BA1(%struct.snd_cs46xx* %105, i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %98, %93
  %110 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %7, align 8
  %111 = icmp eq %struct.dsp_segment_desc* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %114 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @dev_dbg(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %251

119:                                              ; preds = %109
  %120 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %121 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %7, align 8
  %125 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load i64, i64* @DSP_CODE_BYTE_SIZE, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %119
  %131 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %132 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %267

139:                                              ; preds = %119
  %140 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %141 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %145 = getelementptr inbounds %struct.dsp_module_desc, %struct.dsp_module_desc* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %147 = getelementptr inbounds %struct.dsp_module_desc, %struct.dsp_module_desc* %146, i32 0, i32 1
  store i32 0, i32* %147, align 8
  %148 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %149 = getelementptr inbounds %struct.dsp_module_desc, %struct.dsp_module_desc* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @snd_BUG_ON(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %139
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %3, align 4
  br label %267

160:                                              ; preds = %139
  %161 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %162 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %163 = call i64 @add_symbols(%struct.snd_cs46xx* %161, %struct.dsp_module_desc* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %167 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %267

174:                                              ; preds = %160
  %175 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %7, align 8
  %176 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %181 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = mul nsw i64 %183, 4
  %185 = add nsw i64 %179, %184
  %186 = load i32, i32* @DSP_CODE_BYTE_OFFSET, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %8, align 4
  %190 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %7, align 8
  %191 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = mul nsw i64 %192, 4
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %9, align 4
  %195 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %196 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %195, i32 0, i32 0
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i32 (i32, i8*, ...) @dev_dbg(i32 %199, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %200, i32 %203)
  %205 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %206 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %7, align 8
  %207 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %7, align 8
  %210 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %214 = getelementptr inbounds %struct.dsp_module_desc, %struct.dsp_module_desc* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @shadow_and_reallocate_code(%struct.snd_cs46xx* %205, i32 %208, i32 %212, i32 %215)
  %217 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %218 = getelementptr inbounds %struct.dsp_module_desc, %struct.dsp_module_desc* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  %219 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %220 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %221 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %225 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %223, %227
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i64 @snd_cs46xx_download(%struct.snd_cs46xx* %219, i64 %228, i32 %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %174
  %234 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %235 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %234, i32 0, i32 0
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @dev_err(i32 %238, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %3, align 4
  br label %267

242:                                              ; preds = %174
  %243 = load %struct.dsp_segment_desc*, %struct.dsp_segment_desc** %7, align 8
  %244 = getelementptr inbounds %struct.dsp_segment_desc, %struct.dsp_segment_desc* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %247 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %249, %245
  store i64 %250, i64* %248, align 8
  br label %251

251:                                              ; preds = %242, %112
  %252 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %253 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %252, i32 0, i32 1
  %254 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %253, align 8
  %255 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %256 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.dsp_module_desc, %struct.dsp_module_desc* %254, i64 %258
  %260 = load %struct.dsp_module_desc*, %struct.dsp_module_desc** %5, align 8
  %261 = bitcast %struct.dsp_module_desc* %259 to i8*
  %262 = bitcast %struct.dsp_module_desc* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 24, i1 false)
  %263 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  %264 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 8
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %251, %233, %165, %157, %130, %91, %65, %23
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local %struct.dsp_segment_desc* @get_segment_desc(%struct.dsp_module_desc*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_cs46xx_clear_BA1(%struct.snd_cs46xx*, i32, i64) #1

declare dso_local i32 @dsp_load_parameter(%struct.snd_cs46xx*, %struct.dsp_segment_desc*) #1

declare dso_local i32 @dsp_load_sample(%struct.snd_cs46xx*, %struct.dsp_segment_desc*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @add_symbols(%struct.snd_cs46xx*, %struct.dsp_module_desc*) #1

declare dso_local i32 @shadow_and_reallocate_code(%struct.snd_cs46xx*, i32, i32, i32) #1

declare dso_local i64 @snd_cs46xx_download(%struct.snd_cs46xx*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
