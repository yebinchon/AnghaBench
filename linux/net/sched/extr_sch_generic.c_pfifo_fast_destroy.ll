; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_pfifo_fast_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.pfifo_fast_priv = type { i32 }
%struct.skb_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PFIFO_FAST_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @pfifo_fast_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfifo_fast_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.pfifo_fast_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skb_array*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %7 = call %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.pfifo_fast_priv* %7, %struct.pfifo_fast_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PFIFO_FAST_BANDS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load %struct.pfifo_fast_priv*, %struct.pfifo_fast_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.skb_array* @band2list(%struct.pfifo_fast_priv* %13, i32 %14)
  store %struct.skb_array* %15, %struct.skb_array** %5, align 8
  %16 = load %struct.skb_array*, %struct.skb_array** %5, align 8
  %17 = getelementptr inbounds %struct.skb_array, %struct.skb_array* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.skb_array*, %struct.skb_array** %5, align 8
  %24 = getelementptr inbounds %struct.skb_array, %struct.skb_array* %23, i32 0, i32 0
  %25 = call i32 @ptr_ring_cleanup(%struct.TYPE_2__* %24, i32* null)
  br label %26

26:                                               ; preds = %22, %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  ret void
}

declare dso_local %struct.pfifo_fast_priv* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.skb_array* @band2list(%struct.pfifo_fast_priv*, i32) #1

declare dso_local i32 @ptr_ring_cleanup(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
