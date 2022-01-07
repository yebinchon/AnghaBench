; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_ag_btcur_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_ag_btcur_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xchk_ag = type { i32*, i32*, i32*, i32*, i32*, i32* }

@XFS_BTREE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_ag_btcur_free(%struct.xchk_ag* %0) #0 {
  %2 = alloca %struct.xchk_ag*, align 8
  store %struct.xchk_ag* %0, %struct.xchk_ag** %2, align 8
  %3 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %4 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %9 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %12 = call i32 @xfs_btree_del_cursor(i32* %10, i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %15 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %20 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %23 = call i32 @xfs_btree_del_cursor(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %26 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %31 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %34 = call i32 @xfs_btree_del_cursor(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %37 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %42 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %45 = call i32 @xfs_btree_del_cursor(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %48 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %53 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %56 = call i32 @xfs_btree_del_cursor(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %59 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %64 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @XFS_BTREE_ERROR, align 4
  %67 = call i32 @xfs_btree_del_cursor(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %70 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %69, i32 0, i32 5
  store i32* null, i32** %70, align 8
  %71 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %72 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %71, i32 0, i32 4
  store i32* null, i32** %72, align 8
  %73 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %74 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  %75 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %76 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  %77 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %78 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load %struct.xchk_ag*, %struct.xchk_ag** %2, align 8
  %80 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  ret void
}

declare dso_local i32 @xfs_btree_del_cursor(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
