; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_daemon.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipvs_sync_daemon_cfg = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nlattr = type { i32 }

@IPVS_CMD_ATTR_DAEMON = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_STATE = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_MCAST_IFN = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_SYNC_ID = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_SYNC_MAXLEN = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_MCAST_PORT = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_MCAST_TTL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_MCAST_GROUP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_MCAST_GROUP6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.ipvs_sync_daemon_cfg*)* @ip_vs_genl_fill_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_fill_daemon(%struct.sk_buff* %0, i32 %1, %struct.ipvs_sync_daemon_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipvs_sync_daemon_cfg*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ipvs_sync_daemon_cfg* %2, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @IPVS_CMD_ATTR_DAEMON, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %90

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @IPVS_DAEMON_ATTR_STATE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @nla_put_u32(%struct.sk_buff* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @IPVS_DAEMON_ATTR_MCAST_IFN, align 4
  %26 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %27 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @nla_put_string(%struct.sk_buff* %24, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @IPVS_DAEMON_ATTR_SYNC_ID, align 4
  %34 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %35 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @IPVS_DAEMON_ATTR_SYNC_MAXLEN, align 4
  %42 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %43 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nla_put_u16(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* @IPVS_DAEMON_ATTR_MCAST_PORT, align 4
  %50 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %51 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u16(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* @IPVS_DAEMON_ATTR_MCAST_TTL, align 4
  %58 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @nla_put_u8(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55, %47, %39, %31, %23, %17
  br label %84

64:                                               ; preds = %55
  %65 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %66 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AF_INET, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i32, i32* @IPVS_DAEMON_ATTR_MCAST_GROUP, align 4
  %73 = load %struct.ipvs_sync_daemon_cfg*, %struct.ipvs_sync_daemon_cfg** %7, align 8
  %74 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nla_put_in_addr(%struct.sk_buff* %71, i32 %72, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %84

80:                                               ; preds = %70, %64
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %83 = call i32 @nla_nest_end(%struct.sk_buff* %81, %struct.nlattr* %82)
  store i32 0, i32* %4, align 4
  br label %90

84:                                               ; preds = %79, %63
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %87 = call i32 @nla_nest_cancel(%struct.sk_buff* %85, %struct.nlattr* %86)
  %88 = load i32, i32* @EMSGSIZE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %80, %14
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
