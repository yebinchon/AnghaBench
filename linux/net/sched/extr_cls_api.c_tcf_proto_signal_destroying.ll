; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_signal_destroying.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_signal_destroying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { %struct.tcf_block* }
%struct.tcf_block = type { i32, i32 }
%struct.tcf_proto = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_chain*, %struct.tcf_proto*)* @tcf_proto_signal_destroying to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_proto_signal_destroying(%struct.tcf_chain* %0, %struct.tcf_proto* %1) #0 {
  %3 = alloca %struct.tcf_chain*, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.tcf_block*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %3, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %4, align 8
  %6 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %7 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %6, i32 0, i32 0
  %8 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  store %struct.tcf_block* %8, %struct.tcf_block** %5, align 8
  %9 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %10 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %13 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %16 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %15, i32 0, i32 0
  %17 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %18 = call i32 @destroy_obj_hashfn(%struct.tcf_proto* %17)
  %19 = call i32 @hash_add_rcu(i32 %14, i32* %16, i32 %18)
  %20 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %21 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i32) #1

declare dso_local i32 @destroy_obj_hashfn(%struct.tcf_proto*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
