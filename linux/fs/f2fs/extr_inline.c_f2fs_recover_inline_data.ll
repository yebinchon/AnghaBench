; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_recover_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_recover_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_inode = type { i32 }

@F2FS_INLINE_DATA = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@FI_INLINE_DATA = common dso_local global i32 0, align 4
@FI_DATA_EXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_recover_inline_data(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.f2fs_inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %6, align 8
  store %struct.f2fs_inode* null, %struct.f2fs_inode** %7, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i64 @IS_INODE(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call %struct.f2fs_inode* @F2FS_INODE(%struct.page* %17)
  store %struct.f2fs_inode* %18, %struct.f2fs_inode** %7, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i64 @f2fs_has_inline_data(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %25 = icmp ne %struct.f2fs_inode* %24, null
  br i1 %25, label %26, label %68

26:                                               ; preds = %23
  %27 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %28 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @F2FS_INLINE_DATA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %105, %33
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %35, i32 %38)
  store %struct.page* %39, %struct.page** %10, align 8
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = call i32 @IS_ERR(%struct.page* %41)
  %43 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %40, i32 %42)
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = load i32, i32* @NODE, align 4
  %46 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %44, i32 %45, i32 1, i32 1)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.page*, %struct.page** %5, align 8
  %49 = call i8* @inline_data_addr(%struct.inode* %47, %struct.page* %48)
  store i8* %49, i8** %8, align 8
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = load %struct.page*, %struct.page** %10, align 8
  %52 = call i8* @inline_data_addr(%struct.inode* %50, %struct.page* %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call i32 @MAX_INLINE_DATA(%struct.inode* %55)
  %57 = call i32 @memcpy(i8* %53, i8* %54, i32 %56)
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load i32, i32* @FI_INLINE_DATA, align 4
  %60 = call i32 @set_inode_flag(%struct.inode* %58, i32 %59)
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load i32, i32* @FI_DATA_EXIST, align 4
  %63 = call i32 @set_inode_flag(%struct.inode* %61, i32 %62)
  %64 = load %struct.page*, %struct.page** %10, align 8
  %65 = call i32 @set_page_dirty(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = call i32 @f2fs_put_page(%struct.page* %66, i32 1)
  store i32 1, i32* %3, align 4
  br label %108

68:                                               ; preds = %26, %23, %19
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i64 @f2fs_has_inline_data(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %73, i32 %76)
  store %struct.page* %77, %struct.page** %10, align 8
  %78 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = call i32 @IS_ERR(%struct.page* %79)
  %81 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %78, i32 %80)
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = load %struct.page*, %struct.page** %10, align 8
  %84 = call i32 @f2fs_truncate_inline_inode(%struct.inode* %82, %struct.page* %83, i32 0)
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load i32, i32* @FI_INLINE_DATA, align 4
  %87 = call i32 @clear_inode_flag(%struct.inode* %85, i32 %86)
  %88 = load %struct.page*, %struct.page** %10, align 8
  %89 = call i32 @f2fs_put_page(%struct.page* %88, i32 1)
  br label %107

90:                                               ; preds = %68
  %91 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %92 = icmp ne %struct.f2fs_inode* %91, null
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load %struct.f2fs_inode*, %struct.f2fs_inode** %7, align 8
  %95 = getelementptr inbounds %struct.f2fs_inode, %struct.f2fs_inode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @F2FS_INLINE_DATA, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = call i64 @f2fs_truncate_blocks(%struct.inode* %101, i32 0, i32 0)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %108

105:                                              ; preds = %100
  br label %34

106:                                              ; preds = %93, %90
  br label %107

107:                                              ; preds = %106, %72
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %104, %34
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @IS_INODE(%struct.page*) #1

declare dso_local %struct.f2fs_inode* @F2FS_INODE(%struct.page*) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i8* @inline_data_addr(%struct.inode*, %struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MAX_INLINE_DATA(%struct.inode*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_truncate_inline_inode(%struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @f2fs_truncate_blocks(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
