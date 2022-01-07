; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { %struct.ifmcaddr6* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_mc_down(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 0
  %6 = call i32 @read_lock_bh(i32* %5)
  %7 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %8 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %7, i32 0, i32 1
  %9 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  store %struct.ifmcaddr6* %9, %struct.ifmcaddr6** %3, align 8
  br label %10

10:                                               ; preds = %16, %1
  %11 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %12 = icmp ne %struct.ifmcaddr6* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %15 = call i32 @igmp6_group_dropped(%struct.ifmcaddr6* %14)
  br label %16

16:                                               ; preds = %13
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %18 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %17, i32 0, i32 0
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %18, align 8
  store %struct.ifmcaddr6* %19, %struct.ifmcaddr6** %3, align 8
  br label %10

20:                                               ; preds = %10
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %22 = call i32 @mld_ifc_stop_timer(%struct.inet6_dev* %21)
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %24 = call i32 @mld_gq_stop_timer(%struct.inet6_dev* %23)
  %25 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %26 = call i32 @mld_dad_stop_timer(%struct.inet6_dev* %25)
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %28 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %27, i32 0, i32 0
  %29 = call i32 @read_unlock_bh(i32* %28)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @igmp6_group_dropped(%struct.ifmcaddr6*) #1

declare dso_local i32 @mld_ifc_stop_timer(%struct.inet6_dev*) #1

declare dso_local i32 @mld_gq_stop_timer(%struct.inet6_dev*) #1

declare dso_local i32 @mld_dad_stop_timer(%struct.inet6_dev*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
