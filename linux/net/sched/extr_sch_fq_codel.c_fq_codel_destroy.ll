; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.fq_codel_sched_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @fq_codel_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_codel_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.fq_codel_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %5 = call %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc* %4)
  store %struct.fq_codel_sched_data* %5, %struct.fq_codel_sched_data** %3, align 8
  %6 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %7 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @tcf_block_put(i32 %8)
  %10 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %11 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kvfree(i32 %12)
  %14 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kvfree(i32 %16)
  ret void
}

declare dso_local %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tcf_block_put(i32) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
