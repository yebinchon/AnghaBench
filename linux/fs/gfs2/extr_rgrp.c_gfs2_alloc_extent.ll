; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_alloc_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_alloc_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFS2_BLKST_DINODE = common dso_local global i32 0, align 4
@GFS2_BLKST_USED = common dso_local global i32 0, align 4
@GFS2_BLKST_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rbm*, i32, i32*)* @gfs2_alloc_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_alloc_extent(%struct.gfs2_rbm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.gfs2_rbm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gfs2_rbm, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %7, i32 0, i32 0
  %12 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %11, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 1, i32* %17, align 4
  %18 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %19 = call i32 @gfs2_rbm_to_block(%struct.gfs2_rbm* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %26 = call %struct.TYPE_4__* @rbm_bi(%struct.gfs2_rbm* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gfs2_trans_add_meta(i32 %24, i32 %28)
  %30 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @GFS2_BLKST_DINODE, align 4
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @GFS2_BLKST_USED, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @gfs2_setbit(%struct.gfs2_rbm* %30, i32 1, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %57, %37
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %7, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = call i64 @gfs2_testbit(%struct.gfs2_rbm* %7, i32 1)
  %54 = load i64, i64* @GFS2_BLKST_FREE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %47
  br label %73

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %7, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_4__* @rbm_bi(%struct.gfs2_rbm* %7)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @gfs2_trans_add_meta(i32 %61, i32 %64)
  %66 = load i32, i32* @GFS2_BLKST_USED, align 4
  %67 = call i32 @gfs2_setbit(%struct.gfs2_rbm* %7, i32 1, i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %42

73:                                               ; preds = %56, %42
  ret void
}

declare dso_local i32 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local %struct.TYPE_4__* @rbm_bi(%struct.gfs2_rbm*) #1

declare dso_local i32 @gfs2_setbit(%struct.gfs2_rbm*, i32, i32) #1

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i32) #1

declare dso_local i64 @gfs2_testbit(%struct.gfs2_rbm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
