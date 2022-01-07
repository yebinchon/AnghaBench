; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_load_program_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_load_program_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_load_program_attr = type { i32, i8*, i8*, i64, i8*, i64, i8*, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32 }
%union.bpf_attr = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@BPF_OBJ_NAME_LEN = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_load_program_attr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %union.bpf_attr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bpf_load_program_attr* %0, %struct.bpf_load_program_attr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %14 = icmp ne %struct.bpf_load_program_attr* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %272

28:                                               ; preds = %15
  %29 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 7
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37, %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %272

43:                                               ; preds = %37, %34
  %44 = call i32 @memset(%union.bpf_attr* %10, i32 0, i32 8)
  %45 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %46 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %47, i32* %48, align 8
  %49 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %50 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %49, i32 0, i32 15
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %51, i32* %52, align 8
  %53 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %54 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %53, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %56, i32* %57, align 8
  %58 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %59 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @ptr_to_u64(i8* %60)
  %62 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %61, i8** %62, align 8
  %63 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %64 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @ptr_to_u64(i8* %65)
  %67 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %43
  %73 = load i8*, i8** %6, align 8
  %74 = call i8* @ptr_to_u64(i8* %73)
  %75 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %74, i8** %75, align 8
  %76 = load i64, i64* %7, align 8
  %77 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %76, i64* %77, align 8
  br label %82

78:                                               ; preds = %43
  %79 = call i8* @ptr_to_u64(i8* null)
  %80 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %79, i8** %80, align 8
  %81 = bitcast %union.bpf_attr* %10 to i64*
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %72
  %83 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %84 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 8
  %86 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %85, i32* %86, align 8
  %87 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %88 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %89, i32* %90, align 8
  %91 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %92 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %91, i32 0, i32 11
  %93 = load i32, i32* %92, align 8
  %94 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %93, i32* %94, align 8
  %95 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %96 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %97, i64* %98, align 8
  %99 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %100 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %101, i64* %102, align 8
  %103 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %104 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @ptr_to_u64(i8* %105)
  %107 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %106, i8** %107, align 8
  %108 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %109 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %110, i64* %111, align 8
  %112 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %113 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %114, i64* %115, align 8
  %116 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %117 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %116, i32 0, i32 6
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @ptr_to_u64(i8* %118)
  %120 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %119, i8** %120, align 8
  %121 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %122 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %82
  %126 = bitcast %union.bpf_attr* %10 to i32*
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %129 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %132 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @strlen(i32 %133)
  %135 = load i64, i64* @BPF_OBJ_NAME_LEN, align 8
  %136 = sub nsw i64 %135, 1
  %137 = call i32 @min(i32 %134, i64 %136)
  %138 = call i32 @memcpy(i32 %127, i32 %130, i32 %137)
  br label %139

139:                                              ; preds = %125, %82
  %140 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %141 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 8
  %143 = bitcast %union.bpf_attr* %10 to i32*
  store i32 %142, i32* %143, align 8
  %144 = call i32 @sys_bpf_prog_load(%union.bpf_attr* %10, i32 8)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %4, align 4
  br label %272

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %248, %149
  %151 = load i64, i64* @errno, align 8
  %152 = load i64, i64* @E2BIG, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i8*, i8** %8, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i8*, i8** %9, align 8
  %159 = icmp ne i8* %158, null
  %160 = xor i1 %159, true
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i1 [ true, %154 ], [ %160, %157 ]
  br label %163

163:                                              ; preds = %161, %150
  %164 = phi i1 [ false, %150 ], [ %162, %161 ]
  br i1 %164, label %165, label %249

165:                                              ; preds = %163
  %166 = load i8*, i8** %8, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %203, label %168

168:                                              ; preds = %165
  %169 = bitcast %union.bpf_attr* %10 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %203

172:                                              ; preds = %168
  %173 = bitcast %union.bpf_attr* %10 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %176 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %174, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %172
  %180 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %181 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %184 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %187 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = bitcast %union.bpf_attr* %10 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = call i8* @alloc_zero_tailing_info(i8* %182, i64 %185, i64 %188, i64 %190)
  store i8* %191, i8** %8, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %179
  br label %266

195:                                              ; preds = %179
  %196 = load i8*, i8** %8, align 8
  %197 = call i8* @ptr_to_u64(i8* %196)
  %198 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %197, i8** %198, align 8
  %199 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %200 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %201, i64* %202, align 8
  br label %243

203:                                              ; preds = %172, %168, %165
  %204 = load i8*, i8** %9, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %241, label %206

206:                                              ; preds = %203
  %207 = bitcast %union.bpf_attr* %10 to i64*
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %241

210:                                              ; preds = %206
  %211 = bitcast %union.bpf_attr* %10 to i64*
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %214 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = icmp slt i64 %212, %215
  br i1 %216, label %217, label %241

217:                                              ; preds = %210
  %218 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %219 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %218, i32 0, i32 6
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %222 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %221, i32 0, i32 7
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %225 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = bitcast %union.bpf_attr* %10 to i64*
  %228 = load i64, i64* %227, align 8
  %229 = call i8* @alloc_zero_tailing_info(i8* %220, i64 %223, i64 %226, i64 %228)
  store i8* %229, i8** %9, align 8
  %230 = load i8*, i8** %9, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %217
  br label %266

233:                                              ; preds = %217
  %234 = load i8*, i8** %9, align 8
  %235 = call i8* @ptr_to_u64(i8* %234)
  %236 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %235, i8** %236, align 8
  %237 = load %struct.bpf_load_program_attr*, %struct.bpf_load_program_attr** %5, align 8
  %238 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %239, i64* %240, align 8
  br label %242

241:                                              ; preds = %210, %206, %203
  br label %249

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242, %195
  %244 = call i32 @sys_bpf_prog_load(%union.bpf_attr* %10, i32 8)
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* %12, align 4
  %246 = icmp sge i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %266

248:                                              ; preds = %243
  br label %150

249:                                              ; preds = %241, %163
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load i8*, i8** %6, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %252, %249
  br label %266

256:                                              ; preds = %252
  %257 = load i8*, i8** %6, align 8
  %258 = call i8* @ptr_to_u64(i8* %257)
  %259 = bitcast %union.bpf_attr* %10 to i8**
  store i8* %258, i8** %259, align 8
  %260 = load i64, i64* %7, align 8
  %261 = bitcast %union.bpf_attr* %10 to i64*
  store i64 %260, i64* %261, align 8
  %262 = bitcast %union.bpf_attr* %10 to i32*
  store i32 1, i32* %262, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 0
  store i8 0, i8* %264, align 1
  %265 = call i32 @sys_bpf_prog_load(%union.bpf_attr* %10, i32 8)
  store i32 %265, i32* %12, align 4
  br label %266

266:                                              ; preds = %256, %255, %247, %232, %194
  %267 = load i8*, i8** %8, align 8
  %268 = call i32 @free(i8* %267)
  %269 = load i8*, i8** %9, align 8
  %270 = call i32 @free(i8* %269)
  %271 = load i32, i32* %12, align 4
  store i32 %271, i32* %4, align 4
  br label %272

272:                                              ; preds = %266, %147, %40, %25
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

declare dso_local i32 @memset(%union.bpf_attr*, i32, i32) #1

declare dso_local i8* @ptr_to_u64(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sys_bpf_prog_load(%union.bpf_attr*, i32) #1

declare dso_local i8* @alloc_zero_tailing_info(i8*, i64, i64, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
