; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_free_check_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_free_check_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_rmap_irec = type { i32, i64, i64, i64 }

@XFS_RMAP_OWN_UNKNOWN = common dso_local global i64 0, align 8
@XFS_RMAP_UNWRITTEN = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@XFS_RMAP_BMBT_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i64, %struct.xfs_rmap_irec*, i64, i64, i64, i32)* @xfs_rmap_free_check_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_rmap_free_check_owner(%struct.xfs_mount* %0, i64 %1, %struct.xfs_rmap_irec* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_mount*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfs_rmap_irec*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.xfs_rmap_irec* %2, %struct.xfs_rmap_irec** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* @XFS_RMAP_OWN_UNKNOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %88

21:                                               ; preds = %7
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %11, align 8
  %27 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XFS_RMAP_UNWRITTEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %25, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @out, align 4
  %34 = call i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount* %22, i32 %32, i32 %33)
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %11, align 8
  %38 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* @out, align 4
  %43 = call i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount* %35, i32 %41, i32 %42)
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @XFS_RMAP_NON_INODE_OWNER(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %21
  br label %86

48:                                               ; preds = %21
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %55 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %11, align 8
  %56 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @XFS_RMAP_BMBT_BLOCK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @out, align 4
  %61 = call i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount* %54, i32 %59, i32 %60)
  br label %85

62:                                               ; preds = %48
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %64 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %11, align 8
  %65 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp sle i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @out, align 4
  %71 = call i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount* %63, i32 %69, i32 %70)
  %72 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.xfs_rmap_irec*, %struct.xfs_rmap_irec** %11, align 8
  %75 = getelementptr inbounds %struct.xfs_rmap_irec, %struct.xfs_rmap_irec* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %78, %79
  %81 = icmp sge i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* @out, align 4
  %84 = call i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount* %72, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %62, %53
  br label %86

86:                                               ; preds = %85, %47
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %20
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @XFS_WANT_CORRUPTED_GOTO(%struct.xfs_mount*, i32, i32) #1

declare dso_local i64 @XFS_RMAP_NON_INODE_OWNER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
