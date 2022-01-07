; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_sit_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_sit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.f2fs_super_block = type { i32, i32 }
%struct.sit_info = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.sit_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIT_VBLOCK_MAP_SIZE = common dso_local global i32 0, align 4
@SIT_BITMAP = common dso_local global i32 0, align 4
@default_salloc_ops = common dso_local global i32 0, align 4
@SIT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @build_sit_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_sit_info(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_super_block*, align 8
  %5 = alloca %struct.sit_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = call %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info* %13)
  store %struct.f2fs_super_block* %14, %struct.f2fs_super_block** %4, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @f2fs_kzalloc(%struct.f2fs_sb_info* %15, i32 120, i32 %16)
  %18 = bitcast i8* %17 to %struct.sit_info*
  store %struct.sit_info* %18, %struct.sit_info** %5, align 8
  %19 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %20 = icmp ne %struct.sit_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %230

24:                                               ; preds = %1
  %25 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %27 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.sit_info* %25, %struct.sit_info** %28, align 8
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %30)
  %32 = call i32 @array_size(i32 4, i32 %31)
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @f2fs_kvzalloc(%struct.f2fs_sb_info* %29, i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  %36 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %37 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %36, i32 0, i32 16
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %39 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %38, i32 0, i32 16
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %230

45:                                               ; preds = %24
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %47 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %46)
  %48 = call i32 @f2fs_bitmap_size(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @f2fs_kvzalloc(%struct.f2fs_sb_info* %49, i32 %50, i32 %51)
  %53 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %54 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %53, i32 0, i32 17
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %56 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %55, i32 0, i32 17
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %230

62:                                               ; preds = %45
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %64 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %63)
  %65 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %66 = mul i32 %64, %65
  %67 = mul i32 %66, 3
  store i32 %67, i32* %10, align 4
  %68 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @f2fs_kvzalloc(%struct.f2fs_sb_info* %68, i32 %69, i32 %70)
  %72 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %73 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %75 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %62
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %230

81:                                               ; preds = %62
  %82 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %83 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %127, %81
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %88 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %87)
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %90, label %130

90:                                               ; preds = %85
  %91 = load i8*, i8** %9, align 8
  %92 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %93 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %92, i32 0, i32 16
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i8* %91, i8** %98, align 8
  %99 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %105 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %104, i32 0, i32 16
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i8* %103, i8** %110, align 8
  %111 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %9, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %117 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %116, i32 0, i32 16
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store i8* %115, i8** %122, align 8
  %123 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %124 = load i8*, i8** %9, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %9, align 8
  br label %127

127:                                              ; preds = %90
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %85

130:                                              ; preds = %85
  %131 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %132 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @f2fs_kzalloc(%struct.f2fs_sb_info* %131, i32 %132, i32 %133)
  %135 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %136 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %135, i32 0, i32 15
  store i8* %134, i8** %136, align 8
  %137 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %138 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %137, i32 0, i32 15
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %130
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %230

144:                                              ; preds = %130
  %145 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %146 = call i64 @__is_large_section(%struct.f2fs_sb_info* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %150 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %151 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %150)
  %152 = call i32 @array_size(i32 4, i32 %151)
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i8* @f2fs_kvzalloc(%struct.f2fs_sb_info* %149, i32 %152, i32 %153)
  %155 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %156 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %155, i32 0, i32 14
  store i8* %154, i8** %156, align 8
  %157 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %158 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %157, i32 0, i32 14
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %148
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %230

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %164, %144
  %166 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %167 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @le32_to_cpu(i32 %168)
  %170 = ashr i32 %169, 1
  store i32 %170, i32* %6, align 4
  %171 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %172 = load i32, i32* @SIT_BITMAP, align 4
  %173 = call i32 @__bitmap_size(%struct.f2fs_sb_info* %171, i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %175 = load i32, i32* @SIT_BITMAP, align 4
  %176 = call i8* @__bitmap_ptr(%struct.f2fs_sb_info* %174, i32 %175)
  store i8* %176, i8** %8, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @GFP_KERNEL, align 4
  %180 = call i8* @kmemdup(i8* %177, i32 %178, i32 %179)
  %181 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %182 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %181, i32 0, i32 13
  store i8* %180, i8** %182, align 8
  %183 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %184 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %183, i32 0, i32 13
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %165
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %230

190:                                              ; preds = %165
  %191 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %192 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %191, i32 0, i32 10
  store i32* @default_salloc_ops, i32** %192, align 8
  %193 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %194 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %198 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %201 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %199, %202
  %204 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %205 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %207 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %206, i32 0, i32 9
  store i64 0, i64* %207, align 8
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %210 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 8
  %211 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %212 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %211, i32 0, i32 8
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* @SIT_ENTRY_PER_BLOCK, align 4
  %214 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %215 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %214, i32 0, i32 7
  store i32 %213, i32* %215, align 8
  %216 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %217 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %216, i32 0, i32 1
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le64_to_cpu(i32 %220)
  %222 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %223 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 4
  %224 = call i32 (...) @ktime_get_real_seconds()
  %225 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %226 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 8
  %227 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %228 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %227, i32 0, i32 4
  %229 = call i32 @init_rwsem(i32* %228)
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %190, %187, %161, %141, %78, %59, %42, %21
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info*) #1

declare dso_local i8* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i8* @f2fs_kvzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bitmap_size(i32) #1

declare dso_local i64 @__is_large_section(%struct.f2fs_sb_info*) #1

declare dso_local i32 @MAIN_SECS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @__bitmap_size(%struct.f2fs_sb_info*, i32) #1

declare dso_local i8* @__bitmap_ptr(%struct.f2fs_sb_info*, i32) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @init_rwsem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
