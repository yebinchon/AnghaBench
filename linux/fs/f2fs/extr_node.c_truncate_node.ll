; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_truncate_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i64, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.node_info = type { i32 }

@NULL_ADDR = common dso_local global i32 0, align 4
@SBI_IS_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnode_of_data*)* @truncate_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_node(%struct.dnode_of_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dnode_of_data*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.node_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %3, align 8
  %8 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %9 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.TYPE_7__* %10)
  store %struct.f2fs_sb_info* %11, %struct.f2fs_sb_info** %4, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %14 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %12, i64 %15, %struct.node_info* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %1
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %23 = getelementptr inbounds %struct.node_info, %struct.node_info* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info* %22, i32 %24)
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %27 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %28 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %31 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %34 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @dec_valid_node_count(%struct.f2fs_sb_info* %26, %struct.TYPE_7__* %29, i32 %39)
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %42 = load i32, i32* @NULL_ADDR, align 4
  %43 = call i32 @set_node_addr(%struct.f2fs_sb_info* %41, %struct.node_info* %5, i32 %42, i32 0)
  %44 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %45 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %48 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %21
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %55 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %56 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @f2fs_remove_orphan_inode(%struct.f2fs_sb_info* %54, i64 %57)
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %60 = call i32 @dec_valid_inode_count(%struct.f2fs_sb_info* %59)
  %61 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %62 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = call i32 @f2fs_inode_synced(%struct.TYPE_7__* %63)
  br label %65

65:                                               ; preds = %53, %21
  %66 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %67 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 @clear_node_page_dirty(%struct.TYPE_8__* %68)
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %71 = load i32, i32* @SBI_IS_DIRTY, align 4
  %72 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %70, i32 %71)
  %73 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %74 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  %78 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %79 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @f2fs_put_page(%struct.TYPE_8__* %80, i32 1)
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %83 = call i32 @NODE_MAPPING(%struct.f2fs_sb_info* %82)
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @invalidate_mapping_pages(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %88 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %87, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %88, align 8
  %89 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %90 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %93 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.node_info, %struct.node_info* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @trace_f2fs_truncate_node(%struct.TYPE_7__* %91, i64 %94, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %65, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.TYPE_7__*) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i64, %struct.node_info*) #1

declare dso_local i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @dec_valid_node_count(%struct.f2fs_sb_info*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_node_addr(%struct.f2fs_sb_info*, %struct.node_info*, i32, i32) #1

declare dso_local i32 @f2fs_remove_orphan_inode(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @dec_valid_inode_count(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_inode_synced(%struct.TYPE_7__*) #1

declare dso_local i32 @clear_node_page_dirty(%struct.TYPE_8__*) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @trace_f2fs_truncate_node(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
