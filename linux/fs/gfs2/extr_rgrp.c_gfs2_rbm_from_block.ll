; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rbm_from_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rbm_from_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*, i32)* @gfs2_rbm_from_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_rbm*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %7 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @rgrp_contains_block(%struct.TYPE_5__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @E2BIG, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %18, %23
  %25 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %26 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %28 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %31 = call %struct.TYPE_6__* @rbm_bi(%struct.gfs2_rbm* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %74

36:                                               ; preds = %15
  %37 = load i32, i32* @GFS2_NBBY, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 0, %38
  %40 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %50 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %48, %55
  %57 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %58 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %60 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %63 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %61, %68
  %70 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %71 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %36, %35, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @rgrp_contains_block(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_6__* @rbm_bi(%struct.gfs2_rbm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
