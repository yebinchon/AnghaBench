; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rlist_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rlist_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrp_list = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rlist_free(%struct.gfs2_rgrp_list* %0) #0 {
  %2 = alloca %struct.gfs2_rgrp_list*, align 8
  %3 = alloca i32, align 4
  store %struct.gfs2_rgrp_list* %0, %struct.gfs2_rgrp_list** %2, align 8
  %4 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @kfree(i32* %6)
  %8 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %9 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @gfs2_holder_uninit(i32* %25)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %32 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %2, align 8
  %36 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @gfs2_holder_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
