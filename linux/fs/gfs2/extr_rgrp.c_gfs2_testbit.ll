; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_testbit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_testbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i32 }
%struct.gfs2_bitmap = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@GFS2_NBBY = common dso_local global i32 0, align 4
@GFS2_BIT_SIZE = common dso_local global i32 0, align 4
@GFS2_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*, i32)* @gfs2_testbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_testbit(%struct.gfs2_rbm* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_rbm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_bitmap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %10 = call %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm* %9)
  store %struct.gfs2_bitmap* %10, %struct.gfs2_bitmap** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %20 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  br label %28

22:                                               ; preds = %13, %2
  %23 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %24 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %37 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GFS2_NBBY, align 4
  %40 = sdiv i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  store i32* %42, i32** %7, align 8
  %43 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFS2_NBBY, align 4
  %47 = srem i32 %45, %46
  %48 = load i32, i32* @GFS2_BIT_SIZE, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = lshr i32 %51, %52
  %54 = load i32, i32* @GFS2_BIT_MASK, align 4
  %55 = and i32 %53, %54
  ret i32 %55
}

declare dso_local %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
