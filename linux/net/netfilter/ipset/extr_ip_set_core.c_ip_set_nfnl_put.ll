; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_nfnl_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_nfnl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_set = type { i32 }
%struct.ip_set_net = type { i32 }

@NFNL_SUBSYS_IPSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_set_nfnl_put(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.ip_set_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %7)
  store %struct.ip_set_net* %8, %struct.ip_set_net** %6, align 8
  %9 = load i32, i32* @NFNL_SUBSYS_IPSET, align 4
  %10 = call i32 @nfnl_lock(i32 %9)
  %11 = load %struct.ip_set_net*, %struct.ip_set_net** %6, align 8
  %12 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.ip_set_net*, %struct.ip_set_net** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %16, i32 %17)
  store %struct.ip_set* %18, %struct.ip_set** %5, align 8
  %19 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %20 = icmp ne %struct.ip_set* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %23 = call i32 @__ip_set_put(%struct.ip_set* %22)
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* @NFNL_SUBSYS_IPSET, align 4
  %27 = call i32 @nfnl_unlock(i32 %26)
  ret void
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i32 @nfnl_lock(i32) #1

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i32) #1

declare dso_local i32 @__ip_set_put(%struct.ip_set*) #1

declare dso_local i32 @nfnl_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
