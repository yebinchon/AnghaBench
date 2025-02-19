; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_conntrack_reasm.c_nf_ct_frag6_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_conntrack_reasm.c_nf_ct_frag6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32*, i32 }

@ip6frag_init = common dso_local global i32 0, align 4
@nf_frags = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@nf_ct_frag6_expire = common dso_local global i32 0, align 4
@nf_frags_cache_name = common dso_local global i32 0, align 4
@nfct_rhash_params = common dso_local global i32 0, align 4
@nf_ct_net_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_frag6_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @ip6frag_init, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_frags, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_frags, i32 0, i32 4), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_frags, i32 0, i32 0), align 8
  %3 = load i32, i32* @nf_ct_frag6_expire, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_frags, i32 0, i32 3), align 4
  %4 = load i32, i32* @nf_frags_cache_name, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_frags, i32 0, i32 2), align 8
  %5 = load i32, i32* @nfct_rhash_params, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nf_frags, i32 0, i32 1), align 4
  %6 = call i32 @inet_frags_init(%struct.TYPE_4__* @nf_frags)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %17

10:                                               ; preds = %0
  %11 = call i32 @register_pernet_subsys(i32* @nf_ct_net_ops)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @inet_frags_fini(%struct.TYPE_4__* @nf_frags)
  br label %16

16:                                               ; preds = %14, %10
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @inet_frags_init(%struct.TYPE_4__*) #1

declare dso_local i32 @register_pernet_subsys(i32*) #1

declare dso_local i32 @inet_frags_fini(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
