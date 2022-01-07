; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_nf_synproxy_ipv4_fini.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_nf_synproxy_ipv4_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synproxy_net = type { i64 }
%struct.net = type { i32 }

@ipv4_synproxy_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_synproxy_ipv4_fini(%struct.synproxy_net* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.synproxy_net*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.synproxy_net* %0, %struct.synproxy_net** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %5 = load %struct.synproxy_net*, %struct.synproxy_net** %3, align 8
  %6 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.synproxy_net*, %struct.synproxy_net** %3, align 8
  %10 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load i32, i32* @ipv4_synproxy_ops, align 4
  %16 = load i32, i32* @ipv4_synproxy_ops, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = call i32 @nf_unregister_net_hooks(%struct.net* %14, i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @nf_unregister_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
