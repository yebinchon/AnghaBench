; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_do_replace_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_do_replace_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_summary = type { i32 }
%struct.sit_info = type { i32 }
%struct.curseg_info = type { i32, i16, i32, i32 }
%struct.seg_entry = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@NULL_ADDR = common dso_local global i64 0, align 8
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@CURSEG_WARM_DATA = common dso_local global i32 0, align 4
@NO_CHECK_TYPE = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_do_replace_block(%struct.f2fs_sb_info* %0, %struct.f2fs_summary* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca %struct.f2fs_summary*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sit_info*, align 8
  %14 = alloca %struct.curseg_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.seg_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %7, align 8
  store %struct.f2fs_summary* %1, %struct.f2fs_summary** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %21 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %20)
  store %struct.sit_info* %21, %struct.sit_info** %13, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %22, i64 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %25, i32 %26)
  store %struct.seg_entry* %27, %struct.seg_entry** %17, align 8
  %28 = load %struct.seg_entry*, %struct.seg_entry** %17, align 8
  %29 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %18, align 4
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %32 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @down_write(i32* %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %6
  %38 = load %struct.seg_entry*, %struct.seg_entry** %17, align 8
  %39 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @IS_CURSEG(%struct.f2fs_sb_info* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @NULL_ADDR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @CURSEG_COLD_DATA, align 4
  store i32 %52, i32* %18, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @CURSEG_WARM_DATA, align 4
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %53, %51
  br label %56

56:                                               ; preds = %55, %42, %37
  br label %75

57:                                               ; preds = %6
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i64 @IS_CURSEG(%struct.f2fs_sb_info* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @__f2fs_get_curseg(%struct.f2fs_sb_info* %63, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @NO_CHECK_TYPE, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %66, i32 %70)
  br label %74

72:                                               ; preds = %57
  %73 = load i32, i32* @CURSEG_WARM_DATA, align 4
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %72, %62
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @IS_DATASEG(i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %76, i32 %81)
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %84 = load i32, i32* %18, align 4
  %85 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %83, i32 %84)
  store %struct.curseg_info* %85, %struct.curseg_info** %14, align 8
  %86 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %87 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %86, i32 0, i32 3
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.sit_info*, %struct.sit_info** %13, align 8
  %90 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %89, i32 0, i32 0
  %91 = call i32 @down_write(i32* %90)
  %92 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %93 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %16, align 4
  %95 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %96 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %95, i32 0, i32 1
  %97 = load i16, i16* %96, align 4
  store i16 %97, i16* %19, align 2
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %100 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %75
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %106 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @change_curseg(%struct.f2fs_sb_info* %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %75
  %111 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call zeroext i16 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info* %111, i64 %112)
  %114 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %115 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %114, i32 0, i32 1
  store i16 %113, i16* %115, align 4
  %116 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.f2fs_summary*, %struct.f2fs_summary** %8, align 8
  %119 = call i32 @__add_sum_entry(%struct.f2fs_sb_info* %116, i32 %117, %struct.f2fs_summary* %118)
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122, %110
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @update_sit_entry(%struct.f2fs_sb_info* %126, i64 %127, i32 1)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %130, i64 %131)
  %133 = load i32, i32* @NULL_SEGNO, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %137 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %136)
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @invalidate_mapping_pages(i32 %137, i64 %138, i64 %139)
  %141 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @update_sit_entry(%struct.f2fs_sb_info* %141, i64 %142, i32 -1)
  br label %144

144:                                              ; preds = %135, %129
  %145 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %146 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %146, i64 %147)
  %149 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %145, i32 %148)
  %150 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %151 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %151, i64 %152)
  %154 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %150, i32 %153)
  %155 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %155, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %144
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %163 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %169 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @change_curseg(%struct.f2fs_sb_info* %170, i32 %171)
  br label %173

173:                                              ; preds = %166, %160
  %174 = load i16, i16* %19, align 2
  %175 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %176 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %175, i32 0, i32 1
  store i16 %174, i16* %176, align 4
  br label %177

177:                                              ; preds = %173, %144
  %178 = load %struct.sit_info*, %struct.sit_info** %13, align 8
  %179 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %178, i32 0, i32 0
  %180 = call i32 @up_write(i32* %179)
  %181 = load %struct.curseg_info*, %struct.curseg_info** %14, align 8
  %182 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %181, i32 0, i32 3
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %185 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %184)
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = call i32 @up_write(i32* %186)
  ret void
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @GET_SEGNO(%struct.f2fs_sb_info*, i64) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_CURSEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__f2fs_get_curseg(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @IS_DATASEG(i32) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @change_curseg(%struct.f2fs_sb_info*, i32) #1

declare dso_local zeroext i16 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @__add_sum_entry(%struct.f2fs_sb_info*, i32, %struct.f2fs_summary*) #1

declare dso_local i32 @update_sit_entry(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i64, i64) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @locate_dirty_segment(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
