; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c___tipc_add_link_prop.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c___tipc_add_link_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_nl_compat_msg = type { i32 }
%struct.tipc_link_config = type { i32 }

@TIPC_NLA_PROP_PRIO = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_WIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tipc_nl_compat_msg*, %struct.tipc_link_config*)* @__tipc_add_link_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_add_link_prop(%struct.sk_buff* %0, %struct.tipc_nl_compat_msg* %1, %struct.tipc_link_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_nl_compat_msg*, align 8
  %7 = alloca %struct.tipc_link_config*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tipc_nl_compat_msg* %1, %struct.tipc_nl_compat_msg** %6, align 8
  store %struct.tipc_link_config* %2, %struct.tipc_link_config** %7, align 8
  %8 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %6, align 8
  %9 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %35 [
    i32 130, label %11
    i32 129, label %19
    i32 128, label %27
  ]

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @TIPC_NLA_PROP_PRIO, align 4
  %14 = load %struct.tipc_link_config*, %struct.tipc_link_config** %7, align 8
  %15 = getelementptr inbounds %struct.tipc_link_config, %struct.tipc_link_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohl(i32 %16)
  %18 = call i32 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* @TIPC_NLA_PROP_TOL, align 4
  %22 = load %struct.tipc_link_config*, %struct.tipc_link_config** %7, align 8
  %23 = getelementptr inbounds %struct.tipc_link_config, %struct.tipc_link_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = call i32 @nla_put_u32(%struct.sk_buff* %20, i32 %21, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @TIPC_NLA_PROP_WIN, align 4
  %30 = load %struct.tipc_link_config*, %struct.tipc_link_config** %7, align 8
  %31 = getelementptr inbounds %struct.tipc_link_config, %struct.tipc_link_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ntohl(i32 %32)
  %34 = call i32 @nla_put_u32(%struct.sk_buff* %28, i32 %29, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %27, %19, %11
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
