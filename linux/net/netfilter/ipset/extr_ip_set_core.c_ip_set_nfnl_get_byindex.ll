; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_nfnl_get_byindex.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_nfnl_get_byindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_set = type { i32 }
%struct.ip_set_net = type { i64 }

@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@NFNL_SUBSYS_IPSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ip_set_nfnl_get_byindex(%struct.net* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca %struct.ip_set_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.net*, %struct.net** %4, align 8
  %9 = call %struct.ip_set_net* @ip_set_pernet(%struct.net* %8)
  store %struct.ip_set_net* %9, %struct.ip_set_net** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.ip_set_net*, %struct.ip_set_net** %7, align 8
  %12 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @IPSET_INVALID_ID, align 8
  store i64 %16, i64* %3, align 8
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* @NFNL_SUBSYS_IPSET, align 4
  %19 = call i32 @nfnl_lock(i32 %18)
  %20 = load %struct.ip_set_net*, %struct.ip_set_net** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %20, i64 %21)
  store %struct.ip_set* %22, %struct.ip_set** %6, align 8
  %23 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %24 = icmp ne %struct.ip_set* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %27 = call i32 @__ip_set_get(%struct.ip_set* %26)
  br label %30

28:                                               ; preds = %17
  %29 = load i64, i64* @IPSET_INVALID_ID, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @NFNL_SUBSYS_IPSET, align 4
  %32 = call i32 @nfnl_unlock(i32 %31)
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %30, %15
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local %struct.ip_set_net* @ip_set_pernet(%struct.net*) #1

declare dso_local i32 @nfnl_lock(i32) #1

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i64) #1

declare dso_local i32 @__ip_set_get(%struct.ip_set*) #1

declare dso_local i32 @nfnl_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
