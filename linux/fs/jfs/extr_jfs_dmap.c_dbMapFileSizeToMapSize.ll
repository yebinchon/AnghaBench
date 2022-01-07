; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbMapFileSizeToMapSize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbMapFileSizeToMapSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MAXL1PAGES = common dso_local global i32 0, align 4
@MAXL0PAGES = common dso_local global i32 0, align 4
@LPERCTL = common dso_local global i32 0, align 4
@L2BPERDMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbMapFileSizeToMapSize(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %3, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %16, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %22, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BMAPPGTOLEV(i32 %28)
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 2, %32
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %85, %1
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @MAXL1PAGES, align 4
  br label %55

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @MAXL0PAGES, align 4
  br label %53

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 1, %52 ]
  br label %55

55:                                               ; preds = %53, %45
  %56 = phi i32 [ %46, %45 ], [ %54, %53 ]
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @LPERCTL, align 4
  %65 = load i32, i32* @LPERCTL, align 4
  %66 = mul nsw i32 %64, %65
  br label %75

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @LPERCTL, align 4
  br label %73

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 1, %72 ]
  br label %75

75:                                               ; preds = %73, %63
  %76 = phi i32 [ %66, %63 ], [ %74, %73 ]
  %77 = mul nsw i32 %60, %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %10, align 4
  %82 = srem i32 %80, %81
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  br label %39

88:                                               ; preds = %39
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @L2BPERDMAP, align 4
  %91 = shl i32 %89, %90
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_2__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @BMAPPGTOLEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
