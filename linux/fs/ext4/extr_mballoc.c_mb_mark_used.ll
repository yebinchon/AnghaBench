; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_mark_used.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_mark_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ext4_free_extent = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_buddy*, %struct.ext4_free_extent*)* @mb_mark_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_mark_used(%struct.ext4_buddy* %0, %struct.ext4_free_extent* %1) #0 {
  %3 = alloca %struct.ext4_buddy*, align 8
  %4 = alloca %struct.ext4_free_extent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %3, align 8
  store %struct.ext4_free_extent* %1, %struct.ext4_free_extent** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %15 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %18 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %25 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %24, i32 0, i32 3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  %30 = icmp sgt i32 %23, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %34 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %37 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %43 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %46 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ext4_group_lock_ptr(%struct.TYPE_6__* %44, i64 %47)
  %49 = call i32 @assert_spin_locked(i32 %48)
  %50 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %51 = call i32 @mb_check_buddy(%struct.ext4_buddy* %50)
  %52 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mb_mark_used_double(%struct.ext4_buddy* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %58 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, %56
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %64 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %2
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %73 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %71
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %70, %2
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %85 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mb_test_bit(i32 %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %96 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = call %struct.TYPE_8__* @EXT4_SB(%struct.TYPE_6__* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %94, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %91
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %105, %106
  %108 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %109 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @mb_test_bit(i32 %107, i32 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %104, %91
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %123 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  br label %142

128:                                              ; preds = %118, %115
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %136 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %134, %131, %128
  br label %142

142:                                              ; preds = %141, %121
  br label %143

143:                                              ; preds = %208, %162, %142
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %267

146:                                              ; preds = %143
  %147 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @mb_find_order_for_block(%struct.ext4_buddy* %147, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %5, align 4
  %152 = ashr i32 %150, %151
  %153 = load i32, i32* %5, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %200

157:                                              ; preds = %146
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %5, align 4
  %160 = shl i32 1, %159
  %161 = icmp sge i32 %158, %160
  br i1 %161, label %162, label %200

162:                                              ; preds = %157
  %163 = load i32, i32* %5, align 4
  %164 = shl i32 1, %163
  store i32 %164, i32* %6, align 4
  %165 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i8* @mb_find_buddy(%struct.ext4_buddy* %165, i32 %166, i32* %7)
  store i8* %167, i8** %13, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %5, align 4
  %170 = ashr i32 %168, %169
  %171 = load i32, i32* %7, align 4
  %172 = icmp sge i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @BUG_ON(i32 %173)
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %5, align 4
  %177 = ashr i32 %175, %176
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 @mb_set_bit(i32 %177, i8* %178)
  %180 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %181 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %180, i32 0, i32 2
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @BUG_ON(i32 %198)
  br label %143

200:                                              ; preds = %157, %146
  %201 = load i32, i32* %11, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %5, align 4
  %206 = shl i32 %205, 16
  %207 = or i32 %204, %206
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %203, %200
  %209 = load i32, i32* %5, align 4
  %210 = icmp sle i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @BUG_ON(i32 %211)
  %213 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i8* @mb_find_buddy(%struct.ext4_buddy* %213, i32 %214, i32* %7)
  store i8* %215, i8** %13, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %5, align 4
  %218 = ashr i32 %216, %217
  %219 = load i8*, i8** %13, align 8
  %220 = call i32 @mb_set_bit(i32 %218, i8* %219)
  %221 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %222 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %221, i32 0, i32 2
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %228, align 4
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %5, align 4
  %235 = ashr i32 %233, %234
  %236 = and i32 %235, -2
  store i32 %236, i32* %8, align 4
  %237 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %238 = load i32, i32* %5, align 4
  %239 = call i8* @mb_find_buddy(%struct.ext4_buddy* %237, i32 %238, i32* %7)
  store i8* %239, i8** %13, align 8
  %240 = load i32, i32* %8, align 4
  %241 = load i8*, i8** %13, align 8
  %242 = call i32 @mb_clear_bit(i32 %240, i8* %241)
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @mb_clear_bit(i32 %244, i8* %245)
  %247 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %248 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %247, i32 0, i32 2
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  %257 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %258 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %257, i32 0, i32 2
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  br label %143

267:                                              ; preds = %143
  %268 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %269 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %268, i32 0, i32 3
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %272 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %271, i32 0, i32 2
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %272, align 8
  %274 = call i32 @mb_set_largest_free_order(%struct.TYPE_6__* %270, %struct.TYPE_7__* %273)
  %275 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %276 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.ext4_free_extent*, %struct.ext4_free_extent** %4, align 8
  %279 = getelementptr inbounds %struct.ext4_free_extent, %struct.ext4_free_extent* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @ext4_set_bits(i32 %277, i32 %280, i32 %281)
  %283 = load %struct.ext4_buddy*, %struct.ext4_buddy** %3, align 8
  %284 = call i32 @mb_check_buddy(%struct.ext4_buddy* %283)
  %285 = load i32, i32* %11, align 4
  ret i32 %285
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32) #1

declare dso_local i32 @ext4_group_lock_ptr(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @mb_check_buddy(%struct.ext4_buddy*) #1

declare dso_local i32 @mb_mark_used_double(%struct.ext4_buddy*, i32, i32) #1

declare dso_local i32 @mb_test_bit(i32, i32) #1

declare dso_local %struct.TYPE_8__* @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @mb_find_order_for_block(%struct.ext4_buddy*, i32) #1

declare dso_local i8* @mb_find_buddy(%struct.ext4_buddy*, i32, i32*) #1

declare dso_local i32 @mb_set_bit(i32, i8*) #1

declare dso_local i32 @mb_clear_bit(i32, i8*) #1

declare dso_local i32 @mb_set_largest_free_order(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @ext4_set_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
