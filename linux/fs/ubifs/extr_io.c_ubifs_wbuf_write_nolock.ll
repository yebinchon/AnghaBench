; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_write_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_write_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i64, i32, i32, i32, i32, i8*, i32 (%struct.ubifs_info*, i64, i32, i32)*, i32, i64, i32, i32, %struct.ubifs_info.0* }
%struct.ubifs_info = type opaque
%struct.ubifs_info.0 = type { i64, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"%d bytes (%s) to jhead %s wbuf at LEB %d:%d\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"flush jhead %s wbuf to LEB %d:%d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"write %d bytes to LEB %d:%d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"cannot write %d bytes to LEB %d:%d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_wbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %14, i32 0, i32 11
  %16 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %15, align 8
  store %struct.ubifs_info.0* %16, %struct.ubifs_info.0** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ALIGN(i32 %17, i32 8)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.ubifs_ch*
  %22 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dbg_ntype(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %27 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dbg_jhead(i32 %28)
  %30 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %25, i32 %29, i64 %32, i32 %39)
  %41 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %3
  %45 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %46 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %51 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %54 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br label %57

57:                                               ; preds = %49, %44, %3
  %58 = phi i1 [ false, %44 ], [ false, %3 ], [ %56, %49 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ubifs_assert(%struct.ubifs_info.0* %41, i32 %59)
  %61 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %62 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %63 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %71 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = srem i32 %69, %72
  %74 = icmp eq i32 %73, 0
  br label %75

75:                                               ; preds = %66, %57
  %76 = phi i1 [ false, %57 ], [ %74, %66 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @ubifs_assert(%struct.ubifs_info.0* %61, i32 %77)
  %79 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %80 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %81 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 7
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %75
  %86 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %87 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %90 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %88, %91
  br label %93

93:                                               ; preds = %85, %75
  %94 = phi i1 [ false, %75 ], [ %92, %85 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @ubifs_assert(%struct.ubifs_info.0* %79, i32 %95)
  %97 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %98 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %99 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %104 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %107 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = icmp sle i32 %105, %108
  br label %110

110:                                              ; preds = %102, %93
  %111 = phi i1 [ false, %93 ], [ %109, %102 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @ubifs_assert(%struct.ubifs_info.0* %97, i32 %112)
  %114 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %115 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %116 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %119 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %117, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @ubifs_assert(%struct.ubifs_info.0* %114, i32 %122)
  %124 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %125 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %126 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %129 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = icmp sle i32 %127, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @ubifs_assert(%struct.ubifs_info.0* %124, i32 %132)
  %134 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %135 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %136 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %139 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = srem i32 %137, %140
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @ubifs_assert(%struct.ubifs_info.0* %134, i32 %143)
  %145 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %146 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %147 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %146, i32 0, i32 10
  %148 = call i32 @mutex_is_locked(i32* %147)
  %149 = call i32 @ubifs_assert(%struct.ubifs_info.0* %145, i32 %148)
  %150 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %151 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %152 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %110
  %156 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %157 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  br label %161

161:                                              ; preds = %155, %110
  %162 = phi i1 [ false, %110 ], [ %160, %155 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @ubifs_assert(%struct.ubifs_info.0* %150, i32 %163)
  %165 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %166 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %167 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 @ubifs_assert(%struct.ubifs_info.0* %165, i32 %171)
  %173 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %174 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %177 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %175, %178
  %180 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %181 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %179, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %161
  %185 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %186 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %187 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %190 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %188, %191
  %193 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %194 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = srem i32 %192, %195
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i32 @ubifs_assert(%struct.ubifs_info.0* %185, i32 %199)
  br label %201

201:                                              ; preds = %184, %161
  %202 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %203 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %206 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = sub nsw i32 %204, %207
  %209 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %210 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %208, %211
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %201
  %216 = load i32, i32* @ENOSPC, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %9, align 4
  br label %633

218:                                              ; preds = %201
  %219 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %220 = call i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf* %219)
  %221 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %222 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i32, i32* @EROFS, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %4, align 4
  br label %654

228:                                              ; preds = %218
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %231 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = icmp sle i32 %229, %232
  br i1 %233, label %234, label %349

234:                                              ; preds = %228
  %235 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %236 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %235, i32 0, i32 5
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %239 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr i8, i8* %237, i64 %241
  %243 = load i8*, i8** %6, align 8
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @memcpy(i8* %242, i8* %243, i32 %244)
  %246 = load i32, i32* %12, align 4
  %247 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %248 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %246, %249
  br i1 %250, label %251, label %331

251:                                              ; preds = %234
  %252 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %253 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @dbg_jhead(i32 %254)
  %256 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %257 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %260 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %255, i64 %258, i32 %261)
  %263 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %264 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %265 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %268 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %267, i32 0, i32 5
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %271 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %274 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @ubifs_leb_write(%struct.ubifs_info.0* %263, i64 %266, i8* %269, i32 %272, i32 %275)
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %251
  br label %633

280:                                              ; preds = %251
  %281 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %282 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %281, i32 0, i32 7
  %283 = call i32 @spin_lock(i32* %282)
  %284 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %285 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %288 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %292 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %295 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %293, %296
  %298 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %299 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = icmp sge i32 %297, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %280
  %303 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %304 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %307 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %306, i32 0, i32 4
  store i32 %305, i32* %307, align 4
  br label %318

308:                                              ; preds = %280
  %309 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %310 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %313 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %311, %314
  %316 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %317 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %316, i32 0, i32 4
  store i32 %315, i32* %317, align 4
  br label %318

318:                                              ; preds = %308, %302
  %319 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %320 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %323 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %322, i32 0, i32 3
  store i32 %321, i32* %323, align 8
  %324 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %325 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %324, i32 0, i32 2
  store i32 0, i32* %325, align 4
  %326 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %327 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %326, i32 0, i32 8
  store i64 0, i64* %327, align 8
  %328 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %329 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %328, i32 0, i32 7
  %330 = call i32 @spin_unlock(i32* %329)
  br label %348

331:                                              ; preds = %234
  %332 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %333 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %332, i32 0, i32 7
  %334 = call i32 @spin_lock(i32* %333)
  %335 = load i32, i32* %12, align 4
  %336 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %337 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = sub nsw i32 %338, %335
  store i32 %339, i32* %337, align 8
  %340 = load i32, i32* %12, align 4
  %341 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %342 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %346 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %345, i32 0, i32 7
  %347 = call i32 @spin_unlock(i32* %346)
  br label %348

348:                                              ; preds = %331, %318
  br label %592

349:                                              ; preds = %228
  store i32 0, i32* %10, align 4
  %350 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %351 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %419

354:                                              ; preds = %349
  %355 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %356 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @dbg_jhead(i32 %357)
  %359 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %360 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %363 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %358, i64 %361, i32 %364)
  %366 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %367 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %366, i32 0, i32 5
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %370 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr i8, i8* %368, i64 %372
  %374 = load i8*, i8** %6, align 8
  %375 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %376 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @memcpy(i8* %373, i8* %374, i32 %377)
  %379 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %380 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %381 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %384 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %383, i32 0, i32 5
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %387 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %390 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @ubifs_leb_write(%struct.ubifs_info.0* %379, i64 %382, i8* %385, i32 %388, i32 %391)
  store i32 %392, i32* %9, align 4
  %393 = load i32, i32* %9, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %354
  br label %633

396:                                              ; preds = %354
  %397 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %398 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %401 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %402, %399
  store i32 %403, i32* %401, align 8
  %404 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %405 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* %7, align 4
  %408 = sub nsw i32 %407, %406
  store i32 %408, i32* %7, align 4
  %409 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %410 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* %12, align 4
  %413 = sub nsw i32 %412, %411
  store i32 %413, i32* %12, align 4
  %414 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %415 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %10, align 4
  %418 = add nsw i32 %417, %416
  store i32 %418, i32* %10, align 4
  br label %479

419:                                              ; preds = %349
  %420 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %421 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %424 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 8
  %426 = sub nsw i32 %425, 1
  %427 = and i32 %422, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %478

429:                                              ; preds = %419
  %430 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %431 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %434 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %437 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %432, i64 %435, i32 %438)
  %440 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %441 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %442 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load i8*, i8** %6, align 8
  %445 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %446 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %449 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %448, i32 0, i32 4
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @ubifs_leb_write(%struct.ubifs_info.0* %440, i64 %443, i8* %444, i32 %447, i32 %450)
  store i32 %451, i32* %9, align 4
  %452 = load i32, i32* %9, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %429
  br label %633

455:                                              ; preds = %429
  %456 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %457 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %460 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  %462 = add nsw i32 %461, %458
  store i32 %462, i32* %460, align 8
  %463 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %464 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %463, i32 0, i32 4
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %7, align 4
  %467 = sub nsw i32 %466, %465
  store i32 %467, i32* %7, align 4
  %468 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %469 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %468, i32 0, i32 4
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %12, align 4
  %472 = sub nsw i32 %471, %470
  store i32 %472, i32* %12, align 4
  %473 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %474 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %473, i32 0, i32 4
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* %10, align 4
  %477 = add nsw i32 %476, %475
  store i32 %477, i32* %10, align 4
  br label %478

478:                                              ; preds = %455, %419
  br label %479

479:                                              ; preds = %478, %396
  %480 = load i32, i32* %12, align 4
  %481 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %482 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %481, i32 0, i32 4
  %483 = load i32, i32* %482, align 4
  %484 = ashr i32 %480, %483
  store i32 %484, i32* %11, align 4
  %485 = load i32, i32* %11, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %532

487:                                              ; preds = %479
  %488 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %489 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 4
  %491 = load i32, i32* %11, align 4
  %492 = shl i32 %491, %490
  store i32 %492, i32* %11, align 4
  %493 = load i32, i32* %11, align 4
  %494 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %495 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %498 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 8
  %500 = call i32 (i8*, i32, i64, i32, ...) @dbg_io(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %493, i64 %496, i32 %499)
  %501 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %502 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %503 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = load i8*, i8** %6, align 8
  %506 = load i32, i32* %10, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr i8, i8* %505, i64 %507
  %509 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %510 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* %11, align 4
  %513 = call i32 @ubifs_leb_write(%struct.ubifs_info.0* %501, i64 %504, i8* %508, i32 %511, i32 %512)
  store i32 %513, i32* %9, align 4
  %514 = load i32, i32* %9, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %487
  br label %633

517:                                              ; preds = %487
  %518 = load i32, i32* %11, align 4
  %519 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %520 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 8
  %522 = add nsw i32 %521, %518
  store i32 %522, i32* %520, align 8
  %523 = load i32, i32* %11, align 4
  %524 = load i32, i32* %12, align 4
  %525 = sub nsw i32 %524, %523
  store i32 %525, i32* %12, align 4
  %526 = load i32, i32* %11, align 4
  %527 = load i32, i32* %7, align 4
  %528 = sub nsw i32 %527, %526
  store i32 %528, i32* %7, align 4
  %529 = load i32, i32* %11, align 4
  %530 = load i32, i32* %10, align 4
  %531 = add nsw i32 %530, %529
  store i32 %531, i32* %10, align 4
  br label %532

532:                                              ; preds = %517, %479
  %533 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %534 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %533, i32 0, i32 7
  %535 = call i32 @spin_lock(i32* %534)
  %536 = load i32, i32* %12, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %548

538:                                              ; preds = %532
  %539 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %540 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %539, i32 0, i32 5
  %541 = load i8*, i8** %540, align 8
  %542 = load i8*, i8** %6, align 8
  %543 = load i32, i32* %10, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr i8, i8* %542, i64 %544
  %546 = load i32, i32* %7, align 4
  %547 = call i32 @memcpy(i8* %541, i8* %545, i32 %546)
  br label %548

548:                                              ; preds = %538, %532
  %549 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %550 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %553 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = sub nsw i32 %551, %554
  %556 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %557 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %556, i32 0, i32 3
  %558 = load i32, i32* %557, align 8
  %559 = icmp sge i32 %555, %558
  br i1 %559, label %560, label %566

560:                                              ; preds = %548
  %561 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %562 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %561, i32 0, i32 3
  %563 = load i32, i32* %562, align 8
  %564 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %565 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %564, i32 0, i32 4
  store i32 %563, i32* %565, align 4
  br label %576

566:                                              ; preds = %548
  %567 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %568 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %571 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = sub nsw i32 %569, %572
  %574 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %575 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %574, i32 0, i32 4
  store i32 %573, i32* %575, align 4
  br label %576

576:                                              ; preds = %566, %560
  %577 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %578 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %577, i32 0, i32 4
  %579 = load i32, i32* %578, align 4
  %580 = load i32, i32* %12, align 4
  %581 = sub nsw i32 %579, %580
  %582 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %583 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %582, i32 0, i32 3
  store i32 %581, i32* %583, align 8
  %584 = load i32, i32* %12, align 4
  %585 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %586 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %585, i32 0, i32 2
  store i32 %584, i32* %586, align 4
  %587 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %588 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %587, i32 0, i32 8
  store i64 0, i64* %588, align 8
  %589 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %590 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %589, i32 0, i32 7
  %591 = call i32 @spin_unlock(i32* %590)
  br label %592

592:                                              ; preds = %576, %348
  %593 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %594 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %593, i32 0, i32 6
  %595 = load i32 (%struct.ubifs_info*, i64, i32, i32)*, i32 (%struct.ubifs_info*, i64, i32, i32)** %594, align 8
  %596 = icmp ne i32 (%struct.ubifs_info*, i64, i32, i32)* %595, null
  br i1 %596, label %597, label %623

597:                                              ; preds = %592
  %598 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %599 = getelementptr inbounds %struct.ubifs_info.0, %struct.ubifs_info.0* %598, i32 0, i32 2
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %602 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 8
  %604 = sub nsw i32 %600, %603
  %605 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %606 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 4
  %608 = sub nsw i32 %604, %607
  store i32 %608, i32* %13, align 4
  %609 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %610 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %609, i32 0, i32 6
  %611 = load i32 (%struct.ubifs_info*, i64, i32, i32)*, i32 (%struct.ubifs_info*, i64, i32, i32)** %610, align 8
  %612 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %613 = bitcast %struct.ubifs_info.0* %612 to %struct.ubifs_info*
  %614 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %615 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = load i32, i32* %13, align 4
  %618 = call i32 %611(%struct.ubifs_info* %613, i64 %616, i32 %617, i32 0)
  store i32 %618, i32* %9, align 4
  %619 = load i32, i32* %9, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %597
  br label %633

622:                                              ; preds = %597
  br label %623

623:                                              ; preds = %622, %592
  %624 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %625 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %632

628:                                              ; preds = %623
  %629 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %630 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %631 = call i32 @new_wbuf_timer_nolock(%struct.ubifs_info.0* %629, %struct.ubifs_wbuf* %630)
  br label %632

632:                                              ; preds = %628, %623
  store i32 0, i32* %4, align 4
  br label %654

633:                                              ; preds = %621, %516, %454, %395, %279, %215
  %634 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %635 = load i32, i32* %7, align 4
  %636 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %637 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %640 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 8
  %642 = load i32, i32* %9, align 4
  %643 = call i32 @ubifs_err(%struct.ubifs_info.0* %634, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %635, i64 %638, i32 %641, i32 %642)
  %644 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %645 = load i8*, i8** %6, align 8
  %646 = call i32 @ubifs_dump_node(%struct.ubifs_info.0* %644, i8* %645)
  %647 = call i32 (...) @dump_stack()
  %648 = load %struct.ubifs_info.0*, %struct.ubifs_info.0** %8, align 8
  %649 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %5, align 8
  %650 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %649, i32 0, i32 0
  %651 = load i64, i64* %650, align 8
  %652 = call i32 @ubifs_dump_leb(%struct.ubifs_info.0* %648, i64 %651)
  %653 = load i32, i32* %9, align 4
  store i32 %653, i32* %4, align 4
  br label %654

654:                                              ; preds = %633, %632, %225
  %655 = load i32, i32* %4, align 4
  ret i32 %655
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_io(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info.0*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @cancel_wbuf_timer_nolock(%struct.ubifs_wbuf*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ubifs_leb_write(%struct.ubifs_info.0*, i64, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @new_wbuf_timer_nolock(%struct.ubifs_info.0*, %struct.ubifs_wbuf*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info.0*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info.0*, i8*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @ubifs_dump_leb(%struct.ubifs_info.0*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
