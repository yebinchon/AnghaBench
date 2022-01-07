; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_daemon.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.netns_ipvs = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPVS_CMD_NEW_DAEMON = common dso_local global i32 0, align 4
@IPVS_CMD_DEL_DAEMON = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_MAX = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_DAEMON = common dso_local global i64 0, align 8
@ip_vs_daemon_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ip_vs_genl_set_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_set_daemon(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.netns_ipvs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load %struct.net*, %struct.net** %7, align 8
  %19 = call %struct.netns_ipvs* @net_ipvs(%struct.net* %18)
  store %struct.netns_ipvs* %19, %struct.netns_ipvs** %8, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IPVS_CMD_NEW_DAEMON, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IPVS_CMD_DEL_DAEMON, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28, %2
  %33 = load i32, i32* @IPVS_DAEMON_ATTR_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %9, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %10, align 8
  %38 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @IPVS_CMD_ATTR_DAEMON, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %32
  %46 = load i32, i32* @IPVS_DAEMON_ATTR_MAX, align 4
  %47 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @IPVS_CMD_ATTR_DAEMON, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ip_vs_daemon_policy, align 4
  %54 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %55 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %37, i32 %46, i32 %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45, %32
  store i32 2, i32* %11, align 4
  br label %71

60:                                               ; preds = %45
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @IPVS_CMD_NEW_DAEMON, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.netns_ipvs*, %struct.netns_ipvs** %8, align 8
  %66 = call i32 @ip_vs_genl_new_daemon(%struct.netns_ipvs* %65, %struct.nlattr** %37)
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %60
  %68 = load %struct.netns_ipvs*, %struct.netns_ipvs** %8, align 8
  %69 = call i32 @ip_vs_genl_del_daemon(%struct.netns_ipvs* %68, %struct.nlattr** %37)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %59, %70
  %72 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %78 [
    i32 0, label %74
    i32 2, label %76
  ]

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74, %28
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, i32* %5, align 4
  ret i32 %77

78:                                               ; preds = %71
  unreachable
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.netns_ipvs* @net_ipvs(%struct.net*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_genl_new_daemon(%struct.netns_ipvs*, %struct.nlattr**) #1

declare dso_local i32 @ip_vs_genl_del_daemon(%struct.netns_ipvs*, %struct.nlattr**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
