; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_sanity_check_area_boundary.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_sanity_check_area_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.f2fs_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@F2FS_SUPER_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Mismatch start address, segment0(%u) cp_blkaddr(%u)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Wrong CP boundary, start(%u) end(%u) blocks(%u)\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Wrong SIT boundary, start(%u) end(%u) blocks(%u)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Wrong NAT boundary, start(%u) end(%u) blocks(%u)\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Wrong SSA boundary, start(%u) end(%u) blocks(%u)\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Wrong MAIN_AREA boundary, start(%u) end(%u) block(%u)\00", align 1
@SBI_NEED_SB_WRITE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"internally\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Fix alignment : %s, start(%u) end(%u) block(%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.buffer_head*)* @sanity_check_area_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanity_check_area_boundary(%struct.f2fs_sb_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.f2fs_super_block*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @F2FS_SUPER_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = inttoptr i64 %29 to %struct.f2fs_super_block*
  store %struct.f2fs_super_block* %30, %struct.f2fs_super_block** %6, align 8
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %32 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %31, i32 0, i32 0
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %7, align 8
  %34 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %35 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le32_to_cpu(i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %39 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %43 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %47 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le32_to_cpu(i32 %48)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %51 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  store i64 %53, i64* %12, align 8
  %54 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %55 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le32_to_cpu(i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %59 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  store i64 %61, i64* %14, align 8
  %62 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %63 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  store i64 %65, i64* %15, align 8
  %66 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %67 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  store i64 %69, i64* %16, align 8
  %70 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %71 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le32_to_cpu(i32 %72)
  store i64 %73, i64* %17, align 8
  %74 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %75 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le32_to_cpu(i32 %76)
  store i64 %77, i64* %18, align 8
  %78 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %79 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  store i64 %81, i64* %19, align 8
  %82 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %83 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le32_to_cpu(i32 %84)
  store i64 %85, i64* %20, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* %20, align 8
  %89 = shl i64 %87, %88
  %90 = add nsw i64 %86, %89
  store i64 %90, i64* %21, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = shl i64 %92, %93
  %95 = add nsw i64 %91, %94
  store i64 %95, i64* %22, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %2
  %100 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %101 = load i64, i64* %8, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load i64, i64* %9, align 8
  %104 = call i32 (%struct.f2fs_sb_info*, i8*, i8*, i64, ...) @f2fs_info(%struct.f2fs_sb_info* %100, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %102, i64 %103)
  store i32 1, i32* %3, align 4
  br label %242

105:                                              ; preds = %2
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %20, align 8
  %109 = shl i64 %107, %108
  %110 = add nsw i64 %106, %109
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %115 = load i64, i64* %9, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* %20, align 8
  %120 = shl i64 %118, %119
  %121 = call i32 (%struct.f2fs_sb_info*, i8*, i8*, i64, ...) @f2fs_info(%struct.f2fs_sb_info* %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %116, i64 %117, i64 %120)
  store i32 1, i32* %3, align 4
  br label %242

122:                                              ; preds = %105
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %20, align 8
  %126 = shl i64 %124, %125
  %127 = add nsw i64 %123, %126
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %122
  %131 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %132 = load i64, i64* %10, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %20, align 8
  %137 = shl i64 %135, %136
  %138 = call i32 (%struct.f2fs_sb_info*, i8*, i8*, i64, ...) @f2fs_info(%struct.f2fs_sb_info* %131, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %133, i64 %134, i64 %137)
  store i32 1, i32* %3, align 4
  br label %242

139:                                              ; preds = %122
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %20, align 8
  %143 = shl i64 %141, %142
  %144 = add nsw i64 %140, %143
  %145 = load i64, i64* %12, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %149 = load i64, i64* %11, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %20, align 8
  %154 = shl i64 %152, %153
  %155 = call i32 (%struct.f2fs_sb_info*, i8*, i8*, i64, ...) @f2fs_info(%struct.f2fs_sb_info* %148, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %150, i64 %151, i64 %154)
  store i32 1, i32* %3, align 4
  br label %242

156:                                              ; preds = %139
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %20, align 8
  %160 = shl i64 %158, %159
  %161 = add nsw i64 %157, %160
  %162 = load i64, i64* %13, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %156
  %165 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %166 = load i64, i64* %12, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load i64, i64* %20, align 8
  %171 = shl i64 %169, %170
  %172 = call i32 (%struct.f2fs_sb_info*, i8*, i8*, i64, ...) @f2fs_info(%struct.f2fs_sb_info* %165, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %167, i64 %168, i64 %171)
  store i32 1, i32* %3, align 4
  br label %242

173:                                              ; preds = %156
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %22, align 8
  %176 = icmp sgt i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %179 = load i64, i64* %13, align 8
  %180 = inttoptr i64 %179 to i8*
  %181 = load i64, i64* %8, align 8
  %182 = load i64, i64* %19, align 8
  %183 = load i64, i64* %20, align 8
  %184 = shl i64 %182, %183
  %185 = add nsw i64 %181, %184
  %186 = load i64, i64* %18, align 8
  %187 = load i64, i64* %20, align 8
  %188 = shl i64 %186, %187
  %189 = call i32 (%struct.f2fs_sb_info*, i8*, i8*, i64, ...) @f2fs_info(%struct.f2fs_sb_info* %178, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %180, i64 %185, i64 %188)
  store i32 1, i32* %3, align 4
  br label %242

190:                                              ; preds = %173
  %191 = load i64, i64* %21, align 8
  %192 = load i64, i64* %22, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %240

194:                                              ; preds = %190
  store i32 0, i32* %23, align 4
  %195 = load i64, i64* %21, align 8
  %196 = load i64, i64* %8, align 8
  %197 = sub nsw i64 %195, %196
  %198 = load i64, i64* %20, align 8
  %199 = ashr i64 %197, %198
  %200 = call i32 @cpu_to_le32(i64 %199)
  %201 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  %202 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load %struct.super_block*, %struct.super_block** %7, align 8
  %204 = call i64 @f2fs_readonly(%struct.super_block* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %194
  %207 = load %struct.super_block*, %struct.super_block** %7, align 8
  %208 = getelementptr inbounds %struct.super_block, %struct.super_block* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @bdev_read_only(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206, %194
  %213 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %214 = load i32, i32* @SBI_NEED_SB_WRITE, align 4
  %215 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %213, i32 %214)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %24, align 8
  br label %223

216:                                              ; preds = %206
  %217 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %218 = call i32 @__f2fs_commit_super(%struct.buffer_head* %217, i32* null)
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %23, align 4
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  store i8* %222, i8** %24, align 8
  br label %223

223:                                              ; preds = %216, %212
  %224 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %225 = load i8*, i8** %24, align 8
  %226 = load i64, i64* %13, align 8
  %227 = load i64, i64* %8, align 8
  %228 = load i64, i64* %19, align 8
  %229 = load i64, i64* %20, align 8
  %230 = shl i64 %228, %229
  %231 = add nsw i64 %227, %230
  %232 = load i64, i64* %18, align 8
  %233 = load i64, i64* %20, align 8
  %234 = shl i64 %232, %233
  %235 = call i32 (%struct.f2fs_sb_info*, i8*, i8*, i64, ...) @f2fs_info(%struct.f2fs_sb_info* %224, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* %225, i64 %226, i64 %231, i64 %234)
  %236 = load i32, i32* %23, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %223
  store i32 1, i32* %3, align 4
  br label %242

239:                                              ; preds = %223
  br label %240

240:                                              ; preds = %239, %190
  br label %241

241:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %238, %177, %164, %147, %130, %113, %99
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @f2fs_info(%struct.f2fs_sb_info*, i8*, i8*, i64, ...) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @f2fs_readonly(%struct.super_block*) #1

declare dso_local i64 @bdev_read_only(i32) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__f2fs_commit_super(%struct.buffer_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
