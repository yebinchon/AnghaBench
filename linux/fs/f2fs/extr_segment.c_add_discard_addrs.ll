; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_add_discard_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_add_discard_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.cp_control = type { i32, i32, i32 }
%struct.seg_entry = type { i32, i64, i64, i64 }
%struct.discard_entry = type { i64, i32, i32 }
%struct.list_head = type { i32 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.list_head }

@SIT_VBLOCK_MAP_SIZE = common dso_local global i32 0, align 4
@CP_DISCARD = common dso_local global i32 0, align 4
@discard_entry_slab = common dso_local global i32 0, align 4
@GFP_F2FS_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.cp_control*, i32)* @add_discard_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_discard_addrs(%struct.f2fs_sb_info* %0, %struct.cp_control* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.cp_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.seg_entry*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.discard_entry*, align 8
  %19 = alloca %struct.list_head*, align 8
  %20 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.cp_control* %1, %struct.cp_control** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %29 = load %struct.cp_control*, %struct.cp_control** %6, align 8
  %30 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %28, i32 %31)
  store %struct.seg_entry* %32, %struct.seg_entry** %10, align 8
  %33 = load %struct.seg_entry*, %struct.seg_entry** %10, align 8
  %34 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %11, align 8
  %37 = load %struct.seg_entry*, %struct.seg_entry** %10, align 8
  %38 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i64*
  store i64* %40, i64** %12, align 8
  %41 = load %struct.seg_entry*, %struct.seg_entry** %10, align 8
  %42 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i64*
  store i64* %44, i64** %13, align 8
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %46 = call %struct.TYPE_6__* @SIT_I(%struct.f2fs_sb_info* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %49 = load %struct.cp_control*, %struct.cp_control** %6, align 8
  %50 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CP_DISCARD, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %17, align 4
  store %struct.discard_entry* null, %struct.discard_entry** %18, align 8
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %55 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store %struct.list_head* %58, %struct.list_head** %19, align 8
  %59 = load %struct.seg_entry*, %struct.seg_entry** %10, align 8
  %60 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %3
  %65 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %66 = call i32 @f2fs_hw_support_discard(%struct.f2fs_sb_info* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %3
  store i32 0, i32* %4, align 4
  br label %251

69:                                               ; preds = %64
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %69
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %74 = call i32 @f2fs_realtime_discard_enable(%struct.f2fs_sb_info* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load %struct.seg_entry*, %struct.seg_entry** %10, align 8
  %78 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %83 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %89 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %88)
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %87, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %81, %76, %72
  store i32 0, i32* %4, align 4
  br label %251

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96, %69
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %143, %97
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %98
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load i64*, i64** %12, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = xor i64 %110, -1
  %112 = load i64*, i64** %13, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = xor i64 %116, -1
  %118 = and i64 %111, %117
  br label %137

119:                                              ; preds = %102
  %120 = load i64*, i64** %11, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = load i32, i32* %20, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = xor i64 %124, %129
  %131 = load i64*, i64** %12, align 8
  %132 = load i32, i32* %20, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = and i64 %130, %135
  br label %137

137:                                              ; preds = %119, %105
  %138 = phi i64 [ %118, %105 ], [ %136, %119 ]
  %139 = load i64*, i64** %14, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %20, align 4
  br label %98

146:                                              ; preds = %98
  br label %147

147:                                              ; preds = %238, %199, %146
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %147
  %151 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %152 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %151)
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %158 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %157)
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp sle i64 %156, %162
  br label %164

164:                                              ; preds = %150, %147
  %165 = phi i1 [ true, %147 ], [ %163, %150 ]
  br i1 %165, label %166, label %250

166:                                              ; preds = %164
  %167 = load i64*, i64** %14, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %16, align 4
  %170 = add i32 %169, 1
  %171 = call i32 @__find_rev_next_bit(i64* %167, i32 %168, i32 %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp uge i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %250

176:                                              ; preds = %166
  %177 = load i64*, i64** %14, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %15, align 4
  %180 = add i32 %179, 1
  %181 = call i32 @__find_rev_next_zero_bit(i64* %177, i32 %178, i32 %180)
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %176
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %15, align 4
  %194 = sub i32 %192, %193
  %195 = load %struct.cp_control*, %struct.cp_control** %6, align 8
  %196 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  br label %147

200:                                              ; preds = %191, %187, %184, %176
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 1, i32* %4, align 4
  br label %251

204:                                              ; preds = %200
  %205 = load %struct.discard_entry*, %struct.discard_entry** %18, align 8
  %206 = icmp ne %struct.discard_entry* %205, null
  br i1 %206, label %222, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @discard_entry_slab, align 4
  %209 = load i32, i32* @GFP_F2FS_ZERO, align 4
  %210 = call %struct.discard_entry* @f2fs_kmem_cache_alloc(i32 %208, i32 %209)
  store %struct.discard_entry* %210, %struct.discard_entry** %18, align 8
  %211 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %212 = load %struct.cp_control*, %struct.cp_control** %6, align 8
  %213 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @START_BLOCK(%struct.f2fs_sb_info* %211, i32 %214)
  %216 = load %struct.discard_entry*, %struct.discard_entry** %18, align 8
  %217 = getelementptr inbounds %struct.discard_entry, %struct.discard_entry* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 4
  %218 = load %struct.discard_entry*, %struct.discard_entry** %18, align 8
  %219 = getelementptr inbounds %struct.discard_entry, %struct.discard_entry* %218, i32 0, i32 1
  %220 = load %struct.list_head*, %struct.list_head** %19, align 8
  %221 = call i32 @list_add_tail(i32* %219, %struct.list_head* %220)
  br label %222

222:                                              ; preds = %207, %204
  %223 = load i32, i32* %15, align 4
  store i32 %223, i32* %20, align 4
  br label %224

224:                                              ; preds = %235, %222
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %16, align 4
  %227 = icmp ult i32 %225, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load i32, i32* %20, align 4
  %230 = load %struct.discard_entry*, %struct.discard_entry** %18, align 8
  %231 = getelementptr inbounds %struct.discard_entry, %struct.discard_entry* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i8*
  %234 = call i32 @__set_bit_le(i32 %229, i8* %233)
  br label %235

235:                                              ; preds = %228
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %20, align 4
  br label %224

238:                                              ; preds = %224
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %15, align 4
  %241 = sub i32 %239, %240
  %242 = zext i32 %241 to i64
  %243 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %244 = call %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info* %243)
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %242
  store i64 %249, i64* %247, align 8
  br label %147

250:                                              ; preds = %175, %164
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %250, %203, %95, %68
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_6__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_5__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_hw_support_discard(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_realtime_discard_enable(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__find_rev_next_bit(i64*, i32, i32) #1

declare dso_local i32 @__find_rev_next_zero_bit(i64*, i32, i32) #1

declare dso_local %struct.discard_entry* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @START_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @__set_bit_le(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
