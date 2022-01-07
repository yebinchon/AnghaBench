; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_dump_daemons.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_dump_daemons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32* }
%struct.net = type { i32 }
%struct.netns_ipvs = type { i32, i32, i32, i32 }

@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@IP_VS_STATE_BACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ip_vs_genl_dump_daemons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_dump_daemons(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.netns_ipvs*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.net* @sock_net(i32 %9)
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = call %struct.netns_ipvs* @net_ipvs(%struct.net* %11)
  store %struct.netns_ipvs* %12, %struct.netns_ipvs** %6, align 8
  %13 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %14 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %17 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %32 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %33 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %32, i32 0, i32 3
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %35 = call i64 @ip_vs_genl_dump_daemon(%struct.sk_buff* %30, i32 %31, i32* %33, %struct.netlink_callback* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %72

38:                                               ; preds = %29
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %40 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %22, %2
  %44 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %45 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IP_VS_STATE_BACKUP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %52 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = load i32, i32* @IP_VS_STATE_BACKUP, align 4
  %60 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %61 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %60, i32 0, i32 2
  %62 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %63 = call i64 @ip_vs_genl_dump_daemon(%struct.sk_buff* %58, i32 %59, i32* %61, %struct.netlink_callback* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %72

66:                                               ; preds = %57
  %67 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %68 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %50, %43
  br label %72

72:                                               ; preds = %71, %65, %37
  %73 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %74 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  ret i32 %78
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.netns_ipvs* @net_ipvs(%struct.net*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ip_vs_genl_dump_daemon(%struct.sk_buff*, i32, i32*, %struct.netlink_callback*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
