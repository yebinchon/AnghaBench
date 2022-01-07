; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_split.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.xfs_inode* }
%struct.xfs_inode = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i8*, i32, i32 }

@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leafn_split(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_inode*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  store %struct.xfs_inode* %17, %struct.xfs_inode** %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = call i32 @xfs_da_grow_inode(%struct.TYPE_18__* %25, i32* %9)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %114

31:                                               ; preds = %3
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @xfs_dir2_da_to_db(i32 %35, i32 %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %41 = call i32 @xfs_dir3_leaf_get_buf(%struct.TYPE_18__* %32, i32 %37, i32* %39, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %114

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = call i32 @xfs_dir2_leafn_rebalance(%struct.TYPE_16__* %53, %struct.TYPE_17__* %54, %struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = call i32 @xfs_da3_blk_link(%struct.TYPE_16__* %57, %struct.TYPE_17__* %58, %struct.TYPE_17__* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %114

65:                                               ; preds = %46
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @xfs_dir2_leafn_add(i32 %73, %struct.TYPE_18__* %74, i32 %77)
  store i32 %78, i32* %10, align 4
  br label %88

79:                                               ; preds = %65
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @xfs_dir2_leafn_add(i32 %82, %struct.TYPE_18__* %83, i32 %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %79, %70
  %89 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @xfs_dir2_leaf_lasthash(%struct.xfs_inode* %89, i32 %92, i32* null)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @xfs_dir2_leaf_lasthash(%struct.xfs_inode* %96, i32 %99, i32* null)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @xfs_dir3_leaf_check(%struct.xfs_inode* %103, i32 %106)
  %108 = load %struct.xfs_inode*, %struct.xfs_inode** %11, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @xfs_dir3_leaf_check(%struct.xfs_inode* %108, i32 %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %88, %63, %44, %29
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @xfs_dir3_leaf_get_buf(%struct.TYPE_18__*, i32, i32*, i64) #1

declare dso_local i32 @xfs_dir2_da_to_db(i32, i32) #1

declare dso_local i32 @xfs_dir2_leafn_rebalance(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @xfs_da3_blk_link(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @xfs_dir2_leafn_add(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i8* @xfs_dir2_leaf_lasthash(%struct.xfs_inode*, i32, i32*) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
