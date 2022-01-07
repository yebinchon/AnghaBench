; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_bmap_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_bmap_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_btree = type { i32, i32, i32, %struct.TYPE_5__*, %struct.inode* }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_bmap_reserve(%struct.hfs_btree* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %10 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %9, i32 0, i32 4
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  br label %12

12:                                               ; preds = %25, %2
  %13 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %14 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %12
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @hfs_extend_file(%struct.inode* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %32 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = call %struct.TYPE_4__* @HFS_SB(%struct.TYPE_5__* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %30, %36
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %47 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %45, %50
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call %struct.TYPE_6__* @HFS_I(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @inode_set_bytes(%struct.inode* %55, i32 %58)
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %64 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %62, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %69 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %73 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %78 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %12

79:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @hfs_extend_file(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @HFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @HFS_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @inode_set_bytes(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
