; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i64 }
%struct.dnode_of_data = type { i32, i64 }
%struct.page = type { i32 }

@LOOKUP_NODE_RA = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_truncate_blocks(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca %struct.dnode_of_data, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %14)
  store %struct.f2fs_sb_info* %15, %struct.f2fs_sb_info** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @trace_f2fs_truncate_blocks_enter(%struct.inode* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @F2FS_BLK_ALIGN(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %23 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %116

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %32 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %34, i32 %37)
  store %struct.page* %38, %struct.page** %12, align 8
  %39 = load %struct.page*, %struct.page** %12, align 8
  %40 = call i64 @IS_ERR(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.page*, %struct.page** %12, align 8
  %44 = call i32 @PTR_ERR(%struct.page* %43)
  store i32 %44, i32* %11, align 4
  br label %109

45:                                               ; preds = %33
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call i64 @f2fs_has_inline_data(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = load %struct.page*, %struct.page** %12, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @f2fs_truncate_inline_inode(%struct.inode* %50, %struct.page* %51, i32 %52)
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = call i32 @f2fs_put_page(%struct.page* %54, i32 1)
  store i32 1, i32* %13, align 4
  br label %109

56:                                               ; preds = %45
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = load %struct.page*, %struct.page** %12, align 8
  %59 = call i32 @set_new_dnode(%struct.dnode_of_data* %8, %struct.inode* %57, %struct.page* %58, i32* null, i32 0)
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* @LOOKUP_NODE_RA, align 4
  %62 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %8, i64 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %105

71:                                               ; preds = %65
  br label %109

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = call i32 @ADDRS_PER_PAGE(i32 %74, %struct.inode* %75)
  store i32 %76, i32* %10, align 4
  %77 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %83, i32 %86)
  %88 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IS_INODE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91, %72
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %8, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %9, align 8
  br label %103

103:                                              ; preds = %96, %91
  %104 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %8)
  br label %105

105:                                              ; preds = %103, %70
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @f2fs_truncate_inode_blocks(%struct.inode* %106, i64 %107)
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %105, %71, %49, %42
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %114 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %113)
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %26
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @truncate_partial_data_page(%struct.inode* %120, i32 %121, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %119, %116
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @trace_f2fs_truncate_blocks_exit(%struct.inode* %125, i32 %126)
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @trace_f2fs_truncate_blocks_enter(%struct.inode*, i32) #1

declare dso_local i64 @F2FS_BLK_ALIGN(i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate_inline_inode(%struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, %struct.page*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i32 @ADDRS_PER_PAGE(i32, %struct.inode*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_INODE(i32) #1

declare dso_local i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_truncate_inode_blocks(%struct.inode*, i64) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @truncate_partial_data_page(%struct.inode*, i32, i32) #1

declare dso_local i32 @trace_f2fs_truncate_blocks_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
