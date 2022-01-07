; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_get_link_af_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_get_link_af_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in_device = type { i32 }

@IPV4_DEVCONF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i32)* @inet_get_link_af_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inet_get_link_af_size(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.in_device* @rcu_dereference_rtnl(i32 %9)
  store %struct.in_device* %10, %struct.in_device** %6, align 8
  %11 = load %struct.in_device*, %struct.in_device** %6, align 8
  %12 = icmp ne %struct.in_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @IPV4_DEVCONF_MAX, align 4
  %16 = mul nsw i32 %15, 4
  %17 = call i64 @nla_total_size(i32 %16)
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local %struct.in_device* @rcu_dereference_rtnl(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
