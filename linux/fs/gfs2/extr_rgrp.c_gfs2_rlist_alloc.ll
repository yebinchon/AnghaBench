; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rlist_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rlist_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrp_list = type { i32, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rlist_alloc(%struct.gfs2_rgrp_list* %0) #0 {
  %2 = alloca %struct.gfs2_rgrp_list*, align 8
  %3 = alloca i32, align 4
  store %struct.gfs2_rgrp_list* %0, %struct.gfs2_rgrp_list** %2, align 8
  %4 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = load i32, i32* @__GFP_NOFAIL, align 4
  %9 = or i32 %7, %8
  %10 = call i32* @kmalloc_array(i32 %6, i32 4, i32 %9)
  %11 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %12 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %37, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %30 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %31 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @gfs2_holder_init(i32 %28, i32 %29, i32 0, i32* %35)
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %13

40:                                               ; preds = %13
  ret void
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
