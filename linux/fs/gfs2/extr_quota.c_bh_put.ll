; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_bh_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_bh_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32*, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_quota_data*)* @bh_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bh_put(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca %struct.gfs2_quota_data*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %2, align 8
  %4 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  store %struct.gfs2_sbd* %9, %struct.gfs2_sbd** %3, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %14 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %15 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gfs2_assert(%struct.gfs2_sbd* %13, i32 %16)
  %18 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %19 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %1
  %24 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %25 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @brelse(i32* %26)
  %28 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %29 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %31 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
