; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_notify_and_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_notify_and_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.Qdisc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*)* @notify_and_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_and_destroy(%struct.net* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, i32 %3, %struct.Qdisc* %4, %struct.Qdisc* %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca %struct.Qdisc*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.Qdisc* %4, %struct.Qdisc** %11, align 8
  store %struct.Qdisc* %5, %struct.Qdisc** %12, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %14 = icmp ne %struct.Qdisc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %17 = icmp ne %struct.Qdisc* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15, %6
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %25 = call i32 @qdisc_notify(%struct.net* %19, %struct.sk_buff* %20, %struct.nlmsghdr* %21, i32 %22, %struct.Qdisc* %23, %struct.Qdisc* %24)
  br label %26

26:                                               ; preds = %18, %15
  %27 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %28 = icmp ne %struct.Qdisc* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %31 = call i32 @qdisc_put(%struct.Qdisc* %30)
  br label %32

32:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @qdisc_notify(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
