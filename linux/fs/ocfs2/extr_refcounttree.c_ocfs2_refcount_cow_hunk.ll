; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cow_hunk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cow_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.ocfs2_cow_context = type { i32, i32, i32, %struct.buffer_head*, %struct.ocfs2_refcount_tree*, i64, i64, %struct.inode* }
%struct.TYPE_4__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocfs2_duplicate_clusters_by_page = common dso_local global i32 0, align 4
@ocfs2_di_get_clusters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i64)* @ocfs2_refcount_cow_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_refcount_cow_hunk(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_refcount_tree*, align 8
  %18 = alloca %struct.ocfs2_cow_context*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocfs2_super* @OCFS2_SB(i32 %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %14, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %26, %struct.ocfs2_dinode** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store %struct.ocfs2_cow_context* null, %struct.ocfs2_cow_context** %18, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @ocfs2_is_refcount_inode(%struct.inode* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %35 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @ocfs2_refcount_cal_cow_clusters(%struct.inode* %33, i32* %36, i64 %37, i64 %38, i64 %39, i64* %12, i64* %13)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %5
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %126

46:                                               ; preds = %5
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @trace_ocfs2_refcount_cow_hunk(i32 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55)
  %57 = load i64, i64* %13, align 8
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i32, i32* @GFP_NOFS, align 4
  %62 = call %struct.ocfs2_cow_context* @kzalloc(i32 56, i32 %61)
  store %struct.ocfs2_cow_context* %62, %struct.ocfs2_cow_context** %18, align 8
  %63 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %64 = icmp ne %struct.ocfs2_cow_context* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %46
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %126

70:                                               ; preds = %46
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %72 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %73 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le64_to_cpu(i32 %74)
  %76 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %71, i32 %75, i32 1, %struct.ocfs2_refcount_tree** %17, %struct.buffer_head** %16)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %126

82:                                               ; preds = %70
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %85 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %84, i32 0, i32 7
  store %struct.inode* %83, %struct.inode** %85, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %88 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %87, i32 0, i32 6
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %91 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %90, i32 0, i32 5
  store i64 %89, i64* %91, align 8
  %92 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %17, align 8
  %93 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %94 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %93, i32 0, i32 4
  store %struct.ocfs2_refcount_tree* %92, %struct.ocfs2_refcount_tree** %94, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %96 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %97 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %96, i32 0, i32 3
  store %struct.buffer_head* %95, %struct.buffer_head** %97, align 8
  %98 = load i32, i32* @ocfs2_duplicate_clusters_by_page, align 4
  %99 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %100 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @ocfs2_di_get_clusters, align 4
  %102 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %103 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %105 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %104, i32 0, i32 0
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call i32 @INODE_CACHE(%struct.inode* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %109 = call i32 @ocfs2_init_dinode_extent_tree(i32* %105, i32 %107, %struct.buffer_head* %108)
  %110 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %111 = call i32 @ocfs2_replace_cow(%struct.ocfs2_cow_context* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %82
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @mlog_errno(i32 %115)
  br label %117

117:                                              ; preds = %114, %82
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %118, i64 %119)
  %121 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %122 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %17, align 8
  %123 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %121, %struct.ocfs2_refcount_tree* %122, i32 1)
  %124 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  br label %126

126:                                              ; preds = %117, %79, %65, %43
  %127 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %18, align 8
  %128 = call i32 @kfree(%struct.ocfs2_cow_context* %127)
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_is_refcount_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_refcount_cal_cow_clusters(%struct.inode*, i32*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_refcount_cow_hunk(i32, i64, i64, i64, i64, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_cow_context* @kzalloc(i32, i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(i32*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_replace_cow(%struct.ocfs2_cow_context*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.ocfs2_cow_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
