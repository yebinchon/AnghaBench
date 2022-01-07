; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_cpmark_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ctinfo.c_tcf_ctinfo_cpmark_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.tcf_ctinfo = type { i32 }
%struct.tcf_ctinfo_params = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, %struct.tcf_ctinfo*, %struct.tcf_ctinfo_params*, %struct.sk_buff*)* @tcf_ctinfo_cpmark_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_ctinfo_cpmark_set(%struct.nf_conn* %0, %struct.tcf_ctinfo* %1, %struct.tcf_ctinfo_params* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.tcf_ctinfo*, align 8
  %7 = alloca %struct.tcf_ctinfo_params*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %struct.tcf_ctinfo* %1, %struct.tcf_ctinfo** %6, align 8
  store %struct.tcf_ctinfo_params* %2, %struct.tcf_ctinfo_params** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %9 = load %struct.tcf_ctinfo*, %struct.tcf_ctinfo** %6, align 8
  %10 = getelementptr inbounds %struct.tcf_ctinfo, %struct.tcf_ctinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %14 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcf_ctinfo_params*, %struct.tcf_ctinfo_params** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_ctinfo_params, %struct.tcf_ctinfo_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
