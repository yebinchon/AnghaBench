; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_dt_from_blob.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_dt_from_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i32 }
%struct.fdt_header = type { i8, i8, i8, i8, i8, i8, i8, i8*, i8* }
%struct.inbuf = type { i32 }
%struct.reserve_info = type { i32 }
%struct.node = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Error reading DT blob magic number: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"EOF reading DT blob magic number\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Mysterious short read reading magic number\0A\00", align 1
@FDT_MAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Blob has incorrect magic number\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error reading DT blob size: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"EOF reading DT blob size\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Mysterious short read reading blob size\0A\00", align 1
@FDT_V1_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"DT blob size (%d) is too small\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"EOF before reading %d bytes of DT blob\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error reading DT blob: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Mem Reserve structure offset exceeds total size\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"DT structure offset exceeds total size\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"String table offset exceeds total size\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"String table extends past total size\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Structure block extends past total size\0A\00", align 1
@FTF_FULLPATH = common dso_local global i32 0, align 4
@FTF_NAMEPROPS = common dso_local global i32 0, align 4
@FTF_VARALIGN = common dso_local global i32 0, align 4
@FTF_NOPS = common dso_local global i32 0, align 4
@FDT_BEGIN_NODE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [73 x i8] c"Device tree blob doesn't begin with FDT_BEGIN_NODE (begins with 0x%08x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FDT_END = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [43 x i8] c"Device tree blob doesn't end with FDT_END\0A\00", align 1
@DTSF_V1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dt_info* @dt_from_blob(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.fdt_header*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.inbuf, align 4
  %19 = alloca %struct.inbuf, align 4
  %20 = alloca %struct.inbuf, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.reserve_info*, align 8
  %23 = alloca %struct.node*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %25, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32* @srcfile_relative_open(i8* %27, i32* null)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fread(i8* %4, i32 1, i32 1, i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @ferror(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @feof(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %49

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i8, i8* %4, align 1
  %52 = call i64 @fdt32_to_cpu(i8 signext %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @FDT_MAGIC, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @fread(i8* %5, i32 1, i32 1, i32* %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @ferror(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32*, i32** %3, align 8
  %73 = call i64 @feof(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %79

77:                                               ; preds = %71
  %78 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %68
  %81 = load i8, i8* %5, align 1
  %82 = call i64 @fdt32_to_cpu(i8 signext %81)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @FDT_V1_SIZE, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, i64* %7, align 8
  %88 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i64, i64* %7, align 8
  %91 = call i8* @xmalloc(i64 %90)
  store i8* %91, i8** %15, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = bitcast i8* %92 to %struct.fdt_header*
  store %struct.fdt_header* %93, %struct.fdt_header** %16, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i8* @cpu_to_fdt32(i64 %94)
  %96 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %97 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %96, i32 0, i32 8
  store i8* %95, i8** %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i8* @cpu_to_fdt32(i64 %98)
  %100 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %101 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub i64 %102, 8
  %104 = sub i64 %103, 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %21, align 4
  %106 = load i8*, i8** %15, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  %108 = getelementptr inbounds i8, i8* %107, i64 8
  store i8* %108, i8** %17, align 8
  br label %109

109:                                              ; preds = %131, %89
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  %113 = load i32*, i32** %3, align 8
  %114 = call i64 @feof(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i64, i64* %7, align 8
  %118 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %117)
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i8*, i8** %17, align 8
  %121 = load i32, i32* %21, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @fread(i8* %120, i32 1, i32 %121, i32* %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = call i64 @ferror(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i32, i32* @errno, align 4
  %129 = call i32 @strerror(i32 %128)
  %130 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %119
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %21, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i8*, i8** %17, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %17, align 8
  br label %109

139:                                              ; preds = %109
  %140 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %141 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %140, i32 0, i32 0
  %142 = load i8, i8* %141, align 8
  %143 = call i64 @fdt32_to_cpu(i8 signext %142)
  store i64 %143, i64* %11, align 8
  %144 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %145 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %144, i32 0, i32 1
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @fdt32_to_cpu(i8 signext %146)
  store i64 %147, i64* %12, align 8
  %148 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %149 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %148, i32 0, i32 2
  %150 = load i8, i8* %149, align 2
  %151 = call i64 @fdt32_to_cpu(i8 signext %150)
  store i64 %151, i64* %13, align 8
  %152 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %153 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %152, i32 0, i32 3
  %154 = load i8, i8* %153, align 1
  %155 = call i64 @fdt32_to_cpu(i8 signext %154)
  store i64 %155, i64* %8, align 8
  %156 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %157 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %156, i32 0, i32 4
  %158 = load i8, i8* %157, align 4
  %159 = call i64 @fdt32_to_cpu(i8 signext %158)
  store i64 %159, i64* %10, align 8
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %7, align 8
  %162 = icmp sge i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %139
  %164 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %139
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %7, align 8
  %168 = icmp sge i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %165
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %7, align 8
  %174 = icmp sgt i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %171
  %178 = load i64, i64* %8, align 8
  %179 = icmp sge i64 %178, 3
  br i1 %179, label %180, label %208

180:                                              ; preds = %177
  %181 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %182 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %181, i32 0, i32 5
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @fdt32_to_cpu(i8 signext %183)
  store i64 %184, i64* %26, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* %26, align 8
  %187 = add nsw i64 %185, %186
  %188 = load i64, i64* %12, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %180
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* %26, align 8
  %193 = add nsw i64 %191, %192
  %194 = load i64, i64* %7, align 8
  %195 = icmp sgt i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %190, %180
  %197 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %190
  %199 = load i8*, i8** %15, align 8
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  %202 = load i8*, i8** %15, align 8
  %203 = load i64, i64* %12, align 8
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  %205 = load i64, i64* %26, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  %207 = call i32 @inbuf_init(%struct.inbuf* %19, i8* %201, i8* %206)
  br label %216

208:                                              ; preds = %177
  %209 = load i8*, i8** %15, align 8
  %210 = load i64, i64* %12, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  %212 = load i8*, i8** %15, align 8
  %213 = load i64, i64* %7, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = call i32 @inbuf_init(%struct.inbuf* %19, i8* %211, i8* %214)
  br label %216

216:                                              ; preds = %208, %198
  %217 = load i64, i64* %8, align 8
  %218 = icmp sge i64 %217, 17
  br i1 %218, label %219, label %238

219:                                              ; preds = %216
  %220 = load %struct.fdt_header*, %struct.fdt_header** %16, align 8
  %221 = getelementptr inbounds %struct.fdt_header, %struct.fdt_header* %220, i32 0, i32 6
  %222 = load i8, i8* %221, align 2
  %223 = call i64 @fdt32_to_cpu(i8 signext %222)
  store i64 %223, i64* %9, align 8
  %224 = load i64, i64* %11, align 8
  %225 = load i64, i64* %9, align 8
  %226 = add nsw i64 %224, %225
  %227 = load i64, i64* %11, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %235, label %229

229:                                              ; preds = %219
  %230 = load i64, i64* %11, align 8
  %231 = load i64, i64* %9, align 8
  %232 = add nsw i64 %230, %231
  %233 = load i64, i64* %7, align 8
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %229, %219
  %236 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %229
  br label %238

238:                                              ; preds = %237, %216
  %239 = load i64, i64* %8, align 8
  %240 = icmp slt i64 %239, 16
  br i1 %240, label %241, label %249

241:                                              ; preds = %238
  %242 = load i32, i32* @FTF_FULLPATH, align 4
  %243 = load i32, i32* @FTF_NAMEPROPS, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @FTF_VARALIGN, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* %25, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %25, align 4
  br label %253

249:                                              ; preds = %238
  %250 = load i32, i32* @FTF_NOPS, align 4
  %251 = load i32, i32* %25, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %25, align 4
  br label %253

253:                                              ; preds = %249, %241
  %254 = load i8*, i8** %15, align 8
  %255 = load i64, i64* %13, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  %257 = load i8*, i8** %15, align 8
  %258 = load i64, i64* %7, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  %260 = call i32 @inbuf_init(%struct.inbuf* %20, i8* %256, i8* %259)
  %261 = load i8*, i8** %15, align 8
  %262 = load i64, i64* %11, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  %264 = load i8*, i8** %15, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  %267 = call i32 @inbuf_init(%struct.inbuf* %18, i8* %263, i8* %266)
  %268 = call %struct.reserve_info* @flat_read_mem_reserve(%struct.inbuf* %20)
  store %struct.reserve_info* %268, %struct.reserve_info** %22, align 8
  %269 = call i64 @flat_read_word(%struct.inbuf* %18)
  store i64 %269, i64* %24, align 8
  %270 = load i64, i64* %24, align 8
  %271 = load i64, i64* @FDT_BEGIN_NODE, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %253
  %274 = load i64, i64* %24, align 8
  %275 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i64 0, i64 0), i64 %274)
  br label %276

276:                                              ; preds = %273, %253
  %277 = load i32, i32* %25, align 4
  %278 = call %struct.node* @unflatten_tree(%struct.inbuf* %18, %struct.inbuf* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), i32 %277)
  store %struct.node* %278, %struct.node** %23, align 8
  %279 = call i64 @flat_read_word(%struct.inbuf* %18)
  store i64 %279, i64* %24, align 8
  %280 = load i64, i64* %24, align 8
  %281 = load i64, i64* @FDT_END, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %276
  %284 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  br label %285

285:                                              ; preds = %283, %276
  %286 = load i8*, i8** %15, align 8
  %287 = call i32 @free(i8* %286)
  %288 = load i32*, i32** %3, align 8
  %289 = call i32 @fclose(i32* %288)
  %290 = load i32, i32* @DTSF_V1, align 4
  %291 = load %struct.reserve_info*, %struct.reserve_info** %22, align 8
  %292 = load %struct.node*, %struct.node** %23, align 8
  %293 = load i64, i64* %10, align 8
  %294 = call %struct.dt_info* @build_dt_info(i32 %290, %struct.reserve_info* %291, %struct.node* %292, i64 %293)
  ret %struct.dt_info* %294
}

declare dso_local i32* @srcfile_relative_open(i8*, i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i64 @fdt32_to_cpu(i8 signext) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i8* @cpu_to_fdt32(i64) #1

declare dso_local i32 @inbuf_init(%struct.inbuf*, i8*, i8*) #1

declare dso_local %struct.reserve_info* @flat_read_mem_reserve(%struct.inbuf*) #1

declare dso_local i64 @flat_read_word(%struct.inbuf*) #1

declare dso_local %struct.node* @unflatten_tree(%struct.inbuf*, %struct.inbuf*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local %struct.dt_info* @build_dt_info(i32, %struct.reserve_info*, %struct.node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
