; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.gnet_dump = type { i32 }
%struct.drr_class = type { i32, i32, i32, %struct.Qdisc* }
%struct.tc_drr_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @drr_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.drr_class*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca %struct.tc_drr_stats, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.drr_class*
  store %struct.drr_class* %13, %struct.drr_class** %8, align 8
  %14 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %15 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %14, i32 0, i32 3
  %16 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %17 = call i64 @qdisc_qlen_sum(%struct.Qdisc* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %19 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %18, i32 0, i32 3
  %20 = load %struct.Qdisc*, %struct.Qdisc** %19, align 8
  store %struct.Qdisc* %20, %struct.Qdisc** %10, align 8
  %21 = call i32 @memset(%struct.tc_drr_stats* %11, i32 0, i32 4)
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %26 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.tc_drr_stats, %struct.tc_drr_stats* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %31 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %30)
  %32 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %33 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %34 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %33, i32 0, i32 1
  %35 = call i64 @gnet_stats_copy_basic(i32 %31, %struct.gnet_dump* %32, i32* null, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %29
  %38 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %39 = load %struct.drr_class*, %struct.drr_class** %8, align 8
  %40 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %39, i32 0, i32 0
  %41 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %38, i32* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %45 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %46 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %49 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %44, i32 %47, i32* %49, i64 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43, %37, %29
  store i32 -1, i32* %4, align 4
  br label %57

54:                                               ; preds = %43
  %55 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %56 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %55, %struct.tc_drr_stats* %11, i32 4)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @qdisc_qlen_sum(%struct.Qdisc*) #1

declare dso_local i32 @memset(%struct.tc_drr_stats*, i32, i32) #1

declare dso_local i64 @gnet_stats_copy_basic(i32, %struct.gnet_dump*, i32*, i32*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, i32, i32*, i64) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.tc_drr_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
