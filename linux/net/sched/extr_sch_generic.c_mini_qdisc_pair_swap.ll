; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_mini_qdisc_pair_swap.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_mini_qdisc_pair_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mini_Qdisc_pair = type { i32*, %struct.mini_Qdisc, %struct.mini_Qdisc }
%struct.mini_Qdisc = type { i32, %struct.tcf_proto* }
%struct.tcf_proto = type { i32 }

@mini_qdisc_rcu_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mini_qdisc_pair_swap(%struct.mini_Qdisc_pair* %0, %struct.tcf_proto* %1) #0 {
  %3 = alloca %struct.mini_Qdisc_pair*, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.mini_Qdisc*, align 8
  %6 = alloca %struct.mini_Qdisc*, align 8
  store %struct.mini_Qdisc_pair* %0, %struct.mini_Qdisc_pair** %3, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %4, align 8
  %7 = load %struct.mini_Qdisc_pair*, %struct.mini_Qdisc_pair** %3, align 8
  %8 = getelementptr inbounds %struct.mini_Qdisc_pair, %struct.mini_Qdisc_pair* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mini_Qdisc* @rcu_dereference_protected(i32 %10, i32 1)
  store %struct.mini_Qdisc* %11, %struct.mini_Qdisc** %5, align 8
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %13 = icmp ne %struct.tcf_proto* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.mini_Qdisc_pair*, %struct.mini_Qdisc_pair** %3, align 8
  %16 = getelementptr inbounds %struct.mini_Qdisc_pair, %struct.mini_Qdisc_pair* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RCU_INIT_POINTER(i32 %18, i32* null)
  %20 = call i32 (...) @rcu_barrier()
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.mini_Qdisc*, %struct.mini_Qdisc** %5, align 8
  %23 = icmp ne %struct.mini_Qdisc* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.mini_Qdisc*, %struct.mini_Qdisc** %5, align 8
  %26 = load %struct.mini_Qdisc_pair*, %struct.mini_Qdisc_pair** %3, align 8
  %27 = getelementptr inbounds %struct.mini_Qdisc_pair, %struct.mini_Qdisc_pair* %26, i32 0, i32 1
  %28 = icmp eq %struct.mini_Qdisc* %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %21
  %30 = load %struct.mini_Qdisc_pair*, %struct.mini_Qdisc_pair** %3, align 8
  %31 = getelementptr inbounds %struct.mini_Qdisc_pair, %struct.mini_Qdisc_pair* %30, i32 0, i32 2
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.mini_Qdisc_pair*, %struct.mini_Qdisc_pair** %3, align 8
  %34 = getelementptr inbounds %struct.mini_Qdisc_pair, %struct.mini_Qdisc_pair* %33, i32 0, i32 1
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi %struct.mini_Qdisc* [ %31, %29 ], [ %34, %32 ]
  store %struct.mini_Qdisc* %36, %struct.mini_Qdisc** %6, align 8
  %37 = call i32 (...) @rcu_barrier()
  %38 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %39 = load %struct.mini_Qdisc*, %struct.mini_Qdisc** %6, align 8
  %40 = getelementptr inbounds %struct.mini_Qdisc, %struct.mini_Qdisc* %39, i32 0, i32 1
  store %struct.tcf_proto* %38, %struct.tcf_proto** %40, align 8
  %41 = load %struct.mini_Qdisc_pair*, %struct.mini_Qdisc_pair** %3, align 8
  %42 = getelementptr inbounds %struct.mini_Qdisc_pair, %struct.mini_Qdisc_pair* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mini_Qdisc*, %struct.mini_Qdisc** %6, align 8
  %46 = call i32 @rcu_assign_pointer(i32 %44, %struct.mini_Qdisc* %45)
  %47 = load %struct.mini_Qdisc*, %struct.mini_Qdisc** %5, align 8
  %48 = icmp ne %struct.mini_Qdisc* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.mini_Qdisc*, %struct.mini_Qdisc** %5, align 8
  %51 = getelementptr inbounds %struct.mini_Qdisc, %struct.mini_Qdisc* %50, i32 0, i32 0
  %52 = load i32, i32* @mini_qdisc_rcu_func, align 4
  %53 = call i32 @call_rcu(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %14, %49, %35
  ret void
}

declare dso_local %struct.mini_Qdisc* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.mini_Qdisc*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
