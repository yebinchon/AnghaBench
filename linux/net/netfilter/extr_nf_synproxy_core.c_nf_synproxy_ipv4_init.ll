; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_nf_synproxy_ipv4_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_nf_synproxy_ipv4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synproxy_net = type { i64 }
%struct.net = type { i32 }

@ipv4_synproxy_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_synproxy_ipv4_init(%struct.synproxy_net* %0, %struct.net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.synproxy_net*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store %struct.synproxy_net* %0, %struct.synproxy_net** %4, align 8
  store %struct.net* %1, %struct.net** %5, align 8
  %7 = load %struct.synproxy_net*, %struct.synproxy_net** %4, align 8
  %8 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load i32, i32* @ipv4_synproxy_ops, align 4
  %14 = load i32, i32* @ipv4_synproxy_ops, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @nf_register_net_hooks(%struct.net* %12, i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.synproxy_net*, %struct.synproxy_net** %4, align 8
  %24 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @nf_register_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
