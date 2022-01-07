; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_chk_lpt_sz.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_chk_lpt_sz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i64, i64, %struct.ubifs_debug_info* }
%struct.ubifs_debug_info = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"dirty pnodes %d exceed max %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"dirty nnodes %d exceed max %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"LPT wrote %lld but space used was %lld\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"LPT wrote %lld but lpt_sz is %lld\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"LPT layout size %lld but wrote %lld\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"LPT new nhead offs: expected %d was %d\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"LPT chk_lpt_sz %lld + waste %lld exceeds %lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_debug_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 12
  %14 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %13, align 8
  store %struct.ubifs_debug_info* %14, %struct.ubifs_debug_info** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %16 = call i32 @dbg_is_chk_lprops(%struct.ubifs_info* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %290

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %287 [
    i32 0, label %21
    i32 1, label %69
    i32 2, label %75
    i32 3, label %90
    i32 4, label %276
  ]

21:                                               ; preds = %19
  %22 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %23 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %25 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %27 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %26, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %29 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %21
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 11
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %37, %21
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %56, %48
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %290

69:                                               ; preds = %19
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %72 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  store i32 0, i32* %4, align 4
  br label %290

75:                                               ; preds = %19
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %78 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %83 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %87 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %4, align 4
  br label %290

90:                                               ; preds = %19
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %9, align 8
  %94 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %95 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %9, align 8
  %99 = mul nsw i64 %98, %97
  store i64 %99, i64* %9, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %9, align 8
  %108 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %109 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %90
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %116 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %117 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %9, align 8
  %121 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %119, i64 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %114, %90
  %125 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %126 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %130 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %124
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %135 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %136 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %138, i64 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %133, %124
  %146 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %147 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %145
  %151 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %152 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %156 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %150
  %160 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %161 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %162 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %166 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %160, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %164, i64 %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %159, %150, %145
  %172 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %173 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %171
  %177 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %178 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %184 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %185 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %187, i64 %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %182, %176, %171
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 8
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = mul nsw i64 %196, %199
  store i64 %200, i64* %10, align 8
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %202 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %205 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = mul nsw i64 %203, %206
  %208 = load i64, i64* %10, align 8
  %209 = add nsw i64 %208, %207
  store i64 %209, i64* %10, align 8
  %210 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %211 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %10, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %10, align 8
  %215 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %216 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %193
  %220 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %221 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %10, align 8
  %224 = add nsw i64 %223, %222
  store i64 %224, i64* %10, align 8
  br label %225

225:                                              ; preds = %219, %193
  %226 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %227 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %230 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %228, %231
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %10, align 8
  %235 = icmp sgt i64 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %225
  %237 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %238 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %239 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %243 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* %10, align 8
  %247 = call i32 (%struct.ubifs_info*, i8*, i64, i64, ...) @ubifs_err(%struct.ubifs_info* %237, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %241, i64 %245, i64 %246)
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %11, align 4
  br label %250

250:                                              ; preds = %236, %225
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %255 = call i32 @ubifs_dump_lpt_info(%struct.ubifs_info* %254)
  %256 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %257 = call i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info* %256)
  %258 = call i32 (...) @dump_stack()
  br label %259

259:                                              ; preds = %253, %250
  %260 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %261 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %265 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %264, i32 0, i32 1
  store i64 %263, i64* %265, align 8
  %266 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %267 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %266, i32 0, i32 0
  store i32 0, i32* %267, align 8
  %268 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %269 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %268, i32 0, i32 3
  store i32 0, i32* %269, align 4
  %270 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %271 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %270, i32 0, i32 2
  store i32 0, i32* %271, align 8
  %272 = load i32, i32* %7, align 4
  %273 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %274 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* %11, align 4
  store i32 %275, i32* %4, align 4
  br label %290

276:                                              ; preds = %19
  %277 = load i32, i32* %7, align 4
  %278 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %279 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load i32, i32* %7, align 4
  %283 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %8, align 8
  %284 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, %282
  store i32 %286, i32* %284, align 4
  store i32 0, i32* %4, align 4
  br label %290

287:                                              ; preds = %19
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %4, align 4
  br label %290

290:                                              ; preds = %287, %276, %259, %75, %69, %67, %18
  %291 = load i32, i32* %4, align 4
  ret i32 %291
}

declare dso_local i32 @dbg_is_chk_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i64, ...) #1

declare dso_local i32 @ubifs_dump_lpt_info(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
