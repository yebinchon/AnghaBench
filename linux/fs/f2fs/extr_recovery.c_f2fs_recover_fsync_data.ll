; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_f2fs_recover_fsync_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_f2fs_recover_fsync_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.list_head = type { i32 }
%struct.cp_control = type { i32 }

@SB_RDONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"recover fsync data on readonly fs\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"f2fs_fsync_inode_entry\00", align 1
@fsync_entry_slab = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SBI_POR_DOING = common dso_local global i32 0, align 4
@SBI_IS_RECOVERED = common dso_local global i32 0, align 4
@CP_RECOVERY = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_recover_fsync_data(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head, align 4
  %6 = alloca %struct.list_head, align 4
  %7 = alloca %struct.list_head, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cp_control, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @SB_RDONLY, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = call i32 @f2fs_info(%struct.f2fs_sb_info* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @SB_RDONLY, align 8
  %26 = xor i64 %25, -1
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %28 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, %26
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %22, %2
  %34 = call i32 @f2fs_kmem_cache_create(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %34, i32* @fsync_entry_slab, align 4
  %35 = load i32, i32* @fsync_entry_slab, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %128

40:                                               ; preds = %33
  %41 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  %42 = call i32 @INIT_LIST_HEAD(%struct.list_head* %6)
  %43 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %45 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @find_fsync_dnodes(%struct.f2fs_sb_info* %47, %struct.list_head* %5, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %40
  %53 = call i64 @list_empty(%struct.list_head* %5)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %40
  br label %79

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  br label %79

60:                                               ; preds = %56
  store i32 1, i32* %11, align 4
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %62 = call i32 @recover_data(%struct.f2fs_sb_info* %61, %struct.list_head* %5, %struct.list_head* %6, %struct.list_head* %7)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %67 = call i64 @list_empty(%struct.list_head* %5)
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %66, i32 %70)
  br label %78

72:                                               ; preds = %60
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %75 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %65
  br label %79

79:                                               ; preds = %78, %59, %55
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @destroy_fsync_dnodes(%struct.list_head* %5, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @destroy_fsync_dnodes(%struct.list_head* %6, i32 %82)
  %84 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %85 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %84)
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %87 = call i64 @MAIN_BLKADDR(%struct.f2fs_sb_info* %86)
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @PAGE_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = call i32 @truncate_inode_pages_range(i32 %85, i32 %90, i32 -1)
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %79
  %95 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %96 = call i32 @NODE_MAPPING(%struct.f2fs_sb_info* %95)
  %97 = call i32 @truncate_inode_pages_final(i32 %96)
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %99 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %98)
  %100 = call i32 @truncate_inode_pages_final(i32 %99)
  br label %105

101:                                              ; preds = %79
  %102 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %103 = load i32, i32* @SBI_POR_DOING, align 4
  %104 = call i32 @clear_sbi_flag(%struct.f2fs_sb_info* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %107 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @destroy_fsync_dnodes(%struct.list_head* %7, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %105
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %115 = load i32, i32* @SBI_IS_RECOVERED, align 4
  %116 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.cp_control, %struct.cp_control* %12, i32 0, i32 0
  %121 = load i32, i32* @CP_RECOVERY, align 4
  store i32 %121, i32* %120, align 4
  %122 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %123 = call i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info* %122, %struct.cp_control* %12)
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %119, %113
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32, i32* @fsync_entry_slab, align 4
  %127 = call i32 @kmem_cache_destroy(i32 %126)
  br label %128

128:                                              ; preds = %125, %37
  %129 = load i64, i64* %10, align 8
  %130 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %131 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i64 %129, i64* %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  br label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %8, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  ret i32 %141
}

declare dso_local i32 @f2fs_info(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @f2fs_kmem_cache_create(i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_fsync_dnodes(%struct.f2fs_sb_info*, %struct.list_head*, i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @recover_data(%struct.f2fs_sb_info*, %struct.list_head*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @destroy_fsync_dnodes(%struct.list_head*, i32) #1

declare dso_local i32 @truncate_inode_pages_range(i32, i32, i32) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @MAIN_BLKADDR(%struct.f2fs_sb_info*) #1

declare dso_local i32 @truncate_inode_pages_final(i32) #1

declare dso_local i32 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @clear_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_write_checkpoint(%struct.f2fs_sb_info*, %struct.cp_control*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
