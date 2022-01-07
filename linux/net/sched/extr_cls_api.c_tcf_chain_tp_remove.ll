; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_tp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { %struct.tcf_proto* }
%struct.tcf_chain_info = type { i32*, i32 }
%struct.tcf_proto = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_chain*, %struct.tcf_chain_info*, %struct.tcf_proto*)* @tcf_chain_tp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_chain_tp_remove(%struct.tcf_chain* %0, %struct.tcf_chain_info* %1, %struct.tcf_proto* %2) #0 {
  %4 = alloca %struct.tcf_chain*, align 8
  %5 = alloca %struct.tcf_chain_info*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_proto*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %4, align 8
  store %struct.tcf_chain_info* %1, %struct.tcf_chain_info** %5, align 8
  store %struct.tcf_proto* %2, %struct.tcf_proto** %6, align 8
  %8 = load %struct.tcf_chain_info*, %struct.tcf_chain_info** %5, align 8
  %9 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %12 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %10, %struct.tcf_chain* %11)
  store %struct.tcf_proto* %12, %struct.tcf_proto** %7, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %14 = call i32 @tcf_proto_mark_delete(%struct.tcf_proto* %13)
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %16 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %17 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %16, i32 0, i32 0
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %17, align 8
  %19 = icmp eq %struct.tcf_proto* %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %22 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %23 = call i32 @tcf_chain0_head_change(%struct.tcf_chain* %21, %struct.tcf_proto* %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.tcf_chain_info*, %struct.tcf_chain_info** %5, align 8
  %26 = getelementptr inbounds %struct.tcf_chain_info, %struct.tcf_chain_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %30 = call i32 @RCU_INIT_POINTER(i32 %28, %struct.tcf_proto* %29)
  ret void
}

declare dso_local %struct.tcf_proto* @tcf_chain_dereference(i32, %struct.tcf_chain*) #1

declare dso_local i32 @tcf_proto_mark_delete(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_chain0_head_change(%struct.tcf_chain*, %struct.tcf_proto*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.tcf_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
