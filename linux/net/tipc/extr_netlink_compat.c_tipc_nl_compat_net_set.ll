; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_net_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_net_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_cmd_doit = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_nl_compat_msg = type { i64, i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_NET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_CMD_SET_NODE_ADDR = common dso_local global i64 0, align 8
@TIPC_NLA_NET_ADDR = common dso_local global i32 0, align 4
@TIPC_CMD_SET_NETID = common dso_local global i64 0, align 8
@TIPC_NLA_NET_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_cmd_doit*, %struct.sk_buff*, %struct.tipc_nl_compat_msg*)* @tipc_nl_compat_net_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_net_set(%struct.tipc_nl_compat_cmd_doit* %0, %struct.sk_buff* %1, %struct.tipc_nl_compat_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_nl_compat_cmd_doit*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tipc_nl_compat_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  store %struct.tipc_nl_compat_cmd_doit* %0, %struct.tipc_nl_compat_cmd_doit** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tipc_nl_compat_msg* %2, %struct.tipc_nl_compat_msg** %7, align 8
  %10 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %7, align 8
  %11 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @TLV_DATA(i32 %12)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohl(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* @TIPC_NLA_NET, align 4
  %19 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %9, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %62

25:                                               ; preds = %3
  %26 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %7, align 8
  %27 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TIPC_CMD_SET_NODE_ADDR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* @TIPC_NLA_NET_ADDR, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EMSGSIZE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %31
  br label %58

41:                                               ; preds = %25
  %42 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %7, align 8
  %43 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TIPC_CMD_SET_NETID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* @TIPC_NLA_NET_ID, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %62

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %61 = call i32 @nla_nest_end(%struct.sk_buff* %59, %struct.nlattr* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %53, %37, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @TLV_DATA(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
