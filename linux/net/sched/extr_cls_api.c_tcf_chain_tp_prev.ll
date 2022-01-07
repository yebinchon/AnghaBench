; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_prev.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_chain_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_proto* (%struct.tcf_chain*, %struct.tcf_chain_info*)* @tcf_chain_tp_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_proto* @tcf_chain_tp_prev(%struct.tcf_chain* %0, %struct.tcf_chain_info* %1) #0 {
  %3 = alloca %struct.tcf_chain*, align 8
  %4 = alloca %struct.tcf_chain_info*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %3, align 8
  store %struct.tcf_chain_info* %1, %struct.tcf_chain_info** %4, align 8
  %5 = load %struct.tcf_chain_info*, %struct.tcf_chain_info** %4, align 8
  %6 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %10 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %8, %struct.tcf_chain* %9)
  ret %struct.tcf_proto* %10
}

declare dso_local %struct.tcf_proto* @tcf_chain_dereference(i32, %struct.tcf_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
