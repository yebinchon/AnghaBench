; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.wm_adsp = type { i8*, i8*, i64, %struct.TYPE_3__*, i32, i32, i32, %struct.regmap* }
%struct.TYPE_3__ = type { i32 (%struct.wm_adsp*, i8*, i32, %struct.firmware*)*, i32 (%struct.wm_adsp_region*, i32)*, i32 (%struct.wm_adsp*, i32)* }
%struct.firmware = type { i32, i32* }
%struct.wm_adsp_region = type { i32 }
%struct.regmap = type { i32 }
%struct.wmfw_header = type { i32, i32, i32, i32* }
%struct.wmfw_adsp1_sizes = type { i32 }
%struct.wmfw_footer = type { i32 }
%struct.wmfw_region = type { i32, i32, i32, i32 }
%struct.wm_adsp_buf = type { i32 }

@buf_list = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s-%s-%s.wmfw\00", align 1
@wm_adsp_fw = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to request '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: file too short, %zu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"WMFW\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: invalid magic\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: unknown file format %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Firmware version: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: invalid core %d != %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: unexpected header length %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s: timestamp %llu\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Firmware name\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Algorithm\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Information\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Absolute\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"No region of type: %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"%s.%d: Unknown region type %x at %d(%x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%s.%d: %d bytes at %d in %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"%s.%d: %s region len %d bytes exceeds file length %zu\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"%s.%d: Failed to write %d bytes at %d in %s: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Failed to complete async write: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"%s.%d: %zu bytes at end of file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_adsp_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp_load(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmfw_header*, align 8
  %8 = alloca %struct.wmfw_adsp1_sizes*, align 8
  %9 = alloca %struct.wmfw_footer*, align 8
  %10 = alloca %struct.wmfw_region*, align 8
  %11 = alloca %struct.wm_adsp_region*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.wm_adsp_buf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %21 = load i32, i32* @buf_list, align 4
  %22 = call i32 @LIST_HEAD(i32 %21)
  %23 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %24 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %23, i32 0, i32 7
  %25 = load %struct.regmap*, %struct.regmap** %24, align 8
  store %struct.regmap* %25, %struct.regmap** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %14, align 8
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 %26, i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %441

34:                                               ; preds = %1
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %38 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %41 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm_adsp_fw, align 8
  %44 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %45 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %42, i8* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %58 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @request_firmware(%struct.firmware** %4, i8* %56, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %34
  %64 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  br label %437

67:                                               ; preds = %34
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %18, align 4
  store i32 32, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.firmware*, %struct.firmware** %4, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp uge i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.firmware*, %struct.firmware** %4, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %77, i32 %80)
  br label %429

82:                                               ; preds = %67
  %83 = load %struct.firmware*, %struct.firmware** %4, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = bitcast i32* %86 to i8*
  %88 = bitcast i8* %87 to %struct.wmfw_header*
  store %struct.wmfw_header* %88, %struct.wmfw_header** %7, align 8
  %89 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %90 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = call i64 @memcmp(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  br label %429

99:                                               ; preds = %82
  %100 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %101 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32 (%struct.wm_adsp*, i32)*, i32 (%struct.wm_adsp*, i32)** %103, align 8
  %105 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %106 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %107 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %104(%struct.wm_adsp* %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %99
  %112 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %115 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %113, i32 %116)
  br label %429

118:                                              ; preds = %99
  %119 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %120 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %121 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 (%struct.wm_adsp*, i8*, i8*, ...) @adsp_info(%struct.wm_adsp* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %124)
  %126 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %127 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %130 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %132 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %135 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %118
  %139 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %142 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %145 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %140, i32 %143, i32 %146)
  br label %429

148:                                              ; preds = %118
  store i32 24, i32* %6, align 4
  %149 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %150 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %149, i32 0, i32 3
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32 (%struct.wm_adsp*, i8*, i32, %struct.firmware*)*, i32 (%struct.wm_adsp*, i8*, i32, %struct.firmware*)** %152, align 8
  %154 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.firmware*, %struct.firmware** %4, align 8
  %158 = call i32 %153(%struct.wm_adsp* %154, i8* %155, i32 %156, %struct.firmware* %157)
  store i32 %158, i32* %6, align 4
  %159 = load %struct.firmware*, %struct.firmware** %4, align 8
  %160 = getelementptr inbounds %struct.firmware, %struct.firmware* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = bitcast i32* %164 to i8*
  %166 = bitcast i8* %165 to %struct.wmfw_footer*
  store %struct.wmfw_footer* %166, %struct.wmfw_footer** %9, align 8
  %167 = load i32, i32* %6, align 4
  %168 = zext i32 %167 to i64
  %169 = add i64 %168, 4
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %6, align 4
  %171 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %172 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @le32_to_cpu(i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %148
  %178 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %179 = load i8*, i8** %13, align 8
  %180 = load %struct.wmfw_header*, %struct.wmfw_header** %7, align 8
  %181 = getelementptr inbounds %struct.wmfw_header, %struct.wmfw_header* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @le32_to_cpu(i32 %182)
  %184 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %179, i32 %183)
  br label %429

