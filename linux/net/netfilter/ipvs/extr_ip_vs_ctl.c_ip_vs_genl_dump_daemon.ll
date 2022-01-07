; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_dump_daemon.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_dump_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipvs_sync_daemon_cfg = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ip_vs_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@IPVS_CMD_NEW_DAEMON = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.ipvs_sync_daemon_cfg*, %struct.netlink_callback*)* @ip_vs_genl_dump_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_dump_daemon(%struct.sk_buff* %0, i32 %1, %struct.ipvs_sync_daemon_cfg* %2, %struct.netlink_callback* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipvs_sync_daemon_cfg*, align 8
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ipvs_sync_daemon_cfg* %2, %struct.ipvs_sync_daemon_cfg** %8, align 8
  store %struct.netlink_callback* %3, %struct.netlink_callback** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NETLINK_CB(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NLM_F_MULTI, align 4
  %26 = load i32, i32* @IPVS_CMD_NEW_DAEMON, align 4
  %27 = call i8* @genlmsg_put(%struct.sk_buff* %12, i32 %19, i32 %24, i32* @ip_vs_genl_family, i32 %25, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %50

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %8, align 8
  %37 = call i64 @ip_vs_genl_fill_daemon(%struct.sk_buff* %34, i32 %35, %struct.ipvs_sync_daemon_cfg* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @genlmsg_end(%struct.sk_buff* %41, i8* %42)
  store i32 0, i32* %5, align 4
  br label %50

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @genlmsg_cancel(%struct.sk_buff* %45, i8* %46)
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %40, %30
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i64 @ip_vs_genl_fill_daemon(%struct.sk_buff*, i32, %struct.ipvs_sync_daemon_cfg*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
