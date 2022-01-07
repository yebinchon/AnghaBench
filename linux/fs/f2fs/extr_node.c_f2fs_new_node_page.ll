; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_new_node_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_new_node_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.dnode_of_data = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.node_info = type { i64, i64, i64, i32, i32 }

@FI_NO_ALLOC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@NEW_ADDR = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @f2fs_new_node_page(%struct.dnode_of_data* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.dnode_of_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.node_info, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %11 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.TYPE_6__* %12)
  store %struct.f2fs_sb_info* %13, %struct.f2fs_sb_info** %6, align 8
  %14 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %15 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* @FI_NO_ALLOC, align 4
  %18 = call i32 @is_inode_flag_set(%struct.TYPE_6__* %16, i32 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.page* @ERR_PTR(i32 %23)
  store %struct.page* %24, %struct.page** %3, align 8
  br label %131

25:                                               ; preds = %2
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %27 = call i32 @NODE_MAPPING(%struct.f2fs_sb_info* %26)
  %28 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %29 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.page* @f2fs_grab_cache_page(i32 %27, i32 %30, i32 0)
  store %struct.page* %31, %struct.page** %8, align 8
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.page* @ERR_PTR(i32 %36)
  store %struct.page* %37, %struct.page** %3, align 8
  br label %131

38:                                               ; preds = %25
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %40 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %41 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @inc_valid_node_count(%struct.f2fs_sb_info* %39, %struct.TYPE_6__* %42, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %124

51:                                               ; preds = %38
  %52 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %53 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.node_info, %struct.node_info* %7, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %57 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.node_info, %struct.node_info* %7, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = load i64, i64* @NULL_ADDR, align 8
  %63 = getelementptr inbounds %struct.node_info, %struct.node_info* %7, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.node_info, %struct.node_info* %7, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.node_info, %struct.node_info* %7, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %67 = load i32, i32* @NEW_ADDR, align 4
  %68 = call i32 @set_node_addr(%struct.f2fs_sb_info* %66, %struct.node_info* %7, i32 %67, i32 0)
  %69 = load %struct.page*, %struct.page** %8, align 8
  %70 = load i32, i32* @NODE, align 4
  %71 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %69, i32 %70, i32 1, i32 1)
  %72 = load %struct.page*, %struct.page** %8, align 8
  %73 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %74 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %77 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @fill_node_footer(%struct.page* %72, i32 %75, i32 %80, i32 %81, i32 1)
  %83 = load %struct.page*, %struct.page** %8, align 8
  %84 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %85 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @S_ISDIR(i32 %88)
  %90 = call i32 @set_cold_node(%struct.page* %83, i32 %89)
  %91 = load %struct.page*, %struct.page** %8, align 8
  %92 = call i32 @PageUptodate(%struct.page* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %51
  %95 = load %struct.page*, %struct.page** %8, align 8
  %96 = call i32 @SetPageUptodate(%struct.page* %95)
  br label %97

97:                                               ; preds = %94, %51
  %98 = load %struct.page*, %struct.page** %8, align 8
  %99 = call i64 @set_page_dirty(%struct.page* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %103 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @f2fs_has_xattr_block(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %110 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.dnode_of_data*, %struct.dnode_of_data** %4, align 8
  %113 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @f2fs_i_xnid_write(%struct.TYPE_6__* %111, i32 %114)
  br label %116

116:                                              ; preds = %108, %104
  %117 = load i32, i32* %5, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %121 = call i32 @inc_valid_inode_count(%struct.f2fs_sb_info* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %123, %struct.page** %3, align 8
  br label %131

124:                                              ; preds = %50
  %125 = load %struct.page*, %struct.page** %8, align 8
  %126 = call i32 @clear_node_page_dirty(%struct.page* %125)
  %127 = load %struct.page*, %struct.page** %8, align 8
  %128 = call i32 @f2fs_put_page(%struct.page* %127, i32 1)
  %129 = load i32, i32* %9, align 4
  %130 = call %struct.page* @ERR_PTR(i32 %129)
  store %struct.page* %130, %struct.page** %3, align 8
  br label %131

131:                                              ; preds = %124, %122, %34, %21
  %132 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %132
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_inode_flag_set(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(i32, i32, i32) #1

declare dso_local i32 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @inc_valid_node_count(%struct.f2fs_sb_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @set_node_addr(%struct.f2fs_sb_info*, %struct.node_info*, i32, i32) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @fill_node_footer(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @set_cold_node(%struct.page*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @set_page_dirty(%struct.page*) #1

declare dso_local i64 @f2fs_has_xattr_block(i32) #1

declare dso_local i32 @f2fs_i_xnid_write(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @inc_valid_inode_count(%struct.f2fs_sb_info*) #1

declare dso_local i32 @clear_node_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
