; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_rpfilter.c_rpfilter_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_rpfilter.c_rpfilter_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_rpfilter_info* }
%struct.xt_rpfilter_info = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32, i32 }

@XT_RPFILTER_INVERT = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@XT_RPFILTER_VALID_MARK = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @rpfilter_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpfilter_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_rpfilter_info*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.flowi4, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %10 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %10, i32 0, i32 0
  %12 = load %struct.xt_rpfilter_info*, %struct.xt_rpfilter_info** %11, align 8
  store %struct.xt_rpfilter_info* %12, %struct.xt_rpfilter_info** %6, align 8
  %13 = load %struct.xt_rpfilter_info*, %struct.xt_rpfilter_info** %6, align 8
  %14 = getelementptr inbounds %struct.xt_rpfilter_info, %struct.xt_rpfilter_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XT_RPFILTER_INVERT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %20 = call i32 @xt_in(%struct.xt_action_param* %19)
  %21 = call i64 @rpfilter_is_loopback(%struct.sk_buff* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = xor i32 1, %24
  store i32 %25, i32* %3, align 4
  br label %98

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %27)
  store %struct.iphdr* %28, %struct.iphdr** %7, align 8
  %29 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ipv4_is_zeronet(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ipv4_is_lbcast(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ipv4_is_local_multicast(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %9, align 4
  %48 = xor i32 1, %47
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %26
  %51 = call i32 @memset(%struct.flowi4* %8, i32 0, i32 28)
  %52 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  %53 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 6
  store i32 %52, i32* %53, align 4
  %54 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %55 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rpfilter_get_saddr(i32 %60)
  %62 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = load %struct.xt_rpfilter_info*, %struct.xt_rpfilter_info** %6, align 8
  %64 = getelementptr inbounds %struct.xt_rpfilter_info, %struct.xt_rpfilter_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @XT_RPFILTER_VALID_MARK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %50
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %72, %69 ], [ 0, %73 ]
  %76 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %78 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @RT_TOS(i32 %79)
  %81 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %83 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %85 = call i32 @xt_in(%struct.xt_action_param* %84)
  %86 = call i32 @l3mdev_master_ifindex_rcu(i32 %85)
  %87 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %89 = call i32 @xt_net(%struct.xt_action_param* %88)
  %90 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %91 = call i32 @xt_in(%struct.xt_action_param* %90)
  %92 = load %struct.xt_rpfilter_info*, %struct.xt_rpfilter_info** %6, align 8
  %93 = getelementptr inbounds %struct.xt_rpfilter_info, %struct.xt_rpfilter_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rpfilter_lookup_reverse(i32 %89, %struct.flowi4* %8, i32 %91, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = xor i32 %95, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %74, %46, %23
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @rpfilter_is_loopback(%struct.sk_buff*, i32) #1

declare dso_local i32 @xt_in(%struct.xt_action_param*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv4_is_zeronet(i32) #1

declare dso_local i64 @ipv4_is_lbcast(i32) #1

declare dso_local i64 @ipv4_is_local_multicast(i32) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @rpfilter_get_saddr(i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @l3mdev_master_ifindex_rcu(i32) #1

declare dso_local i32 @rpfilter_lookup_reverse(i32, %struct.flowi4*, i32, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
