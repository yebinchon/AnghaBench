; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_check_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_check_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.xfs_btree_ptr = type { i32 }

@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Inode %llu fork %d: Corrupt btree %d pointer at level %d index %d.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"AG %u: Corrupt btree %d pointer at level %d index %d.\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, i32, i32)* @xfs_btree_check_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_btree_check_ptr(%struct.xfs_btree_cur* %0, %union.xfs_btree_ptr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_btree_cur*, align 8
  %7 = alloca %union.xfs_btree_ptr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %6, align 8
  store %union.xfs_btree_ptr* %1, %union.xfs_btree_ptr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %11 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %4
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %18 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %7, align 8
  %19 = bitcast %union.xfs_btree_ptr* %18 to i32*
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be64_to_cpu(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @xfs_btree_check_lptr(%struct.xfs_btree_cur* %17, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %82

29:                                               ; preds = %16
  %30 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %31 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %34 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %41 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @xfs_err(i32 %32, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44, i32 %47, i32 %48, i32 %49)
  br label %79

51:                                               ; preds = %4
  %52 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %53 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %7, align 8
  %54 = bitcast %union.xfs_btree_ptr* %53 to i32*
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @xfs_btree_check_sptr(%struct.xfs_btree_cur* %52, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %82

64:                                               ; preds = %51
  %65 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %66 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %69 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %74 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @xfs_err(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %64, %29
  %80 = load i32, i32* @EFSCORRUPTED, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %63, %28
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @xfs_btree_check_lptr(%struct.xfs_btree_cur*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_err(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i64 @xfs_btree_check_sptr(%struct.xfs_btree_cur*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
