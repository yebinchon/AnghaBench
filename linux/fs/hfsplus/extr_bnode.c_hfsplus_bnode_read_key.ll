; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bnode.c_hfsplus_bnode_read_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bnode.c_hfsplus_bnode_read_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i64, %struct.hfs_btree* }
%struct.hfs_btree = type { i32, i64, i32 }

@HFS_NODE_LEAF = common dso_local global i64 0, align 8
@HFS_TREE_VARIDXKEYS = common dso_local global i32 0, align 4
@HFSPLUS_ATTR_CNID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_read_key(%struct.hfs_bnode* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hfs_bnode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfs_btree*, align 8
  %8 = alloca i32, align 4
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %10 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %9, i32 0, i32 1
  %11 = load %struct.hfs_btree*, %struct.hfs_btree** %10, align 8
  store %struct.hfs_btree* %11, %struct.hfs_btree** %7, align 8
  %12 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %13 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HFS_NODE_LEAF, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %32, label %17

17:                                               ; preds = %3
  %18 = load %struct.hfs_btree*, %struct.hfs_btree** %7, align 8
  %19 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HFS_TREE_VARIDXKEYS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %26 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %25, i32 0, i32 1
  %27 = load %struct.hfs_btree*, %struct.hfs_btree** %26, align 8
  %28 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HFSPLUS_ATTR_CNID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24, %17, %3
  %33 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %33, i32 %34)
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %8, align 4
  br label %42

37:                                               ; preds = %24
  %38 = load %struct.hfs_btree*, %struct.hfs_btree** %7, align 8
  %39 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @hfs_bnode_read(%struct.hfs_bnode* %43, i8* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @hfs_bnode_read_u16(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @hfs_bnode_read(%struct.hfs_bnode*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
