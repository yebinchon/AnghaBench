; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tfilter_notify_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tfilter_notify_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_proto = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, %struct.tcf_block*, %struct.Qdisc*, i32, %struct.nlmsghdr*, %struct.tcf_chain*, i32, i32)* @tfilter_notify_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfilter_notify_chain(%struct.net* %0, %struct.sk_buff* %1, %struct.tcf_block* %2, %struct.Qdisc* %3, i32 %4, %struct.nlmsghdr* %5, %struct.tcf_chain* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcf_block*, align 8
  %13 = alloca %struct.Qdisc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca %struct.tcf_chain*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.tcf_proto*, align 8
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.tcf_block* %2, %struct.tcf_block** %12, align 8
  store %struct.Qdisc* %3, %struct.Qdisc** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.nlmsghdr* %5, %struct.nlmsghdr** %15, align 8
  store %struct.tcf_chain* %6, %struct.tcf_chain** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load %struct.tcf_chain*, %struct.tcf_chain** %16, align 8
  %21 = load i32, i32* %18, align 4
  %22 = call %struct.tcf_proto* @tcf_get_next_proto(%struct.tcf_chain* %20, %struct.tcf_proto* null, i32 %21)
  store %struct.tcf_proto* %22, %struct.tcf_proto** %19, align 8
  br label %23

23:                                               ; preds = %37, %9
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %25 = icmp ne %struct.tcf_proto* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.net*, %struct.net** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %30 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %31 = load %struct.tcf_block*, %struct.tcf_block** %12, align 8
  %32 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @tfilter_notify(%struct.net* %27, %struct.sk_buff* %28, %struct.nlmsghdr* %29, %struct.tcf_proto* %30, %struct.tcf_block* %31, %struct.Qdisc* %32, i32 %33, i32* null, i32 %34, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load %struct.tcf_chain*, %struct.tcf_chain** %16, align 8
  %39 = load %struct.tcf_proto*, %struct.tcf_proto** %19, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call %struct.tcf_proto* @tcf_get_next_proto(%struct.tcf_chain* %38, %struct.tcf_proto* %39, i32 %40)
  store %struct.tcf_proto* %41, %struct.tcf_proto** %19, align 8
  br label %23

42:                                               ; preds = %23
  ret void
}

declare dso_local %struct.tcf_proto* @tcf_get_next_proto(%struct.tcf_chain*, %struct.tcf_proto*, i32) #1

declare dso_local i32 @tfilter_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.tcf_proto*, %struct.tcf_block*, %struct.Qdisc*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
