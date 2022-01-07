; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_nlmsg_populate_rtr_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_nlmsg_populate_rtr_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.br_port_msg = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@MDBA_ROUTER = common dso_local global i32 0, align 4
@MDBA_ROUTER_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32, i32)* @nlmsg_populate_rtr_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsg_populate_rtr_fill(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.br_port_msg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32 %22, i32 8, i32 0)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %17, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %25 = icmp ne %struct.nlmsghdr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %72

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %31 = call %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.br_port_msg* %31, %struct.br_port_msg** %16, align 8
  %32 = load %struct.br_port_msg*, %struct.br_port_msg** %16, align 8
  %33 = call i32 @memset(%struct.br_port_msg* %32, i32 0, i32 8)
  %34 = load i32, i32* @AF_BRIDGE, align 4
  %35 = load %struct.br_port_msg*, %struct.br_port_msg** %16, align 8
  %36 = getelementptr inbounds %struct.br_port_msg, %struct.br_port_msg* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %10, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.br_port_msg*, %struct.br_port_msg** %16, align 8
  %41 = getelementptr inbounds %struct.br_port_msg, %struct.br_port_msg* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i32, i32* @MDBA_ROUTER, align 4
  %44 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %42, i32 %43)
  store %struct.nlattr* %44, %struct.nlattr** %18, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %29
  br label %66

48:                                               ; preds = %29
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = load i32, i32* @MDBA_ROUTER_PORT, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %62

55:                                               ; preds = %48
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %58 = call i32 @nla_nest_end(%struct.sk_buff* %56, %struct.nlattr* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %61 = call i32 @nlmsg_end(%struct.sk_buff* %59, %struct.nlmsghdr* %60)
  store i32 0, i32* %8, align 4
  br label %72

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  br label %66

66:                                               ; preds = %62, %47
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %69 = call i32 @nlmsg_cancel(%struct.sk_buff* %67, %struct.nlmsghdr* %68)
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %55, %26
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.br_port_msg*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
