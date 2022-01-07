; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_map_raw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_map_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32 }
%struct.xfs_rmap_irec = type { i32, i32, i32, i32, i32 }
%struct.xfs_owner_info = type { i32, i32, i32 }

@XFS_RMAP_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_OWNER_INFO_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@XFS_OWNER_INFO_BMBT_BLOCK = common dso_local global i32 0, align 4
@XFS_RMAP_UNWRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rmap_map_raw(%struct.xfs_btree_cur* %0, %struct.xfs_rmap_irec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_btree_cur*, align 8
  %5 = alloca %struct.xfs_rmap_irec*, align 8
  %6 = alloca %struct.xfs_owner_info, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %4, align 8
  store %struct.xfs_rmap_irec* %1, %struct.xfs_rmap_irec** %5, align 8
  %7 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %8 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %6, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %6, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XFS_RMAP_ATTR_FORK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @XFS_OWNER_INFO_ATTR_FORK, align 4
  %24 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* @XFS_OWNER_INFO_BMBT_BLOCK, align 4
  %36 = getelementptr inbounds %struct.xfs_owner_info, %struct.xfs_owner_info* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %46 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @XFS_RMAP_NON_INODE_OWNER(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %44, %39
  %51 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %52 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @xfs_rmap_map(%struct.xfs_btree_cur* %51, i32 %54, i32 %57, i32 %62, %struct.xfs_owner_info* %6)
  store i32 %63, i32* %3, align 4
  br label %78

64:                                               ; preds = %44
  %65 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %66 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %67 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %70 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @xfs_rmap_map_shared(%struct.xfs_btree_cur* %65, i32 %68, i32 %71, i32 %76, %struct.xfs_owner_info* %6)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %64, %50
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @XFS_RMAP_NON_INODE_OWNER(i32) #1

declare dso_local i32 @xfs_rmap_map(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_rmap_map_shared(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
