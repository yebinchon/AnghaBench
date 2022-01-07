; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_ocontext_write.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_ocontext_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.ocontext** }
%struct.ocontext = type { i64*, i32*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.ocontext* }
%struct.TYPE_13__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_14__, i32*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.policydb_compat_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.policydb*, %struct.policydb_compat_info*, i8*)* @ocontext_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocontext_write(%struct.policydb* %0, %struct.policydb_compat_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca %struct.policydb_compat_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca %struct.ocontext*, align 8
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store %struct.policydb_compat_info* %1, %struct.policydb_compat_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %436, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.policydb_compat_info*, %struct.policydb_compat_info** %6, align 8
  %20 = getelementptr inbounds %struct.policydb_compat_info, %struct.policydb_compat_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %439

23:                                               ; preds = %17
  store i64 0, i64* %11, align 8
  %24 = load %struct.policydb*, %struct.policydb** %5, align 8
  %25 = getelementptr inbounds %struct.policydb, %struct.policydb* %24, i32 0, i32 0
  %26 = load %struct.ocontext**, %struct.ocontext*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %26, i64 %28
  %30 = load %struct.ocontext*, %struct.ocontext** %29, align 8
  store %struct.ocontext* %30, %struct.ocontext** %16, align 8
  br label %31

31:                                               ; preds = %37, %23
  %32 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %33 = icmp ne %struct.ocontext* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %11, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %39 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %38, i32 0, i32 4
  %40 = load %struct.ocontext*, %struct.ocontext** %39, align 8
  store %struct.ocontext* %40, %struct.ocontext** %16, align 8
  br label %31

41:                                               ; preds = %31
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @cpu_to_le32(i64 %42)
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @put_entry(i32* %45, i32 4, i64 1, i8* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %440

52:                                               ; preds = %41
  %53 = load %struct.policydb*, %struct.policydb** %5, align 8
  %54 = getelementptr inbounds %struct.policydb, %struct.policydb* %53, i32 0, i32 0
  %55 = load %struct.ocontext**, %struct.ocontext*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ocontext*, %struct.ocontext** %55, i64 %57
  %59 = load %struct.ocontext*, %struct.ocontext** %58, align 8
  store %struct.ocontext* %59, %struct.ocontext** %16, align 8
  br label %60

60:                                               ; preds = %431, %52
  %61 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %62 = icmp ne %struct.ocontext* %61, null
  br i1 %62, label %63, label %435

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %430 [
    i32 132, label %65
    i32 136, label %93
    i32 131, label %93
    i32 128, label %146
    i32 130, label %188
    i32 135, label %221
    i32 129, label %268
    i32 133, label %330
    i32 134, label %380
  ]

65:                                               ; preds = %63
  %66 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %67 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @cpu_to_le32(i64 %70)
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @put_entry(i32* %73, i32 4, i64 1, i8* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %440

80:                                               ; preds = %65
  %81 = load %struct.policydb*, %struct.policydb** %5, align 8
  %82 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %83 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @context_write(%struct.policydb* %81, i32* %85, i8* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %440

92:                                               ; preds = %80
  br label %430

93:                                               ; preds = %63, %63
  %94 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %95 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @strlen(i32* %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @cpu_to_le32(i64 %99)
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @put_entry(i32* %102, i32 4, i64 1, i8* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %440

109:                                              ; preds = %93
  %110 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %111 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @put_entry(i32* %113, i32 1, i64 %114, i8* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %440

121:                                              ; preds = %109
  %122 = load %struct.policydb*, %struct.policydb** %5, align 8
  %123 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %124 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @context_write(%struct.policydb* %122, i32* %126, i8* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %440

133:                                              ; preds = %121
  %134 = load %struct.policydb*, %struct.policydb** %5, align 8
  %135 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %136 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @context_write(%struct.policydb* %134, i32* %138, i8* %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %440

145:                                              ; preds = %133
  br label %430

146:                                              ; preds = %63
  %147 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %148 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @cpu_to_le32(i64 %151)
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %152, i32* %153, align 4
  %154 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %155 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @cpu_to_le32(i64 %158)
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %159, i32* %160, align 4
  %161 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %162 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @cpu_to_le32(i64 %165)
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @put_entry(i32* %168, i32 4, i64 3, i8* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %146
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %4, align 4
  br label %440

175:                                              ; preds = %146
  %176 = load %struct.policydb*, %struct.policydb** %5, align 8
  %177 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %178 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @context_write(%struct.policydb* %176, i32* %180, i8* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %4, align 4
  br label %440

187:                                              ; preds = %175
  br label %430

188:                                              ; preds = %63
  %189 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %190 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 %193, i32* %194, align 16
  %195 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %196 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 %199, i32* %200, align 4
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 @put_entry(i32* %201, i32 4, i64 2, i8* %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %188
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %4, align 4
  br label %440

208:                                              ; preds = %188
  %209 = load %struct.policydb*, %struct.policydb** %5, align 8
  %210 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %211 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @context_write(%struct.policydb* %209, i32* %213, i8* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %208
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %4, align 4
  br label %440

220:                                              ; preds = %208
  br label %430

221:                                              ; preds = %63
  %222 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %223 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @cpu_to_le32(i64 %225)
  %227 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %226, i32* %227, align 4
  %228 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %229 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = call i64 @strlen(i32* %231)
  store i64 %232, i64* %12, align 8
  %233 = load i64, i64* %12, align 8
  %234 = call i32 @cpu_to_le32(i64 %233)
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %234, i32* %235, align 4
  %236 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %237 = load i8*, i8** %7, align 8
  %238 = call i32 @put_entry(i32* %236, i32 4, i64 2, i8* %237)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %221
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %4, align 4
  br label %440

243:                                              ; preds = %221
  %244 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %245 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %12, align 8
  %249 = load i8*, i8** %7, align 8
  %250 = call i32 @put_entry(i32* %247, i32 1, i64 %248, i8* %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %243
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %4, align 4
  br label %440

255:                                              ; preds = %243
  %256 = load %struct.policydb*, %struct.policydb** %5, align 8
  %257 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %258 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i8*, i8** %7, align 8
  %262 = call i32 @context_write(%struct.policydb* %256, i32* %260, i8* %261)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = load i32, i32* %10, align 4
  store i32 %266, i32* %4, align 4
  br label %440

267:                                              ; preds = %255
  br label %430

268:                                              ; preds = %63
  store i32 0, i32* %9, align 4
  br label %269

269:                                              ; preds = %285, %268
  %270 = load i32, i32* %9, align 4
  %271 = icmp ult i32 %270, 4
  br i1 %271, label %272, label %288

272:                                              ; preds = %269
  %273 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %274 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %9, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %283
  store i32 %281, i32* %284, align 4
  br label %285

285:                                              ; preds = %272
  %286 = load i32, i32* %9, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %9, align 4
  br label %269

288:                                              ; preds = %269
  store i32 0, i32* %9, align 4
  br label %289

289:                                              ; preds = %306, %288
  %290 = load i32, i32* %9, align 4
  %291 = icmp ult i32 %290, 4
  br i1 %291, label %292, label %309

292:                                              ; preds = %289
  %293 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %294 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %9, align 4
  %303 = add i32 %302, 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %304
  store i32 %301, i32* %305, align 4
  br label %306

306:                                              ; preds = %292
  %307 = load i32, i32* %9, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %9, align 4
  br label %289

309:                                              ; preds = %289
  %310 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %311 = load i8*, i8** %7, align 8
  %312 = call i32 @put_entry(i32* %310, i32 4, i64 8, i8* %311)
  store i32 %312, i32* %10, align 4
  %313 = load i32, i32* %10, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %309
  %316 = load i32, i32* %10, align 4
  store i32 %316, i32* %4, align 4
  br label %440

317:                                              ; preds = %309
  %318 = load %struct.policydb*, %struct.policydb** %5, align 8
  %319 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %320 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i8*, i8** %7, align 8
  %324 = call i32 @context_write(%struct.policydb* %318, i32* %322, i8* %323)
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %317
  %328 = load i32, i32* %10, align 4
  store i32 %328, i32* %4, align 4
  br label %440

329:                                              ; preds = %317
  br label %430

330:                                              ; preds = %63
  %331 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %332 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @cpu_to_be64(i32 %335)
  %337 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  store i32 %336, i32* %337, align 4
  %338 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %339 = load i8*, i8** %7, align 8
  %340 = call i32 @put_entry(i32* %338, i32 4, i64 1, i8* %339)
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %10, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %330
  %344 = load i32, i32* %10, align 4
  store i32 %344, i32* %4, align 4
  br label %440

345:                                              ; preds = %330
  %346 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %347 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = call i32 @cpu_to_le32(i64 %350)
  %352 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %351, i32* %352, align 4
  %353 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %354 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = call i32 @cpu_to_le32(i64 %357)
  %359 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %358, i32* %359, align 4
  %360 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %361 = load i8*, i8** %7, align 8
  %362 = call i32 @put_entry(i32* %360, i32 4, i64 2, i8* %361)
  store i32 %362, i32* %10, align 4
  %363 = load i32, i32* %10, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %345
  %366 = load i32, i32* %10, align 4
  store i32 %366, i32* %4, align 4
  br label %440

367:                                              ; preds = %345
  %368 = load %struct.policydb*, %struct.policydb** %5, align 8
  %369 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %370 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i8*, i8** %7, align 8
  %374 = call i32 @context_write(%struct.policydb* %368, i32* %372, i8* %373)
  store i32 %374, i32* %10, align 4
  %375 = load i32, i32* %10, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %367
  %378 = load i32, i32* %10, align 4
  store i32 %378, i32* %4, align 4
  br label %440

379:                                              ; preds = %367
  br label %430

380:                                              ; preds = %63
  %381 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %382 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = call i64 @strlen(i32* %385)
  store i64 %386, i64* %12, align 8
  %387 = load i64, i64* %12, align 8
  %388 = call i32 @cpu_to_le32(i64 %387)
  %389 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %388, i32* %389, align 4
  %390 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %391 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = call i32 @cpu_to_le32(i64 %394)
  %396 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %395, i32* %396, align 4
  %397 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %398 = load i8*, i8** %7, align 8
  %399 = call i32 @put_entry(i32* %397, i32 4, i64 2, i8* %398)
  store i32 %399, i32* %10, align 4
  %400 = load i32, i32* %10, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %380
  %403 = load i32, i32* %10, align 4
  store i32 %403, i32* %4, align 4
  br label %440

404:                                              ; preds = %380
  %405 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %406 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = load i64, i64* %12, align 8
  %411 = load i8*, i8** %7, align 8
  %412 = call i32 @put_entry(i32* %409, i32 1, i64 %410, i8* %411)
  store i32 %412, i32* %10, align 4
  %413 = load i32, i32* %10, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %404
  %416 = load i32, i32* %10, align 4
  store i32 %416, i32* %4, align 4
  br label %440

417:                                              ; preds = %404
  %418 = load %struct.policydb*, %struct.policydb** %5, align 8
  %419 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %420 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  %423 = load i8*, i8** %7, align 8
  %424 = call i32 @context_write(%struct.policydb* %418, i32* %422, i8* %423)
  store i32 %424, i32* %10, align 4
  %425 = load i32, i32* %10, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %417
  %428 = load i32, i32* %10, align 4
  store i32 %428, i32* %4, align 4
  br label %440

429:                                              ; preds = %417
  br label %430

430:                                              ; preds = %63, %429, %379, %329, %267, %220, %187, %145, %92
  br label %431

431:                                              ; preds = %430
  %432 = load %struct.ocontext*, %struct.ocontext** %16, align 8
  %433 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %432, i32 0, i32 4
  %434 = load %struct.ocontext*, %struct.ocontext** %433, align 8
  store %struct.ocontext* %434, %struct.ocontext** %16, align 8
  br label %60

435:                                              ; preds = %60
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %8, align 4
  %438 = add i32 %437, 1
  store i32 %438, i32* %8, align 4
  br label %17

439:                                              ; preds = %17
  store i32 0, i32* %4, align 4
  br label %440

440:                                              ; preds = %439, %427, %415, %402, %377, %365, %343, %327, %315, %265, %253, %241, %218, %206, %185, %173, %143, %131, %119, %107, %90, %78, %50
  %441 = load i32, i32* %4, align 4
  ret i32 %441
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @put_entry(i32*, i32, i64, i8*) #1

declare dso_local i32 @context_write(%struct.policydb*, i32*, i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
