; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_perm_choose.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_perm_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket = type { i32, i32*, i32, i32 }
%struct.crush_work_bucket = type { i32, i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"bucket %d new x=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" perm_choose have %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" perm_choose swap %d with %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c" perm_choose  %d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c" perm_choose %d sz=%d x=%d r=%d (%d) s=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crush_bucket*, %struct.crush_work_bucket*, i32, i32)* @bucket_perm_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bucket_perm_choose(%struct.crush_bucket* %0, %struct.crush_work_bucket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.crush_bucket*, align 8
  %6 = alloca %struct.crush_work_bucket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crush_bucket* %0, %struct.crush_bucket** %5, align 8
  store %struct.crush_work_bucket* %1, %struct.crush_work_bucket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %16 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = srem i32 %14, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %20 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %26 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %24, %4
  %30 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %31 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %37 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %29
  %41 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %42 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %46 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @crush_hash32_3(i32 %43, i32 %44, i32 %47, i32 0)
  %49 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %50 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = urem i32 %48, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %55 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %59 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %58, i32 0, i32 1
  store i32 65535, i32* %59, align 4
  br label %244

60:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %64 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %70 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %80 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  br label %118

81:                                               ; preds = %24
  %82 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %83 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 65535
  br i1 %85, label %86, label %117

86:                                               ; preds = %81
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %101, %86
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %90 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %96 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %87

104:                                              ; preds = %87
  %105 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %106 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %109 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  store i32 0, i32* %114, align 4
  %115 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %116 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %104, %81
  br label %118

118:                                              ; preds = %117, %78
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %122 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ult i32 %120, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %128 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %119

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %211, %138
  %140 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %141 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ule i32 %142, %143
  br i1 %144, label %145, label %216

145:                                              ; preds = %139
  %146 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %147 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %151 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 1
  %154 = icmp ult i32 %149, %153
  br i1 %154, label %155, label %211

155:                                              ; preds = %145
  %156 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %157 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %161 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @crush_hash32_3(i32 %158, i32 %159, i32 %162, i32 %163)
  %165 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %166 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sub i32 %167, %168
  %170 = urem i32 %164, %169
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %205

173:                                              ; preds = %155
  %174 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %175 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %10, align 4
  %179 = add i32 %177, %178
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %13, align 4
  %183 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %184 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %191 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add i32 %193, %194
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  store i32 %189, i32* %197, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %200 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %198, i32* %204, align 4
  br label %205

205:                                              ; preds = %173, %155
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %10, align 4
  %209 = add i32 %207, %208
  %210 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %205, %145
  %212 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %213 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  br label %139

216:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %217

217:                                              ; preds = %233, %216
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %220 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ult i32 %218, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %217
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %226 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %224, i32 %231)
  br label %233

233:                                              ; preds = %223
  %234 = load i32, i32* %10, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %217

236:                                              ; preds = %217
  %237 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %238 = getelementptr inbounds %struct.crush_work_bucket, %struct.crush_work_bucket* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %11, align 4
  br label %244

244:                                              ; preds = %236, %40
  %245 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %246 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %249 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %11, align 4
  %255 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %247, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load %struct.crush_bucket*, %struct.crush_bucket** %5, align 8
  %257 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %11, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  ret i32 %262
}

declare dso_local i32 @dprintk(i8*, i32, i32, ...) #1

declare dso_local i32 @crush_hash32_3(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
