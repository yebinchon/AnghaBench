; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_dequeue_top_rt_rq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c_dequeue_top_rt_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_rq = type { i64, i32 }
%struct.rq = type { i32, %struct.rt_rq }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_rq*)* @dequeue_top_rt_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequeue_top_rt_rq(%struct.rt_rq* %0) #0 {
  %2 = alloca %struct.rt_rq*, align 8
  %3 = alloca %struct.rq*, align 8
  store %struct.rt_rq* %0, %struct.rt_rq** %2, align 8
  %4 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %5 = call %struct.rq* @rq_of_rt_rq(%struct.rt_rq* %4)
  store %struct.rq* %5, %struct.rq** %3, align 8
  %6 = load %struct.rq*, %struct.rq** %3, align 8
  %7 = getelementptr inbounds %struct.rq, %struct.rq* %6, i32 0, i32 1
  %8 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %9 = icmp ne %struct.rt_rq* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %13 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.rq*, %struct.rq** %3, align 8
  %19 = getelementptr inbounds %struct.rq, %struct.rq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.rq*, %struct.rq** %3, align 8
  %26 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %27 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sub_nr_running(%struct.rq* %25, i32 %28)
  %30 = load %struct.rt_rq*, %struct.rt_rq** %2, align 8
  %31 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.rq* @rq_of_rt_rq(%struct.rt_rq*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sub_nr_running(%struct.rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
