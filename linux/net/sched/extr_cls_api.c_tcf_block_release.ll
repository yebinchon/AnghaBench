; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.tcf_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.tcf_block*, i32)* @tcf_block_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_block_release(%struct.Qdisc* %0, %struct.tcf_block* %1, i32 %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.tcf_block*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.tcf_block* %1, %struct.tcf_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %8 = call i32 @IS_ERR_OR_NULL(%struct.tcf_block* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @tcf_block_refcnt_put(%struct.tcf_block* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %3
  %15 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %16 = icmp ne %struct.Qdisc* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %22 = call i32 @qdisc_put(%struct.Qdisc* %21)
  br label %26

23:                                               ; preds = %17
  %24 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %25 = call i32 @qdisc_put_unlocked(%struct.Qdisc* %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.tcf_block*) #1

declare dso_local i32 @tcf_block_refcnt_put(%struct.tcf_block*, i32) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put_unlocked(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
