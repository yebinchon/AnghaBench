; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qdsb_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qdsb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.gfs2_quota_data = type { i32 }
%struct.kqid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32, %struct.gfs2_quota_data**)* @qdsb_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdsb_get(%struct.gfs2_sbd* %0, i32 %1, %struct.gfs2_quota_data** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqid, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_quota_data**, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store %struct.gfs2_quota_data** %2, %struct.gfs2_quota_data*** %7, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %11 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %12 = getelementptr inbounds %struct.kqid, %struct.kqid* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @qd_get(%struct.gfs2_sbd* %10, i32 %13, %struct.gfs2_quota_data** %11)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %21 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %20, align 8
  %22 = call i32 @slot_get(%struct.gfs2_quota_data* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %28 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %27, align 8
  %29 = call i32 @bh_get(%struct.gfs2_quota_data* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %43

34:                                               ; preds = %32
  %35 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %36 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %35, align 8
  %37 = call i32 @slot_put(%struct.gfs2_quota_data* %36)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %7, align 8
  %40 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %39, align 8
  %41 = call i32 @qd_put(%struct.gfs2_quota_data* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %33, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @qd_get(%struct.gfs2_sbd*, i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @slot_get(%struct.gfs2_quota_data*) #1

declare dso_local i32 @bh_get(%struct.gfs2_quota_data*) #1

declare dso_local i32 @slot_put(%struct.gfs2_quota_data*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
