; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_diag.c_smc_diag_handler_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_diag.c_smc_diag_handler_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32 }
%struct.net = type { i32 }
%struct.netlink_dump_control = type { i32, i32 }

@SOCK_DIAG_BY_FAMILY = common dso_local global i64 0, align 8
@NLM_F_DUMP = common dso_local global i32 0, align 4
@smc_diag_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*)* @smc_diag_handler_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_diag_handler_dump(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.netlink_dump_control, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @sock_net(i32 %10)
  store %struct.net* %11, %struct.net** %6, align 8
  %12 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %13 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_DIAG_BY_FAMILY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %19 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NLM_F_DUMP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %7, i32 0, i32 0
  %26 = call i32 @SKB_WITH_OVERHEAD(i32 32768)
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %7, i32 0, i32 1
  %28 = load i32, i32* @smc_diag_dump, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %34 = call i32 @netlink_dump_start(i32 %31, %struct.sk_buff* %32, %struct.nlmsghdr* %33, %struct.netlink_dump_control* %7)
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @SKB_WITH_OVERHEAD(i32) #1

declare dso_local i32 @netlink_dump_start(i32, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
