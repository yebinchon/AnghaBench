; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_head_change_item.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_head_change_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_filter_chain_list_item = type { i32, i32 (%struct.tcf_proto*, i32)* }
%struct.tcf_proto = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_filter_chain_list_item*, %struct.tcf_proto*)* @tcf_chain_head_change_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_chain_head_change_item(%struct.tcf_filter_chain_list_item* %0, %struct.tcf_proto* %1) #0 {
  %3 = alloca %struct.tcf_filter_chain_list_item*, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  store %struct.tcf_filter_chain_list_item* %0, %struct.tcf_filter_chain_list_item** %3, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %4, align 8
  %5 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %3, align 8
  %6 = getelementptr inbounds %struct.tcf_filter_chain_list_item, %struct.tcf_filter_chain_list_item* %5, i32 0, i32 1
  %7 = load i32 (%struct.tcf_proto*, i32)*, i32 (%struct.tcf_proto*, i32)** %6, align 8
  %8 = icmp ne i32 (%struct.tcf_proto*, i32)* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %3, align 8
  %11 = getelementptr inbounds %struct.tcf_filter_chain_list_item, %struct.tcf_filter_chain_list_item* %10, i32 0, i32 1
  %12 = load i32 (%struct.tcf_proto*, i32)*, i32 (%struct.tcf_proto*, i32)** %11, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %14 = load %struct.tcf_filter_chain_list_item*, %struct.tcf_filter_chain_list_item** %3, align 8
  %15 = getelementptr inbounds %struct.tcf_filter_chain_list_item, %struct.tcf_filter_chain_list_item* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %12(%struct.tcf_proto* %13, i32 %16)
  br label %18

18:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
