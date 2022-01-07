; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_build_segment_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_build_segment_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32, %struct.f2fs_sm_info* }
%struct.f2fs_sm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.f2fs_super_block = type { i32, i32, i32, i32, i32 }
%struct.f2fs_checkpoint = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEF_RECLAIM_PREFREE_SEGMENTS = common dso_local global i32 0, align 4
@DEF_MAX_RECLAIM_PREFREE_SEGMENTS = common dso_local global i32 0, align 4
@LFS = common dso_local global i32 0, align 4
@F2FS_IPU_FSYNC = common dso_local global i32 0, align 4
@DEF_MIN_IPU_UTIL = common dso_local global i32 0, align 4
@DEF_MIN_FSYNC_BLOCKS = common dso_local global i32 0, align 4
@DEF_MIN_HOT_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_build_segment_manager(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_super_block*, align 8
  %5 = alloca %struct.f2fs_checkpoint*, align 8
  %6 = alloca %struct.f2fs_sm_info*, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = call %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info* %8)
  store %struct.f2fs_super_block* %9, %struct.f2fs_super_block** %4, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %10)
  store %struct.f2fs_checkpoint* %11, %struct.f2fs_checkpoint** %5, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.f2fs_sm_info* @f2fs_kzalloc(%struct.f2fs_sb_info* %12, i32 88, i32 %13)
  store %struct.f2fs_sm_info* %14, %struct.f2fs_sm_info** %6, align 8
  %15 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %16 = icmp ne %struct.f2fs_sm_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %190

20:                                               ; preds = %1
  %21 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %23 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %22, i32 0, i32 3
  store %struct.f2fs_sm_info* %21, %struct.f2fs_sm_info** %23, align 8
  %24 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %25 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le32_to_cpu(i32 %26)
  %28 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %29 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %28, i32 0, i32 15
  store i8* %27, i8** %29, align 8
  %30 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %31 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %35 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %34, i32 0, i32 14
  store i8* %33, i8** %35, align 8
  %36 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %37 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le32_to_cpu(i32 %38)
  %40 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %41 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %40, i32 0, i32 13
  store i8* %39, i8** %41, align 8
  %42 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %5, align 8
  %43 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %47 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %46, i32 0, i32 12
  store i8* %45, i8** %47, align 8
  %48 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %5, align 8
  %49 = getelementptr inbounds %struct.f2fs_checkpoint, %struct.f2fs_checkpoint* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %53 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %52, i32 0, i32 11
  store i8* %51, i8** %53, align 8
  %54 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %55 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %60 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %4, align 8
  %62 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %66 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %65, i32 0, i32 10
  store i8* %64, i8** %66, align 8
  %67 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %68 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DEF_RECLAIM_PREFREE_SEGMENTS, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sdiv i32 %71, 100
  %73 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %74 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %76 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DEF_MAX_RECLAIM_PREFREE_SEGMENTS, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %20
  %81 = load i32, i32* @DEF_MAX_RECLAIM_PREFREE_SEGMENTS, align 4
  %82 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %83 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %20
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %86 = load i32, i32* @LFS, align 4
  %87 = call i32 @test_opt(%struct.f2fs_sb_info* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @F2FS_IPU_FSYNC, align 4
  %91 = shl i32 1, %90
  %92 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %93 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @DEF_MIN_IPU_UTIL, align 4
  %96 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %97 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @DEF_MIN_FSYNC_BLOCKS, align 4
  %99 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %100 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %102 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %105 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %109 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @DEF_MIN_HOT_BLOCKS, align 4
  %111 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %112 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %114 = call i32 @reserved_sections(%struct.f2fs_sb_info* %113)
  %115 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %116 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %118 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %117, i32 0, i32 5
  %119 = call i32 @INIT_LIST_HEAD(i32* %118)
  %120 = load %struct.f2fs_sm_info*, %struct.f2fs_sm_info** %6, align 8
  %121 = getelementptr inbounds %struct.f2fs_sm_info, %struct.f2fs_sm_info* %120, i32 0, i32 4
  %122 = call i32 @init_rwsem(i32* %121)
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %124 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @f2fs_readonly(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %94
  %129 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %130 = call i32 @f2fs_create_flush_cmd_control(%struct.f2fs_sb_info* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %190

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %94
  %137 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %138 = call i32 @create_discard_cmd_control(%struct.f2fs_sb_info* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %190

143:                                              ; preds = %136
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %145 = call i32 @build_sit_info(%struct.f2fs_sb_info* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %2, align 4
  br label %190

150:                                              ; preds = %143
  %151 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %152 = call i32 @build_free_segmap(%struct.f2fs_sb_info* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %2, align 4
  br label %190

157:                                              ; preds = %150
  %158 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %159 = call i32 @build_curseg(%struct.f2fs_sb_info* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %190

164:                                              ; preds = %157
  %165 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %166 = call i32 @build_sit_entries(%struct.f2fs_sb_info* %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %190

171:                                              ; preds = %164
  %172 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %173 = call i32 @init_free_segmap(%struct.f2fs_sb_info* %172)
  %174 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %175 = call i32 @build_dirty_segmap(%struct.f2fs_sb_info* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %190

180:                                              ; preds = %171
  %181 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %182 = call i32 @sanity_check_curseg(%struct.f2fs_sb_info* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %2, align 4
  br label %190

187:                                              ; preds = %180
  %188 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %189 = call i32 @init_min_max_mtime(%struct.f2fs_sb_info* %188)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %187, %185, %178, %169, %162, %155, %148, %141, %133, %17
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_sm_info* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @reserved_sections(%struct.f2fs_sb_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @f2fs_readonly(i32) #1

declare dso_local i32 @f2fs_create_flush_cmd_control(%struct.f2fs_sb_info*) #1

declare dso_local i32 @create_discard_cmd_control(%struct.f2fs_sb_info*) #1

declare dso_local i32 @build_sit_info(%struct.f2fs_sb_info*) #1

declare dso_local i32 @build_free_segmap(%struct.f2fs_sb_info*) #1

declare dso_local i32 @build_curseg(%struct.f2fs_sb_info*) #1

declare dso_local i32 @build_sit_entries(%struct.f2fs_sb_info*) #1

declare dso_local i32 @init_free_segmap(%struct.f2fs_sb_info*) #1

declare dso_local i32 @build_dirty_segmap(%struct.f2fs_sb_info*) #1

declare dso_local i32 @sanity_check_curseg(%struct.f2fs_sb_info*) #1

declare dso_local i32 @init_min_max_mtime(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
