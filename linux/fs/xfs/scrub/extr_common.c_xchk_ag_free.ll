; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_ag_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_ag_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32 }
%struct.xchk_ag = type { i32, i32*, i32*, i32*, i32* }

@NULLAGNUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_ag_free(%struct.xfs_scrub* %0, %struct.xchk_ag* %1) #0 {
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xchk_ag*, align 8
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  store %struct.xchk_ag* %1, %struct.xchk_ag** %4, align 8
  %5 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %6 = call i32 @xchk_ag_btcur_free(%struct.xchk_ag* %5)
  %7 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %8 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %16 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @xfs_trans_brelse(i32 %14, i32* %17)
  %19 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %20 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %11, %2
  %22 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %23 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %31 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @xfs_trans_brelse(i32 %29, i32* %32)
  %34 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %35 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %26, %21
  %37 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %38 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %46 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @xfs_trans_brelse(i32 %44, i32* %47)
  %49 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %50 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %53 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %58 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @xfs_perag_put(i32* %59)
  %61 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %62 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* @NULLAGNUMBER, align 4
  %65 = load %struct.xchk_ag*, %struct.xchk_ag** %4, align 8
  %66 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  ret void
}

declare dso_local i32 @xchk_ag_btcur_free(%struct.xchk_ag*) #1

declare dso_local i32 @xfs_trans_brelse(i32, i32*) #1

declare dso_local i32 @xfs_perag_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
