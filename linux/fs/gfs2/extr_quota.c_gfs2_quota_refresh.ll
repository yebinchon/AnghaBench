; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_refresh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.kqid = type { i32 }
%struct.gfs2_quota_data = type { i32 }
%struct.gfs2_holder = type { i32 }

@FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_refresh(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kqid, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_quota_data*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %11 = getelementptr inbounds %struct.kqid, %struct.kqid* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @qd_get(%struct.gfs2_sbd* %10, i32 %12, %struct.gfs2_quota_data** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %20 = load i32, i32* @FORCE, align 4
  %21 = call i32 @do_glock(%struct.gfs2_quota_data* %19, i32 %20, %struct.gfs2_holder* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  br label %26

26:                                               ; preds = %24, %18
  %27 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %6, align 8
  %28 = call i32 @qd_put(%struct.gfs2_quota_data* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @qd_get(%struct.gfs2_sbd*, i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @do_glock(%struct.gfs2_quota_data*, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
