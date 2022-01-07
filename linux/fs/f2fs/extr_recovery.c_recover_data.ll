; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_recover_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.list_head = type { i32 }
%struct.curseg_info = type { i32 }
%struct.page = type { i32 }
%struct.fsync_inode_entry = type { i64, i64, i32, i32 }

@CURSEG_WARM_NODE = common dso_local global i32 0, align 4
@META_POR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.list_head*, %struct.list_head*, %struct.list_head*)* @recover_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_data(%struct.f2fs_sb_info* %0, %struct.list_head* %1, %struct.list_head* %2, %struct.list_head* %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.curseg_info*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fsync_inode_entry*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  store %struct.page* null, %struct.page** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %15 = load i32, i32* @CURSEG_WARM_NODE, align 4
  %16 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %14, i32 %15)
  store %struct.curseg_info* %16, %struct.curseg_info** %9, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %18 = load %struct.curseg_info*, %struct.curseg_info** %9, align 8
  %19 = call i64 @NEXT_FREE_BLKADDR(%struct.f2fs_sb_info* %17, %struct.curseg_info* %18)
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %4, %114
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i32, i32* @META_POR, align 4
  %24 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %21, i64 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %119

27:                                               ; preds = %20
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @f2fs_ra_meta_pages_cond(%struct.f2fs_sb_info* %28, i64 %29)
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call %struct.page* @f2fs_get_tmp_page(%struct.f2fs_sb_info* %31, i64 %32)
  store %struct.page* %33, %struct.page** %10, align 8
  %34 = load %struct.page*, %struct.page** %10, align 8
  %35 = call i64 @IS_ERR(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.page*, %struct.page** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.page* %38)
  store i32 %39, i32* %11, align 4
  br label %119

40:                                               ; preds = %27
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = call i32 @is_recoverable_dnode(%struct.page* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = call i32 @f2fs_put_page(%struct.page* %45, i32 1)
  br label %119

47:                                               ; preds = %40
  %48 = load %struct.list_head*, %struct.list_head** %6, align 8
  %49 = load %struct.page*, %struct.page** %10, align 8
  %50 = call i32 @ino_of_node(%struct.page* %49)
  %51 = call %struct.fsync_inode_entry* @get_fsync_inode(%struct.list_head* %48, i32 %50)
  store %struct.fsync_inode_entry* %51, %struct.fsync_inode_entry** %13, align 8
  %52 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %13, align 8
  %53 = icmp ne %struct.fsync_inode_entry* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %114

55:                                               ; preds = %47
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = call i64 @IS_INODE(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %13, align 8
  %61 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.page*, %struct.page** %10, align 8
  %64 = call i32 @recover_inode(i32 %62, %struct.page* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.page*, %struct.page** %10, align 8
  %69 = call i32 @f2fs_put_page(%struct.page* %68, i32 1)
  br label %119

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %13, align 8
  %73 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %13, align 8
  %79 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.page*, %struct.page** %10, align 8
  %82 = load %struct.list_head*, %struct.list_head** %8, align 8
  %83 = call i32 @recover_dentry(i32 %80, %struct.page* %81, %struct.list_head* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load %struct.page*, %struct.page** %10, align 8
  %88 = call i32 @f2fs_put_page(%struct.page* %87, i32 1)
  br label %119

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %92 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %13, align 8
  %93 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.page*, %struct.page** %10, align 8
  %96 = call i32 @do_recover_data(%struct.f2fs_sb_info* %91, i32 %94, %struct.page* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.page*, %struct.page** %10, align 8
  %101 = call i32 @f2fs_put_page(%struct.page* %100, i32 1)
  br label %119

102:                                              ; preds = %90
  %103 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %13, align 8
  %104 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.fsync_inode_entry*, %struct.fsync_inode_entry** %13, align 8
  %110 = getelementptr inbounds %struct.fsync_inode_entry, %struct.fsync_inode_entry* %109, i32 0, i32 2
  %111 = load %struct.list_head*, %struct.list_head** %7, align 8
  %112 = call i32 @list_move_tail(i32* %110, %struct.list_head* %111)
  br label %113

113:                                              ; preds = %108, %102
  br label %114

114:                                              ; preds = %113, %54
  %115 = load %struct.page*, %struct.page** %10, align 8
  %116 = call i64 @next_blkaddr_of_node(%struct.page* %115)
  store i64 %116, i64* %12, align 8
  %117 = load %struct.page*, %struct.page** %10, align 8
  %118 = call i32 @f2fs_put_page(%struct.page* %117, i32 1)
  br label %20

119:                                              ; preds = %99, %86, %67, %44, %37, %26
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %124 = call i32 @f2fs_allocate_new_segments(%struct.f2fs_sb_info* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %11, align 4
  ret i32 %126
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @NEXT_FREE_BLKADDR(%struct.f2fs_sb_info*, %struct.curseg_info*) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @f2fs_ra_meta_pages_cond(%struct.f2fs_sb_info*, i64) #1

declare dso_local %struct.page* @f2fs_get_tmp_page(%struct.f2fs_sb_info*, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @is_recoverable_dnode(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.fsync_inode_entry* @get_fsync_inode(%struct.list_head*, i32) #1

declare dso_local i32 @ino_of_node(%struct.page*) #1

declare dso_local i64 @IS_INODE(%struct.page*) #1

declare dso_local i32 @recover_inode(i32, %struct.page*) #1

declare dso_local i32 @recover_dentry(i32, %struct.page*, %struct.list_head*) #1

declare dso_local i32 @do_recover_data(%struct.f2fs_sb_info*, i32, %struct.page*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i64 @next_blkaddr_of_node(%struct.page*) #1

declare dso_local i32 @f2fs_allocate_new_segments(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
