; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign_gc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_assign_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.buffer_head = type { i32, i64 }
%union.nilfs_binfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.buffer_head**, i32, %union.nilfs_binfo*)* @nilfs_btree_assign_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_assign_gc(%struct.nilfs_bmap* %0, %struct.buffer_head** %1, i32 %2, %union.nilfs_binfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.nilfs_binfo*, align 8
  %10 = alloca %struct.nilfs_btree_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.nilfs_binfo* %3, %union.nilfs_binfo** %9, align 8
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %14 = call i32 @nilfs_bmap_get_dat(%struct.nilfs_bmap* %13)
  %15 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @nilfs_dat_move(i32 %14, i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %4
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  %28 = call i64 @buffer_nilfs_node(%struct.buffer_head* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %35, %struct.nilfs_btree_node** %10, align 8
  %36 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %37 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %36, i32 0)
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %40 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %40, align 8
  %42 = call i32 @nilfs_bmap_data_get_key(%struct.nilfs_bmap* %39, %struct.buffer_head* %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %30
  %44 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @cpu_to_le64(i32 %47)
  %49 = load %union.nilfs_binfo*, %union.nilfs_binfo** %9, align 8
  %50 = bitcast %union.nilfs_binfo* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i8* @cpu_to_le64(i32 %52)
  %54 = load %union.nilfs_binfo*, %union.nilfs_binfo** %9, align 8
  %55 = bitcast %union.nilfs_binfo* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %43, %23
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @nilfs_dat_move(i32, i32, i32) #1

declare dso_local i32 @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i64 @buffer_nilfs_node(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_bmap_data_get_key(%struct.nilfs_bmap*, %struct.buffer_head*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
