; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_qd_shrink_scan.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_qd_shrink_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }
%struct.shrink_control = type { i32 }

@dispose = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@SHRINK_STOP = common dso_local global i64 0, align 8
@gfs2_qd_lru = common dso_local global i32 0, align 4
@gfs2_qd_isolate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.shrinker*, %struct.shrink_control*)* @gfs2_qd_shrink_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfs2_qd_shrink_scan(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.shrinker*, align 8
  %5 = alloca %struct.shrink_control*, align 8
  %6 = alloca i64, align 8
  store %struct.shrinker* %0, %struct.shrinker** %4, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %5, align 8
  %7 = load i32, i32* @dispose, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %10 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @__GFP_FS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @SHRINK_STOP, align 8
  store i64 %16, i64* %3, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %19 = load i32, i32* @gfs2_qd_isolate, align 4
  %20 = call i64 @list_lru_shrink_walk(i32* @gfs2_qd_lru, %struct.shrink_control* %18, i32 %19, i32* @dispose)
  store i64 %20, i64* %6, align 8
  %21 = call i32 @gfs2_qd_dispose(i32* @dispose)
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @list_lru_shrink_walk(i32*, %struct.shrink_control*, i32, i32*) #1

declare dso_local i32 @gfs2_qd_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
