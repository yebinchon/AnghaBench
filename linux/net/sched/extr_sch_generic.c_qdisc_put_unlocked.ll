; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_put_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_put_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }

@TCQ_F_BUILTIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_put_unlocked(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %3 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %4 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TCQ_F_BUILTIN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %11 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %10, i32 0, i32 1
  %12 = call i32 @refcount_dec_and_rtnl_lock(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %19

15:                                               ; preds = %9
  %16 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %17 = call i32 @qdisc_destroy(%struct.Qdisc* %16)
  %18 = call i32 (...) @rtnl_unlock()
  br label %19

19:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @refcount_dec_and_rtnl_lock(i32*) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
