; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_SYNPROXY.c_synproxy_tg6_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_SYNPROXY.c_synproxy_tg6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, %struct.ip6t_entry* }
%struct.ip6t_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.synproxy_net = type { i32 }

@IP6T_F_PROTO = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@XT_INV_PROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @synproxy_tg6_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synproxy_tg6_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.synproxy_net*, align 8
  %5 = alloca %struct.ip6t_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %7 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.synproxy_net* @synproxy_pernet(i32 %9)
  store %struct.synproxy_net* %10, %struct.synproxy_net** %4, align 8
  %11 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %12 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %11, i32 0, i32 2
  %13 = load %struct.ip6t_entry*, %struct.ip6t_entry** %12, align 8
  store %struct.ip6t_entry* %13, %struct.ip6t_entry** %5, align 8
  %14 = load %struct.ip6t_entry*, %struct.ip6t_entry** %5, align 8
  %15 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IP6T_F_PROTO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.ip6t_entry*, %struct.ip6t_entry** %5, align 8
  %23 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPPROTO_TCP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load %struct.ip6t_entry*, %struct.ip6t_entry** %5, align 8
  %30 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XT_INV_PROTO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %21, %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %70

39:                                               ; preds = %28
  %40 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %41 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %44 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nf_ct_netns_get(i32 %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %70

51:                                               ; preds = %39
  %52 = load %struct.synproxy_net*, %struct.synproxy_net** %4, align 8
  %53 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %54 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nf_synproxy_ipv6_init(%struct.synproxy_net* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %61 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %64 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @nf_ct_netns_put(i32 %62, i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %51
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %59, %49, %36
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.synproxy_net* @synproxy_pernet(i32) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

declare dso_local i32 @nf_synproxy_ipv6_init(%struct.synproxy_net*, i32) #1

declare dso_local i32 @nf_ct_netns_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
