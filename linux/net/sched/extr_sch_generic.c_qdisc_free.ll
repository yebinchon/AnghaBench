; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_free(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %3 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %4 = call i64 @qdisc_is_percpu_stats(%struct.Qdisc* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @free_percpu(i32 %9)
  %11 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @free_percpu(i32 %13)
  br label %15

15:                                               ; preds = %6, %1
  %16 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %17 = bitcast %struct.Qdisc* %16 to i8*
  %18 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = call i32 @kfree(i8* %23)
  ret void
}

declare dso_local i64 @qdisc_is_percpu_stats(%struct.Qdisc*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