185:                                              ; preds = %148
  %186 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = load %struct.wmfw_footer*, %struct.wmfw_footer** %9, align 8
  %189 = getelementptr inbounds %struct.wmfw_footer, %struct.wmfw_footer* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le64_to_cpu(i32 %190)
  %192 = call i32 (%struct.wm_adsp*, i8*, i8*, i32, ...) @adsp_dbg(%struct.wm_adsp* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %187, i32 %191)
  br label %193

193:                                              ; preds = %387, %185
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.firmware*, %struct.firmware** %4, align 8
  %196 = getelementptr inbounds %struct.firmware, %struct.firmware* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %193
  %200 = load %struct.firmware*, %struct.firmware** %4, align 8
  %201 = getelementptr inbounds %struct.firmware, %struct.firmware* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sub i32 %202, %203
  %205 = zext i32 %204 to i64
  %206 = icmp ult i64 16, %205
  br label %207

207:                                              ; preds = %199, %193
  %208 = phi i1 [ false, %193 ], [ %206, %199 ]
  br i1 %208, label %209, label %400

209:                                              ; preds = %207
  %210 = load %struct.firmware*, %struct.firmware** %4, align 8
  %211 = getelementptr inbounds %struct.firmware, %struct.firmware* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = bitcast i32* %215 to i8*
  %217 = bitcast i8* %216 to %struct.wmfw_region*
  store %struct.wmfw_region* %217, %struct.wmfw_region** %10, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %14, align 8
  %218 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %219 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le32_to_cpu(i32 %220)
  %222 = and i32 %221, 16777215
  store i32 %222, i32* %19, align 4
  %223 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %224 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @be32_to_cpu(i32 %225)
  %227 = and i32 %226, 255
  store i32 %227, i32* %20, align 4
  %228 = load i32, i32* %20, align 4
  switch i32 %228, label %276 [
    i32 128, label %229
    i32 133, label %237
    i32 129, label %245
    i32 139, label %253
    i32 137, label %255
    i32 138, label %255
    i32 135, label %255
    i32 134, label %255
    i32 136, label %255
    i32 132, label %255
    i32 131, label %255
    i32 130, label %255
  ]

229:                                              ; preds = %209
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  %230 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %231 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le32_to_cpu(i32 %232)
  %234 = add nsw i32 %233, 1
  %235 = load i32, i32* @GFP_KERNEL, align 4
  %236 = call i8* @kzalloc(i32 %234, i32 %235)
  store i8* %236, i8** %14, align 8
  br label %284

237:                                              ; preds = %209
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  %238 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %239 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %240 = call i32 @wm_adsp_parse_coeff(%struct.wm_adsp* %238, %struct.wmfw_region* %239)
  store i32 %240, i32* %18, align 4
  %241 = load i32, i32* %18, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  br label %429

244:                                              ; preds = %237
  br label %284

245:                                              ; preds = %209
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  %246 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %247 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @le32_to_cpu(i32 %248)
  %250 = add nsw i32 %249, 1
  %251 = load i32, i32* @GFP_KERNEL, align 4
  %252 = call i8* @kzalloc(i32 %250, i32 %251)
  store i8* %252, i8** %14, align 8
  br label %284

253:                                              ; preds = %209
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  %254 = load i32, i32* %19, align 4
  store i32 %254, i32* %16, align 4
  br label %284

255:                                              ; preds = %209, %209, %209, %209, %209, %209, %209, %209
  %256 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %257 = load i32, i32* %20, align 4
  %258 = call %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp* %256, i32 %257)
  store %struct.wm_adsp_region* %258, %struct.wm_adsp_region** %11, align 8
  %259 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %11, align 8
  %260 = icmp ne %struct.wm_adsp_region* %259, null
  br i1 %260, label %265, label %261

261:                                              ; preds = %255
  %262 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %263 = load i32, i32* %20, align 4
  %264 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %262, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %263)
  br label %429

