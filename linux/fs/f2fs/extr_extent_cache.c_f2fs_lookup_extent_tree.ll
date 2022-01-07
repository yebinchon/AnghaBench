; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_lookup_extent_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_lookup_extent_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_info = type { i64, i64 }
%struct.f2fs_sb_info = type { i32, i32 }
%struct.extent_tree = type { i32, %struct.extent_node*, i32, %struct.extent_info }
%struct.extent_node = type { i32, %struct.extent_info }
%struct.TYPE_2__ = type { %struct.extent_tree* }
%struct.rb_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.extent_info*)* @f2fs_lookup_extent_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_lookup_extent_tree(%struct.inode* %0, i64 %1, %struct.extent_info* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.extent_info*, align 8
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca %struct.extent_tree*, align 8
  %9 = alloca %struct.extent_node*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.extent_info* %2, %struct.extent_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.extent_tree*, %struct.extent_tree** %15, align 8
  store %struct.extent_tree* %16, %struct.extent_tree** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %18 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %19 = icmp ne %struct.extent_tree* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %17, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @trace_f2fs_lookup_extent_tree_start(%struct.inode* %23, i64 %24)
  %26 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %27 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %26, i32 0, i32 0
  %28 = call i32 @read_lock(i32* %27)
  %29 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %30 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %3
  %36 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %37 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %41 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = load i64, i64* %5, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load %struct.extent_info*, %struct.extent_info** %6, align 8
  %49 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %50 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %49, i32 0, i32 3
  %51 = bitcast %struct.extent_info* %48 to i8*
  %52 = bitcast %struct.extent_info* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  store i32 1, i32* %10, align 4
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %54 = call i32 @stat_inc_largest_node_hit(%struct.f2fs_sb_info* %53)
  br label %106

55:                                               ; preds = %35, %3
  %56 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %57 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %56, i32 0, i32 2
  %58 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %59 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %58, i32 0, i32 1
  %60 = load %struct.extent_node*, %struct.extent_node** %59, align 8
  %61 = bitcast %struct.extent_node* %60 to %struct.rb_entry*
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @f2fs_lookup_rb_tree(i32* %57, %struct.rb_entry* %61, i64 %62)
  %64 = inttoptr i64 %63 to %struct.extent_node*
  store %struct.extent_node* %64, %struct.extent_node** %9, align 8
  %65 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %66 = icmp ne %struct.extent_node* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %55
  br label %106

68:                                               ; preds = %55
  %69 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %70 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %71 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %70, i32 0, i32 1
  %72 = load %struct.extent_node*, %struct.extent_node** %71, align 8
  %73 = icmp eq %struct.extent_node* %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %76 = call i32 @stat_inc_cached_node_hit(%struct.f2fs_sb_info* %75)
  br label %80

77:                                               ; preds = %68
  %78 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %79 = call i32 @stat_inc_rbtree_node_hit(%struct.f2fs_sb_info* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.extent_info*, %struct.extent_info** %6, align 8
  %82 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %83 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %82, i32 0, i32 1
  %84 = bitcast %struct.extent_info* %81 to i8*
  %85 = bitcast %struct.extent_info* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %87 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %86, i32 0, i32 0
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %90 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %89, i32 0, i32 0
  %91 = call i32 @list_empty(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %80
  %94 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %95 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %94, i32 0, i32 0
  %96 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %97 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %96, i32 0, i32 1
  %98 = call i32 @list_move_tail(i32* %95, i32* %97)
  %99 = load %struct.extent_node*, %struct.extent_node** %9, align 8
  %100 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %101 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %100, i32 0, i32 1
  store %struct.extent_node* %99, %struct.extent_node** %101, align 8
  br label %102

102:                                              ; preds = %93, %80
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %104 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  store i32 1, i32* %10, align 4
  br label %106

106:                                              ; preds = %102, %67, %47
  %107 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %108 = call i32 @stat_inc_total_hit(%struct.f2fs_sb_info* %107)
  %109 = load %struct.extent_tree*, %struct.extent_tree** %8, align 8
  %110 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %109, i32 0, i32 0
  %111 = call i32 @read_unlock(i32* %110)
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.extent_info*, %struct.extent_info** %6, align 8
  %115 = call i32 @trace_f2fs_lookup_extent_tree_end(%struct.inode* %112, i64 %113, %struct.extent_info* %114)
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_lookup_extent_tree_start(%struct.inode*, i64) #1

declare dso_local i32 @read_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @stat_inc_largest_node_hit(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_lookup_rb_tree(i32*, %struct.rb_entry*, i64) #1

declare dso_local i32 @stat_inc_cached_node_hit(%struct.f2fs_sb_info*) #1

declare dso_local i32 @stat_inc_rbtree_node_hit(%struct.f2fs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @stat_inc_total_hit(%struct.f2fs_sb_info*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @trace_f2fs_lookup_extent_tree_end(%struct.inode*, i64, %struct.extent_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
