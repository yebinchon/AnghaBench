; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_trim_around_shared.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_reflink_trim_around_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i32 }

@NULLAGBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reflink_trim_around_shared(%struct.xfs_inode* %0, %struct.xfs_bmbt_irec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_bmbt_irec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %15 = call i32 @xfs_is_cow_inode(%struct.xfs_inode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %19 = call i32 @xfs_bmap_is_real_extent(%struct.xfs_bmbt_irec* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %3
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %76

23:                                               ; preds = %17
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %25 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %26 = call i32 @trace_xfs_reflink_trim_around_shared(%struct.xfs_inode* %24, %struct.xfs_bmbt_irec* %25)
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %31 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @XFS_FSB_TO_AGNO(i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %38 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @XFS_FSB_TO_AGBNO(i32 %36, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %42 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @xfs_reflink_find_shared(i32 %46, i32* null, i32 %47, i64 %48, i64 %49, i64* %11, i64* %12, i32 1)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %23
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %23
  %56 = load i32*, i32** %7, align 8
  store i32 0, i32* %56, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @NULLAGBLOCK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %76

61:                                               ; preds = %55
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %68 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32*, i32** %7, align 8
  store i32 1, i32* %69, align 4
  store i32 0, i32* %4, align 4
  br label %76

70:                                               ; preds = %61
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %75 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %65, %60, %53, %21
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @xfs_is_cow_inode(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_bmap_is_real_extent(%struct.xfs_bmbt_irec*) #1

declare dso_local i32 @trace_xfs_reflink_trim_around_shared(%struct.xfs_inode*, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @XFS_FSB_TO_AGNO(i32, i32) #1

declare dso_local i64 @XFS_FSB_TO_AGBNO(i32, i32) #1

declare dso_local i32 @xfs_reflink_find_shared(i32, i32*, i32, i64, i64, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
