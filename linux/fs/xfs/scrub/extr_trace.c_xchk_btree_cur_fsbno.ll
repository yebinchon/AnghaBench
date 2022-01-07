; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_trace.c_xchk_btree_cur_fsbno.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_trace.c_xchk_btree_cur_fsbno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_btree_cur*, i32)* @xchk_btree_cur_fsbno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xchk_btree_cur_fsbno(%struct.xfs_btree_cur* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_btree_cur*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %12, i32 0, i32 4
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %14, i64 %16
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %11
  %21 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %24, i32 0, i32 4
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 %28
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @XFS_DADDR_TO_FSB(i32 %23, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %11, %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %53 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @XFS_INO_TO_FSB(i32 %51, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %81

60:                                               ; preds = %41, %34
  %61 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %62 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %69 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %4, align 8
  %72 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @XFS_AGB_TO_FSB(i32 %70, i32 %75, i32 0)
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* @NULLFSBLOCK, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %67, %48, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @XFS_DADDR_TO_FSB(i32, i32) #1

declare dso_local i32 @XFS_INO_TO_FSB(i32, i32) #1

declare dso_local i32 @XFS_AGB_TO_FSB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
