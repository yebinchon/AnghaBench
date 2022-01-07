; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_dq_get_next_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_dq_get_next_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_bmbt_irec = type { i32 }
%struct.xfs_iext_cursor = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i32, i32*)* @xfs_dq_get_next_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dq_get_next_id(%struct.xfs_mount* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_bmbt_irec, align 4
  %12 = alloca %struct.xfs_iext_cursor, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.xfs_inode* @xfs_quota_inode(%struct.xfs_mount* %15, i32 %16)
  store %struct.xfs_inode* %17, %struct.xfs_inode** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %99

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %99

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %41, %46
  store i32 %47, i32* %13, align 4
  %48 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %49 = call i32 @xfs_ilock_data_map_shared(%struct.xfs_inode* %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %51 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @XFS_IFEXTENTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %40
  %58 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %59 = load i32, i32* @XFS_DATA_FORK, align 4
  %60 = call i32 @xfs_iread_extents(i32* null, %struct.xfs_inode* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %4, align 4
  br label %99

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %69 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %68, i32 0, i32 0
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @xfs_iext_lookup_extent(%struct.xfs_inode* %67, %struct.TYPE_4__* %69, i32 %70, %struct.xfs_iext_cursor* %12, %struct.xfs_bmbt_irec* %11)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %13, align 4
  %80 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %11, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %85 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %83, %88
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %66
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %91, %81
  %95 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @xfs_iunlock(%struct.xfs_inode* %95, i32 %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %63, %37, %25
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.xfs_inode* @xfs_quota_inode(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_ilock_data_map_shared(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_iread_extents(i32*, %struct.xfs_inode*, i32) #1

declare dso_local i64 @xfs_iext_lookup_extent(%struct.xfs_inode*, %struct.TYPE_4__*, i32, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
