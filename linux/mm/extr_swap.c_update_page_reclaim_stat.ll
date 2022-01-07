; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_update_page_reclaim_stat.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_update_page_reclaim_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruvec = type { %struct.zone_reclaim_stat }
%struct.zone_reclaim_stat = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lruvec*, i32, i32)* @update_page_reclaim_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_page_reclaim_stat(%struct.lruvec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lruvec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zone_reclaim_stat*, align 8
  store %struct.lruvec* %0, %struct.lruvec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lruvec*, %struct.lruvec** %4, align 8
  %9 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %8, i32 0, i32 0
  store %struct.zone_reclaim_stat* %9, %struct.zone_reclaim_stat** %7, align 8
  %10 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %7, align 8
  %11 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.zone_reclaim_stat*, %struct.zone_reclaim_stat** %7, align 8
  %22 = getelementptr inbounds %struct.zone_reclaim_stat, %struct.zone_reclaim_stat* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %20, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
