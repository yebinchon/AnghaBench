; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_bmap_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_bmap_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_btree = type { i32, i32, i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.hfsplus_inode_info = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_bmap_reserve(%struct.hfs_btree* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.hfsplus_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %11 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %10, i32 0, i32 4
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %13)
  store %struct.hfsplus_inode_info* %14, %struct.hfsplus_inode_info** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %34, %18
  %20 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %21 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %28 = call i32 @hfs_bnode_need_zeroout(%struct.hfs_btree* %27)
  %29 = call i32 @hfsplus_file_extend(%struct.inode* %26, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %86

34:                                               ; preds = %25
  %35 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %7, align 8
  %36 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %39 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_2__* @HFSPLUS_SB(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %37, %43
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %7, align 8
  %48 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %7, align 8
  %50 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %53 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_2__* @HFSPLUS_SB(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %51, %57
  %59 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %7, align 8
  %60 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @inode_set_bytes(%struct.inode* %61, i32 %64)
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %70 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %68, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %75 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %79 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %84 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %19

85:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %32, %17
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @hfsplus_file_extend(%struct.inode*, i32) #1

declare dso_local i32 @hfs_bnode_need_zeroout(%struct.hfs_btree*) #1

declare dso_local %struct.TYPE_2__* @HFSPLUS_SB(i32) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
