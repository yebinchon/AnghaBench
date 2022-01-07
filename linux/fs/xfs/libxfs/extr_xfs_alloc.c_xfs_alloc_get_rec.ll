; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_get_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_get_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i64, %struct.TYPE_5__, %struct.xfs_mount* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_mount = type { i32 }
%union.xfs_btree_rec = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s Freespace BTree record corruption in AG %d detected!\00", align 1
@XFS_BTNUM_BNO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Block\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"start block 0x%x block count 0x%x\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_alloc_get_rec(%struct.xfs_btree_cur* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_btree_cur*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.xfs_btree_rec*, align 8
  %13 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %14, i32 0, i32 2
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  store %struct.xfs_mount* %16, %struct.xfs_mount** %10, align 8
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @xfs_btree_get_rec(%struct.xfs_btree_cur* %22, %union.xfs_btree_rec** %12, i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27, %4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %101

33:                                               ; preds = %27
  %34 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %12, align 8
  %35 = bitcast %union.xfs_btree_rec* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @be32_to_cpu(i32 %37)
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  %40 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %12, align 8
  %41 = bitcast %union.xfs_btree_rec* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @be32_to_cpu(i32 %43)
  %45 = ptrtoint i8* %44 to i64
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %82

51:                                               ; preds = %33
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %52, i64 %53, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %82

59:                                               ; preds = %51
  %60 = load i8**, i8*** %7, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = icmp ugt i8* %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %82

69:                                               ; preds = %59
  %70 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i8**, i8*** %7, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 -1
  %78 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %70, i64 %71, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %82

81:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %101

82:                                               ; preds = %80, %68, %58, %50
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %84 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %85 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @xfs_warn(%struct.xfs_mount* %83, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %90, i64 %91)
  %93 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %94 = load i8**, i8*** %7, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = load i64*, i64** %8, align 8
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @xfs_warn(%struct.xfs_mount* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %95, i64 %97)
  %99 = load i32, i32* @EFSCORRUPTED, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %82, %81, %31
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @xfs_btree_get_rec(%struct.xfs_btree_cur*, %union.xfs_btree_rec**, i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_verify_agbno(%struct.xfs_mount*, i64, i8*) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
