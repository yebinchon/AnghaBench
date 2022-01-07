; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rbm_incr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rbm_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*)* @gfs2_rbm_incr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rbm_incr(%struct.gfs2_rbm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_rbm*, align 8
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %3, align 8
  %4 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %5 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  %8 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %9 = call %struct.TYPE_4__* @rbm_bi(%struct.gfs2_rbm* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  store i32 0, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %37

30:                                               ; preds = %18
  %31 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %32 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %29, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_4__* @rbm_bi(%struct.gfs2_rbm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
