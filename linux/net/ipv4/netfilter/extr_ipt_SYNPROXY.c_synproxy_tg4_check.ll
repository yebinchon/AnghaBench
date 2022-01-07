; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_SYNPROXY.c_synproxy_tg4_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_SYNPROXY.c_synproxy_tg4_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, %struct.ipt_entry* }
%struct.ipt_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.synproxy_net = type { i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@XT_INV_PROTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @synproxy_tg4_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synproxy_tg4_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.synproxy_net*, align 8
  %5 = alloca %struct.ipt_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %7 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.synproxy_net* @synproxy_pernet(i32 %9)
  store %struct.synproxy_net* %10, %struct.synproxy_net** %4, align 8
  %11 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %12 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %11, i32 0, i32 2
  %13 = load %struct.ipt_entry*, %struct.ipt_entry** %12, align 8
  store %struct.ipt_entry* %13, %struct.ipt_entry** %5, align 8
  %14 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %15 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPPROTO_TCP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XT_INV_PROTO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20, %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %33 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %36 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nf_ct_netns_get(i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %62

43:                                               ; preds = %31
  %44 = load %struct.synproxy_net*, %struct.synproxy_net** %4, align 8
  %45 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %46 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nf_synproxy_ipv4_init(%struct.synproxy_net* %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %53 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %56 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @nf_ct_netns_put(i32 %54, i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %43
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %51, %41, %28
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.synproxy_net* @synproxy_pernet(i32) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

declare dso_local i32 @nf_synproxy_ipv4_init(%struct.synproxy_net*, i32) #1

declare dso_local i32 @nf_ct_netns_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