265:                                              ; preds = %255
  %266 = load i32, i32* %20, align 4
  %267 = call i8* @wm_adsp_mem_region_name(i32 %266)
  store i8* %267, i8** %12, align 8
  %268 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %269 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %268, i32 0, i32 3
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  %272 = load i32 (%struct.wm_adsp_region*, i32)*, i32 (%struct.wm_adsp_region*, i32)** %271, align 8
  %273 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %11, align 8
  %274 = load i32, i32* %19, align 4
  %275 = call i32 %272(%struct.wm_adsp_region* %273, i32 %274)
  store i32 %275, i32* %16, align 4
  br label %284

276:                                              ; preds = %209
  %277 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %278 = load i8*, i8** %13, align 8
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* %20, align 4
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = call i32 (%struct.wm_adsp*, i8*, i8*, i32, i32, ...) @adsp_warn(%struct.wm_adsp* %277, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* %278, i32 %279, i32 %280, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %276, %265, %253, %245, %244, %229
  %285 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %286 = load i8*, i8** %13, align 8
  %287 = load i32, i32* %17, align 4
  %288 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %289 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @le32_to_cpu(i32 %290)
  %292 = load i32, i32* %19, align 4
  %293 = load i8*, i8** %12, align 8
  %294 = call i32 (%struct.wm_adsp*, i8*, i8*, i32, ...) @adsp_dbg(%struct.wm_adsp* %285, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %286, i32 %287, i32 %291, i32 %292, i8* %293)
  %295 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %296 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @le32_to_cpu(i32 %297)
  %299 = sext i32 %298 to i64
  %300 = load %struct.firmware*, %struct.firmware** %4, align 8
  %301 = getelementptr inbounds %struct.firmware, %struct.firmware* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sub i32 %302, %303
  %305 = zext i32 %304 to i64
  %306 = sub i64 %305, 16
  %307 = icmp ugt i64 %299, %306
  br i1 %307, label %308, label %323

308:                                              ; preds = %284
  %309 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %310 = load i8*, i8** %13, align 8
  %311 = load i32, i32* %17, align 4
  %312 = load i8*, i8** %12, align 8
  %313 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %314 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @le32_to_cpu(i32 %315)
  %317 = load %struct.firmware*, %struct.firmware** %4, align 8
  %318 = getelementptr inbounds %struct.firmware, %struct.firmware* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %309, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i8* %310, i32 %311, i8* %312, i32 %316, i32 %319)
  %321 = load i32, i32* @EINVAL, align 4
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %18, align 4
  br label %429

323:                                              ; preds = %284
  %324 = load i8*, i8** %14, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %342

326:                                              ; preds = %323
  %327 = load i8*, i8** %14, align 8
  %328 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %329 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %332 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @le32_to_cpu(i32 %333)
  %335 = call i32 @memcpy(i8* %327, i32 %330, i32 %334)
  %336 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %337 = load i8*, i8** %13, align 8
  %338 = load i8*, i8** %14, align 8
  %339 = call i32 (%struct.wm_adsp*, i8*, i8*, ...) @adsp_info(%struct.wm_adsp* %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* %337, i8* %338)
  %340 = load i8*, i8** %14, align 8
  %341 = call i32 @kfree(i8* %340)
  store i8* null, i8** %14, align 8
  br label %342

342:                                              ; preds = %326, %323
  %343 = load i32, i32* %16, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %387

345:                                              ; preds = %342
  %346 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %347 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %350 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @le32_to_cpu(i32 %351)
  %353 = call %struct.wm_adsp_buf* @wm_adsp_buf_alloc(i32 %348, i32 %352, i32* @buf_list)
  store %struct.wm_adsp_buf* %353, %struct.wm_adsp_buf** %15, align 8
  %354 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %15, align 8
  %355 = icmp ne %struct.wm_adsp_buf* %354, null
  br i1 %355, label %361, label %356

356:                                              ; preds = %345
  %357 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %358 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %357, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %359 = load i32, i32* @ENOMEM, align 4
  %360 = sub nsw i32 0, %359
  store i32 %360, i32* %18, align 4
  br label %429

361:                                              ; preds = %345
  %362 = load %struct.regmap*, %struct.regmap** %5, align 8
  %363 = load i32, i32* %16, align 4
  %364 = load %struct.wm_adsp_buf*, %struct.wm_adsp_buf** %15, align 8
  %365 = getelementptr inbounds %struct.wm_adsp_buf, %struct.wm_adsp_buf* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %368 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @le32_to_cpu(i32 %369)
  %371 = call i32 @regmap_raw_write_async(%struct.regmap* %362, i32 %363, i32 %366, i32 %370)
  store i32 %371, i32* %18, align 4
  %372 = load i32, i32* %18, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %386

