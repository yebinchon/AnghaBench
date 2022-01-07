; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_cfg_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_cfg_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_bpf_cfg = type { i32, i32, i64, %struct.bpf_prog* }
%struct.bpf_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_bpf_cfg*)* @tcf_bpf_cfg_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_bpf_cfg_cleanup(%struct.tcf_bpf_cfg* %0) #0 {
  %2 = alloca %struct.tcf_bpf_cfg*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  store %struct.tcf_bpf_cfg* %0, %struct.tcf_bpf_cfg** %2, align 8
  %4 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %4, i32 0, i32 3
  %6 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %6, %struct.bpf_prog** %3, align 8
  %7 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %8 = icmp ne %struct.bpf_prog* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %2, align 8
  %11 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %16 = call i32 @bpf_prog_put(%struct.bpf_prog* %15)
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %19 = call i32 @bpf_prog_destroy(%struct.bpf_prog* %18)
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %2, align 8
  %23 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %2, align 8
  %27 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @kfree(i32 %28)
  ret void
}

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_destroy(%struct.bpf_prog*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
