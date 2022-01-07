; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign_p.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.buffer_head*, i32, i32 }
%struct.buffer_head = type { i32 }
%union.nilfs_binfo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nilfs_btree_node = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.buffer_head**, i32, %union.nilfs_binfo*)* @nilfs_btree_assign_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_assign_p(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, %struct.buffer_head** %3, i32 %4, %union.nilfs_binfo* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nilfs_bmap*, align 8
  %9 = alloca %struct.nilfs_btree_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.nilfs_binfo*, align 8
  %14 = alloca %struct.nilfs_btree_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %8, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %11, align 8
  store i32 %4, i32* %12, align 4
  store %union.nilfs_binfo* %5, %union.nilfs_binfo** %13, align 8
  %19 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %20 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  %23 = call %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap* %19, %struct.nilfs_btree_path* %20, i32 %22, i32* %17)
  store %struct.nilfs_btree_node* %23, %struct.nilfs_btree_node** %14, align 8
  %24 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %25 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %25, i64 %28
  %30 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %24, i32 %31, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %34, align 8
  %36 = call i64 @buffer_nilfs_node(%struct.buffer_head* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %6
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %40, i64 %42
  %44 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %47, i64 %49
  %51 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 8
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %53, align 8
  %55 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %55, i64 %57
  %59 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store %struct.buffer_head* %54, %struct.buffer_head** %60, align 8
  %61 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %62 = call %struct.TYPE_7__* @NILFS_BMAP_I(%struct.nilfs_bmap* %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %64, i64 %66
  %68 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %67, i32 0, i32 1
  %69 = call i32 @nilfs_btnode_prepare_change_key(i32* %63, %struct.TYPE_6__* %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %38
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %7, align 4
  br label %122

74:                                               ; preds = %38
  %75 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %8, align 8
  %76 = call %struct.TYPE_7__* @NILFS_BMAP_I(%struct.nilfs_bmap* %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %78, i64 %80
  %82 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %81, i32 0, i32 1
  %83 = call i32 @nilfs_btnode_commit_change_key(i32* %77, %struct.TYPE_6__* %82)
  %84 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %84, i64 %86
  %88 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.buffer_head*, %struct.buffer_head** %89, align 8
  %91 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %90, %struct.buffer_head** %91, align 8
  br label %92

92:                                               ; preds = %74, %6
  %93 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %94 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %94, i64 %97
  %99 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @nilfs_btree_node_set_ptr(%struct.nilfs_btree_node* %93, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %14, align 8
  %105 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %105, i64 %108
  %110 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %104, i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @cpu_to_le64(i32 %113)
  %115 = load %union.nilfs_binfo*, %union.nilfs_binfo** %13, align 8
  %116 = bitcast %union.nilfs_binfo* %115 to %struct.TYPE_5__*
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load %union.nilfs_binfo*, %union.nilfs_binfo** %13, align 8
  %120 = bitcast %union.nilfs_binfo* %119 to %struct.TYPE_5__*
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %92, %72
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i64 @buffer_nilfs_node(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_btnode_prepare_change_key(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btnode_commit_change_key(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @nilfs_btree_node_set_ptr(%struct.nilfs_btree_node*, i32, i32, i32) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
