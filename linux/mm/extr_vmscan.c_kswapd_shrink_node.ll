; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_kswapd_shrink_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_kswapd_shrink_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.zone* }
%struct.zone = type { i32 }
%struct.scan_control = type { i64, i32, i64, i64, i64 }

@SWAP_CLUSTER_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.scan_control*)* @kswapd_shrink_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kswapd_shrink_node(%struct.TYPE_4__* %0, %struct.scan_control* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.scan_control*, align 8
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.scan_control* %1, %struct.scan_control** %4, align 8
  %7 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %8 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %12 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.zone*, %struct.zone** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.zone, %struct.zone* %18, i64 %20
  store %struct.zone* %21, %struct.zone** %5, align 8
  %22 = load %struct.zone*, %struct.zone** %5, align 8
  %23 = call i32 @managed_zone(%struct.zone* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %35

26:                                               ; preds = %15
  %27 = load %struct.zone*, %struct.zone** %5, align 8
  %28 = call i32 @high_wmark_pages(%struct.zone* %27)
  %29 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  %30 = call i64 @max(i32 %28, i32 %29)
  %31 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %32 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %26, %25
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %41 = call i32 @shrink_node(%struct.TYPE_4__* %39, %struct.scan_control* %40)
  %42 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %43 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %48 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %51 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @compact_gap(i64 %52)
  %54 = icmp sge i64 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %57 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %46, %38
  %59 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %60 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.scan_control*, %struct.scan_control** %4, align 8
  %63 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  %66 = zext i1 %65 to i32
  ret i32 %66
}

declare dso_local i32 @managed_zone(%struct.zone*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @high_wmark_pages(%struct.zone*) #1

declare dso_local i32 @shrink_node(%struct.TYPE_4__*, %struct.scan_control*) #1

declare dso_local i64 @compact_gap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
