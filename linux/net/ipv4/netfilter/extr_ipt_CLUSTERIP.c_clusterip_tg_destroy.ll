; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_tg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_tg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgdtor_param = type { i32, i32, %struct.ipt_clusterip_tgt_info* }
%struct.ipt_clusterip_tgt_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_tgdtor_param*)* @clusterip_tg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clusterip_tg_destroy(%struct.xt_tgdtor_param* %0) #0 {
  %2 = alloca %struct.xt_tgdtor_param*, align 8
  %3 = alloca %struct.ipt_clusterip_tgt_info*, align 8
  store %struct.xt_tgdtor_param* %0, %struct.xt_tgdtor_param** %2, align 8
  %4 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %5 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %4, i32 0, i32 2
  %6 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %5, align 8
  store %struct.ipt_clusterip_tgt_info* %6, %struct.ipt_clusterip_tgt_info** %3, align 8
  %7 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %3, align 8
  %8 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clusterip_config_entry_put(i32 %9)
  %11 = load %struct.ipt_clusterip_tgt_info*, %struct.ipt_clusterip_tgt_info** %3, align 8
  %12 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, %struct.ipt_clusterip_tgt_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clusterip_config_put(i32 %13)
  %15 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %16 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %19 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @nf_ct_netns_put(i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @clusterip_config_entry_put(i32) #1

declare dso_local i32 @clusterip_config_put(i32) #1

declare dso_local i32 @nf_ct_netns_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
