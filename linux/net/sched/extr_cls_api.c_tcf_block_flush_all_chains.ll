; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_flush_all_chains.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_flush_all_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.tcf_chain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_block*, i32)* @tcf_block_flush_all_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_block_flush_all_chains(%struct.tcf_block* %0, i32 %1) #0 {
  %3 = alloca %struct.tcf_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_chain*, align 8
  store %struct.tcf_block* %0, %struct.tcf_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tcf_block*, %struct.tcf_block** %3, align 8
  %7 = call %struct.tcf_chain* @tcf_get_next_chain(%struct.tcf_block* %6, %struct.tcf_chain* null)
  store %struct.tcf_chain* %7, %struct.tcf_chain** %5, align 8
  br label %8

8:                                                ; preds = %17, %2
  %9 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %10 = icmp ne %struct.tcf_chain* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %13 = call i32 @tcf_chain_put_explicitly_created(%struct.tcf_chain* %12)
  %14 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @tcf_chain_flush(%struct.tcf_chain* %14, i32 %15)
  br label %17

17:                                               ; preds = %11
  %18 = load %struct.tcf_block*, %struct.tcf_block** %3, align 8
  %19 = load %struct.tcf_chain*, %struct.tcf_chain** %5, align 8
  %20 = call %struct.tcf_chain* @tcf_get_next_chain(%struct.tcf_block* %18, %struct.tcf_chain* %19)
  store %struct.tcf_chain* %20, %struct.tcf_chain** %5, align 8
  br label %8

21:                                               ; preds = %8
  ret void
}

declare dso_local %struct.tcf_chain* @tcf_get_next_chain(%struct.tcf_block*, %struct.tcf_chain*) #1

declare dso_local i32 @tcf_chain_put_explicitly_created(%struct.tcf_chain*) #1

declare dso_local i32 @tcf_chain_flush(%struct.tcf_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
