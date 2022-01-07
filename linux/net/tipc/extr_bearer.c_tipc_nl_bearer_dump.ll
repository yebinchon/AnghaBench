; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_nl_bearer_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_nl_bearer_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tipc_bearer = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, %struct.sk_buff* }
%struct.net = type { i32 }
%struct.tipc_net = type { i32* }
%struct.TYPE_4__ = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@MAX_BEARERS = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_bearer_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tipc_bearer*, align 8
  %9 = alloca %struct.tipc_nl_msg, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.tipc_net*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %10, align 8
  %22 = load %struct.net*, %struct.net** %10, align 8
  %23 = load i32, i32* @tipc_net_id, align 4
  %24 = call %struct.tipc_net* @net_generic(%struct.net* %22, i32 %23)
  store %struct.tipc_net* %24, %struct.tipc_net** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MAX_BEARERS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 2
  store %struct.sk_buff* %30, %struct.sk_buff** %31, align 8
  %32 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %33 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @NETLINK_CB(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %41 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %9, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = call i32 (...) @rtnl_lock()
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %71, %29
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MAX_BEARERS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load %struct.tipc_net*, %struct.tipc_net** %11, align 8
  %53 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.tipc_bearer* @rtnl_dereference(i32 %58)
  store %struct.tipc_bearer* %59, %struct.tipc_bearer** %8, align 8
  %60 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %61 = icmp ne %struct.tipc_bearer* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %71

63:                                               ; preds = %51
  %64 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %65 = load i32, i32* @NLM_F_MULTI, align 4
  %66 = call i32 @__tipc_nl_add_bearer(%struct.tipc_nl_msg* %9, %struct.tipc_bearer* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %74

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %47

74:                                               ; preds = %69, %47
  %75 = call i32 (...) @rtnl_unlock()
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %78 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %74, %28
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.tipc_bearer* @rtnl_dereference(i32) #1

declare dso_local i32 @__tipc_nl_add_bearer(%struct.tipc_nl_msg*, %struct.tipc_bearer*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
