; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_get_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_get_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }

@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_node_get_monitor(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tipc_nl_msg, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net* @sock_net(i32 %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @nlmsg_new(i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %7, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.net*, %struct.net** %6, align 8
  %33 = call i32 @__tipc_nl_add_monitor_prop(%struct.net* %32, %struct.tipc_nl_msg* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nlmsg_free(i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = call i32 @genlmsg_reply(i32 %43, %struct.genl_info* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %36, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nlmsg_new(i32, i32) #1

declare dso_local i32 @__tipc_nl_add_monitor_prop(%struct.net*, %struct.tipc_nl_msg*) #1

declare dso_local i32 @nlmsg_free(i32) #1

declare dso_local i32 @genlmsg_reply(i32, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
