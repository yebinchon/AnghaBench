; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.htb_class = type { %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.gnet_stats_queue = type { i32, i32, i32 }

@s64 = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @htb_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.htb_class*, align 8
  %9 = alloca %struct.gnet_stats_queue, align 4
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to %struct.htb_class*
  store %struct.htb_class* %12, %struct.htb_class** %8, align 8
  %13 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %9, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %9, i32 0, i32 1
  %15 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %16 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %9, i32 0, i32 2
  %19 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %20 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %23 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %3
  %27 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %28 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %34 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.gnet_stats_queue, %struct.gnet_stats_queue* %9, i32 0, i32 0
  %38 = call i32 @qdisc_qstats_qlen_backlog(i64 %36, i32* %10, i32* %37)
  br label %39

39:                                               ; preds = %32, %26, %3
  %40 = load i32, i32* @s64, align 4
  %41 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %42 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PSCHED_NS2TICKS(i32 %43)
  %45 = load i32, i32* @INT_MIN, align 4
  %46 = load i32, i32* @INT_MAX, align 4
  %47 = call i8* @clamp_t(i32 %40, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %49 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @s64, align 4
  %52 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %53 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PSCHED_NS2TICKS(i32 %54)
  %56 = load i32, i32* @INT_MIN, align 4
  %57 = load i32, i32* @INT_MAX, align 4
  %58 = call i8* @clamp_t(i32 %51, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %60 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %63 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %62)
  %64 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %65 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %66 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %65, i32 0, i32 2
  %67 = call i64 @gnet_stats_copy_basic(i32 %63, %struct.gnet_dump* %64, i32* null, i32* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %39
  %70 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %71 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %72 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %71, i32 0, i32 1
  %73 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %70, i32* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %76, i32* null, %struct.gnet_stats_queue* %9, i32 %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %69, %39
  store i32 -1, i32* %4, align 4
  br label %86

81:                                               ; preds = %75
  %82 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %83 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %84 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %83, i32 0, i32 0
  %85 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %82, %struct.TYPE_4__* %84, i32 16)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @qdisc_qstats_qlen_backlog(i64, i32*, i32*) #1

declare dso_local i8* @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @PSCHED_NS2TICKS(i32) #1

declare dso_local i64 @gnet_stats_copy_basic(i32, %struct.gnet_dump*, i32*, i32*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, i32*, %struct.gnet_stats_queue*, i32) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
