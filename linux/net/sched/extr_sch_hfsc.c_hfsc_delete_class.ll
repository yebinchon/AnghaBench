; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_delete_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_delete_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.hfsc_sched = type { i32, %struct.hfsc_class }
%struct.hfsc_class = type { i64, i64, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @hfsc_delete_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_delete_class(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfsc_sched*, align 8
  %7 = alloca %struct.hfsc_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.hfsc_sched* %9, %struct.hfsc_sched** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.hfsc_class*
  store %struct.hfsc_class* %11, %struct.hfsc_class** %7, align 8
  %12 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %13 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %18 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %23 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %24 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %23, i32 0, i32 1
  %25 = icmp eq %struct.hfsc_class* %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16, %2
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %31 = call i32 @sch_tree_lock(%struct.Qdisc* %30)
  %32 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %33 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %32, i32 0, i32 5
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %36 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hfsc_adjust_levels(i32 %37)
  %39 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %40 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @qdisc_purge_queue(i32 %41)
  %43 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %44 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %43, i32 0, i32 0
  %45 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %46 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %45, i32 0, i32 2
  %47 = call i32 @qdisc_class_hash_remove(i32* %44, i32* %46)
  %48 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %49 = call i32 @sch_tree_unlock(%struct.Qdisc* %48)
  %50 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %51 = load %struct.hfsc_class*, %struct.hfsc_class** %7, align 8
  %52 = call i32 @hfsc_destroy_class(%struct.Qdisc* %50, %struct.hfsc_class* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %29, %26
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @hfsc_adjust_levels(i32) #1

declare dso_local i32 @qdisc_purge_queue(i32) #1

declare dso_local i32 @qdisc_class_hash_remove(i32*, i32*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @hfsc_destroy_class(%struct.Qdisc*, %struct.hfsc_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
