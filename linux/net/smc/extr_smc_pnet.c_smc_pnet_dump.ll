; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_pnet.c_smc_pnet_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @smc_pnet_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_pnet_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @sock_net(i32 %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @NETLINK_CB(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %27 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @_smc_pnet_dump(%struct.net* %12, %struct.sk_buff* %13, i32 %20, i32 %25, i32* null, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %34 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @_smc_pnet_dump(%struct.net*, %struct.sk_buff*, i32, i32, i32*, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
