; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_go_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_go_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_holder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32 }

@GLF_DEMOTE = common dso_local global i32 0, align 4
@GLF_PENDING_DEMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rgrp_go_unlock(%struct.gfs2_holder* %0) #0 {
  %2 = alloca %struct.gfs2_holder*, align 8
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i32, align 4
  store %struct.gfs2_holder* %0, %struct.gfs2_holder** %2, align 8
  %5 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %6 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  store %struct.gfs2_rgrpd* %9, %struct.gfs2_rgrpd** %3, align 8
  %10 = load i32, i32* @GLF_DEMOTE, align 4
  %11 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %12 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %10, i32* %14)
  %16 = load i32, i32* @GLF_PENDING_DEMOTE, align 4
  %17 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %18 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %16, i32* %20)
  %22 = or i32 %15, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %24 = icmp ne %struct.gfs2_rgrpd* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %30 = call i32 @gfs2_rgrp_brelse(%struct.gfs2_rgrpd* %29)
  br label %31

31:                                               ; preds = %28, %25, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_rgrp_brelse(%struct.gfs2_rgrpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
