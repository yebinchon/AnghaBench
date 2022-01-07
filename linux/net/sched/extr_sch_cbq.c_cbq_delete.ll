; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cbq_sched_data = type { %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class }
%struct.cbq_class = type { i64, i32, i64, i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @cbq_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_delete(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cbq_sched_data*, align 8
  %7 = alloca %struct.cbq_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.cbq_sched_data* %9, %struct.cbq_sched_data** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.cbq_class*
  store %struct.cbq_class* %11, %struct.cbq_class** %7, align 8
  %12 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %13 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %18 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %23 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %23, i32 0, i32 3
  %25 = icmp eq %struct.cbq_class* %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16, %2
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %85

29:                                               ; preds = %21
  %30 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %31 = call i32 @sch_tree_lock(%struct.Qdisc* %30)
  %32 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %33 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @qdisc_purge_queue(i32 %34)
  %36 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %37 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %42 = call i32 @cbq_deactivate_class(%struct.cbq_class* %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %45 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %44, i32 0, i32 1
  %46 = load %struct.cbq_class*, %struct.cbq_class** %45, align 8
  %47 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %48 = icmp eq %struct.cbq_class* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %51 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %50, i32 0, i32 2
  %52 = load %struct.cbq_class*, %struct.cbq_class** %51, align 8
  %53 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %54 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %53, i32 0, i32 1
  store %struct.cbq_class* %52, %struct.cbq_class** %54, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %57 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %56, i32 0, i32 2
  %58 = load %struct.cbq_class*, %struct.cbq_class** %57, align 8
  %59 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %60 = icmp eq %struct.cbq_class* %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %63 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %62, i32 0, i32 2
  store %struct.cbq_class* null, %struct.cbq_class** %63, align 8
  %64 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %65 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %64, i32 0, i32 1
  store %struct.cbq_class* null, %struct.cbq_class** %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %68 = call i32 @cbq_unlink_class(%struct.cbq_class* %67)
  %69 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %70 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @cbq_adjust_levels(i32 %71)
  %73 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %74 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %76 = call i32 @cbq_sync_defmap(%struct.cbq_class* %75)
  %77 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %78 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %79 = call i32 @cbq_rmprio(%struct.cbq_sched_data* %77, %struct.cbq_class* %78)
  %80 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %81 = call i32 @sch_tree_unlock(%struct.Qdisc* %80)
  %82 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %83 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %84 = call i32 @cbq_destroy_class(%struct.Qdisc* %82, %struct.cbq_class* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %66, %26
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_purge_queue(i32) #1

declare dso_local i32 @cbq_deactivate_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_unlink_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_adjust_levels(i32) #1

declare dso_local i32 @cbq_sync_defmap(%struct.cbq_class*) #1

declare dso_local i32 @cbq_rmprio(%struct.cbq_sched_data*, %struct.cbq_class*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @cbq_destroy_class(%struct.Qdisc*, %struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
