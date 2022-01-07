; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_allocate_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_allocate_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.f2fs_bio_info** }
%struct.f2fs_bio_info = type { i32, i32 }
%struct.page = type { i32 }
%struct.f2fs_summary = type { i32 }
%struct.f2fs_io_info = type { i32, i32, i64, i32, i32 }
%struct.sit_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.f2fs_sb_info*, i32, i32)* }
%struct.curseg_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NULL_SEGNO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_allocate_data_block(%struct.f2fs_sb_info* %0, %struct.page* %1, i32 %2, i32* %3, %struct.f2fs_summary* %4, i32 %5, %struct.f2fs_io_info* %6, i32 %7) #0 {
  %9 = alloca %struct.f2fs_sb_info*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.f2fs_summary*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.f2fs_io_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sit_info*, align 8
  %18 = alloca %struct.curseg_info*, align 8
  %19 = alloca %struct.f2fs_bio_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %9, align 8
  store %struct.page* %1, %struct.page** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.f2fs_summary* %4, %struct.f2fs_summary** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.f2fs_io_info* %6, %struct.f2fs_io_info** %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %21 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %20)
  store %struct.sit_info* %21, %struct.sit_info** %17, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %22, i32 %23)
  store %struct.curseg_info* %24, %struct.curseg_info** %18, align 8
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %26 = call %struct.TYPE_4__* @SM_I(%struct.f2fs_sb_info* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @down_read(i32* %27)
  %29 = load %struct.curseg_info*, %struct.curseg_info** %18, align 8
  %30 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.sit_info*, %struct.sit_info** %17, align 8
  %33 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %32, i32 0, i32 0
  %34 = call i32 @down_write(i32* %33)
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %36 = load %struct.curseg_info*, %struct.curseg_info** %18, align 8
  %37 = call i32 @NEXT_FREE_BLKADDR(%struct.f2fs_sb_info* %35, %struct.curseg_info* %36)
  %38 = load i32*, i32** %12, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @f2fs_wait_discard_bio(%struct.f2fs_sb_info* %39, i32 %41)
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.f2fs_summary*, %struct.f2fs_summary** %13, align 8
  %46 = call i32 @__add_sum_entry(%struct.f2fs_sb_info* %43, i32 %44, %struct.f2fs_summary* %45)
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %48 = load %struct.curseg_info*, %struct.curseg_info** %18, align 8
  %49 = call i32 @__refresh_next_blkoff(%struct.f2fs_sb_info* %47, %struct.curseg_info* %48)
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %51 = load %struct.curseg_info*, %struct.curseg_info** %18, align 8
  %52 = call i32 @stat_inc_block_count(%struct.f2fs_sb_info* %50, %struct.curseg_info* %51)
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @update_sit_entry(%struct.f2fs_sb_info* %53, i32 %55, i32 1)
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @GET_SEGNO(%struct.f2fs_sb_info* %57, i32 %58)
  %60 = load i64, i64* @NULL_SEGNO, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %8
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @update_sit_entry(%struct.f2fs_sb_info* %63, i32 %64, i32 -1)
  br label %66

66:                                               ; preds = %62, %8
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @__has_curseg_space(%struct.f2fs_sb_info* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  %72 = load %struct.sit_info*, %struct.sit_info** %17, align 8
  %73 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (%struct.f2fs_sb_info*, i32, i32)*, i32 (%struct.f2fs_sb_info*, i32, i32)** %75, align 8
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 %76(%struct.f2fs_sb_info* %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %71, %66
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @GET_SEGNO(%struct.f2fs_sb_info* %82, i32 %83)
  %85 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %81, i64 %84)
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %87 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @GET_SEGNO(%struct.f2fs_sb_info* %87, i32 %89)
  %91 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %86, i64 %90)
  %92 = load %struct.sit_info*, %struct.sit_info** %17, align 8
  %93 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %92, i32 0, i32 0
  %94 = call i32 @up_write(i32* %93)
  %95 = load %struct.page*, %struct.page** %10, align 8
  %96 = icmp ne %struct.page* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %80
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @IS_NODESEG(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load %struct.page*, %struct.page** %10, align 8
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %104 = load %struct.curseg_info*, %struct.curseg_info** %18, align 8
  %105 = call i32 @NEXT_FREE_BLKADDR(%struct.f2fs_sb_info* %103, %struct.curseg_info* %104)
  %106 = call i32 @fill_node_footer_blkaddr(%struct.page* %102, i32 %105)
  %107 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %108 = load %struct.page*, %struct.page** %10, align 8
  %109 = call i32 @f2fs_inode_chksum_set(%struct.f2fs_sb_info* %107, %struct.page* %108)
  br label %110

110:                                              ; preds = %101, %97, %80
  %111 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %112 = call i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %15, align 8
  %116 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %150

120:                                              ; preds = %117
  %121 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %15, align 8
  %122 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %121, i32 0, i32 4
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %15, align 8
  %125 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %127 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %126, i32 0, i32 0
  %128 = load %struct.f2fs_bio_info**, %struct.f2fs_bio_info*** %127, align 8
  %129 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %15, align 8
  %130 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %128, i64 %131
  %133 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %132, align 8
  %134 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %15, align 8
  %135 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %133, i64 %137
  store %struct.f2fs_bio_info* %138, %struct.f2fs_bio_info** %19, align 8
  %139 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %19, align 8
  %140 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %139, i32 0, i32 0
  %141 = call i32 @spin_lock(i32* %140)
  %142 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %15, align 8
  %143 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %142, i32 0, i32 4
  %144 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %19, align 8
  %145 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %144, i32 0, i32 1
  %146 = call i32 @list_add_tail(i32* %143, i32* %145)
  %147 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %19, align 8
  %148 = getelementptr inbounds %struct.f2fs_bio_info, %struct.f2fs_bio_info* %147, i32 0, i32 0
  %149 = call i32 @spin_unlock(i32* %148)
  br label %150

150:                                              ; preds = %120, %117
  %151 = load %struct.curseg_info*, %struct.curseg_info** %18, align 8
  %152 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %155 = call %struct.TYPE_4__* @SM_I(%struct.f2fs_sb_info* %154)
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = call i32 @up_read(i32* %156)
  ret void
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @NEXT_FREE_BLKADDR(%struct.f2fs_sb_info*, %struct.curseg_info*) #1

declare dso_local i32 @f2fs_wait_discard_bio(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__add_sum_entry(%struct.f2fs_sb_info*, i32, %struct.f2fs_summary*) #1

declare dso_local i32 @__refresh_next_blkoff(%struct.f2fs_sb_info*, %struct.curseg_info*) #1

declare dso_local i32 @stat_inc_block_count(%struct.f2fs_sb_info*, %struct.curseg_info*) #1

declare dso_local i32 @update_sit_entry(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @GET_SEGNO(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__has_curseg_space(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @locate_dirty_segment(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @IS_NODESEG(i32) #1

declare dso_local i32 @fill_node_footer_blkaddr(%struct.page*, i32) #1

declare dso_local i32 @f2fs_inode_chksum_set(%struct.f2fs_sb_info*, %struct.page*) #1

declare dso_local i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
