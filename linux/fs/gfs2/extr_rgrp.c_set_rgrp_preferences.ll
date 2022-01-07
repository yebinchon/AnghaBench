; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_set_rgrp_preferences.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_set_rgrp_preferences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_rgrpd = type { i32 }

@GFS2_RDF_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*)* @set_rgrp_preferences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rgrp_preferences(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca %struct.gfs2_rgrpd*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %7 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_first(%struct.gfs2_sbd* %6)
  store %struct.gfs2_rgrpd* %7, %struct.gfs2_rgrpd** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %18, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %17 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd* %16)
  store %struct.gfs2_rgrpd* %17, %struct.gfs2_rgrpd** %3, align 8
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  store %struct.gfs2_rgrpd* %22, %struct.gfs2_rgrpd** %4, align 8
  br label %23

23:                                               ; preds = %57, %21
  %24 = load i32, i32* @GFS2_RDF_PREFERRED, align 4
  %25 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %46, %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %37 = call %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd* %36)
  store %struct.gfs2_rgrpd* %37, %struct.gfs2_rgrpd** %3, align 8
  %38 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %39 = icmp ne %struct.gfs2_rgrpd* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %42 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %43 = icmp eq %struct.gfs2_rgrpd* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %35
  br label %49

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %29

49:                                               ; preds = %44, %29
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %52 = icmp ne %struct.gfs2_rgrpd* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %55 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %4, align 8
  %56 = icmp ne %struct.gfs2_rgrpd* %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %23, label %59

59:                                               ; preds = %57
  ret void
}

declare dso_local %struct.gfs2_rgrpd* @gfs2_rgrpd_get_first(%struct.gfs2_sbd*) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_rgrpd_get_next(%struct.gfs2_rgrpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
