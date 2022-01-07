; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_erase_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_netem_erase_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netem_sched_data = type { i32, i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netem_sched_data*, %struct.sk_buff*)* @netem_erase_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netem_erase_head(%struct.netem_sched_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.netem_sched_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.netem_sched_data* %0, %struct.netem_sched_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %7 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %6, i32 0, i32 2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %9 = icmp eq %struct.sk_buff* %5, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %14 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %14, i32 0, i32 2
  store %struct.sk_buff* %13, %struct.sk_buff** %15, align 8
  %16 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %17 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %16, i32 0, i32 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %10
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %28 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %27, i32 0, i32 0
  %29 = call i32 @rb_erase(i32* %26, i32* %28)
  br label %30

30:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