374:                                              ; preds = %361
  %375 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %376 = load i8*, i8** %13, align 8
  %377 = load i32, i32* %17, align 4
  %378 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %379 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @le32_to_cpu(i32 %380)
  %382 = load i32, i32* %19, align 4
  %383 = load i8*, i8** %12, align 8
  %384 = load i32, i32* %18, align 4
  %385 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %375, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0), i8* %376, i32 %377, i32 %381, i32 %382, i8* %383, i32 %384)
  br label %429

386:                                              ; preds = %361
  br label %387

387:                                              ; preds = %386, %342
  %388 = load %struct.wmfw_region*, %struct.wmfw_region** %10, align 8
  %389 = getelementptr inbounds %struct.wmfw_region, %struct.wmfw_region* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @le32_to_cpu(i32 %390)
  %392 = sext i32 %391 to i64
  %393 = add i64 %392, 16
  %394 = load i32, i32* %6, align 4
  %395 = zext i32 %394 to i64
  %396 = add i64 %395, %393
  %397 = trunc i64 %396 to i32
  store i32 %397, i32* %6, align 4
  %398 = load i32, i32* %17, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %17, align 4
  br label %193

400:                                              ; preds = %207
  %401 = load %struct.regmap*, %struct.regmap** %5, align 8
  %402 = call i32 @regmap_async_complete(%struct.regmap* %401)
  store i32 %402, i32* %18, align 4
  %403 = load i32, i32* %18, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %400
  %406 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %407 = load i32, i32* %18, align 4
  %408 = call i32 (%struct.wm_adsp*, i8*, ...) @adsp_err(%struct.wm_adsp* %406, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i32 %407)
  br label %429

409:                                              ; preds = %400
  %410 = load i32, i32* %6, align 4
  %411 = load %struct.firmware*, %struct.firmware** %4, align 8
  %412 = getelementptr inbounds %struct.firmware, %struct.firmware* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp ugt i32 %410, %413
  br i1 %414, label %415, label %425

415:                                              ; preds = %409
  %416 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %417 = load i8*, i8** %13, align 8
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* %6, align 4
  %420 = load %struct.firmware*, %struct.firmware** %4, align 8
  %421 = getelementptr inbounds %struct.firmware, %struct.firmware* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = sub i32 %419, %422
  %424 = call i32 (%struct.wm_adsp*, i8*, i8*, i32, i32, ...) @adsp_warn(%struct.wm_adsp* %416, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* %417, i32 %418, i32 %423)
  br label %425

425:                                              ; preds = %415, %409
  %426 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %427 = load i8*, i8** %13, align 8
  %428 = call i32 @wm_adsp_debugfs_save_wmfwname(%struct.wm_adsp* %426, i8* %427)
  br label %429

429:                                              ; preds = %425, %405, %374, %356, %308, %261, %243, %177, %138, %111, %95, %75
  %430 = load %struct.regmap*, %struct.regmap** %5, align 8
  %431 = call i32 @regmap_async_complete(%struct.regmap* %430)
  %432 = call i32 @wm_adsp_buf_free(i32* @buf_list)
  %433 = load %struct.firmware*, %struct.firmware** %4, align 8
  %434 = call i32 @release_firmware(%struct.firmware* %433)
  %435 = load i8*, i8** %14, align 8
  %436 = call i32 @kfree(i8* %435)
  br label %437

437:                                              ; preds = %429, %63
  %438 = load i8*, i8** %13, align 8
  %439 = call i32 @kfree(i8* %438)
  %440 = load i32, i32* %18, align 4
  store i32 %440, i32* %2, align 4
  br label %441

441:                                              ; preds = %437, %31
  %442 = load i32, i32* %2, align 4
  ret i32 %442
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @adsp_info(%struct.wm_adsp*, i8*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*, i8*, i32, ...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wm_adsp_parse_coeff(%struct.wm_adsp*, %struct.wmfw_region*) #1

declare dso_local %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp*, i32) #1

declare dso_local i8* @wm_adsp_mem_region_name(i32) #1

declare dso_local i32 @adsp_warn(%struct.wm_adsp*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.wm_adsp_buf* @wm_adsp_buf_alloc(i32, i32, i32*) #1

declare dso_local i32 @regmap_raw_write_async(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_async_complete(%struct.regmap*) #1

declare dso_local i32 @wm_adsp_debugfs_save_wmfwname(%struct.wm_adsp*, i8*) #1

declare dso_local i32 @wm_adsp_buf_free(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
