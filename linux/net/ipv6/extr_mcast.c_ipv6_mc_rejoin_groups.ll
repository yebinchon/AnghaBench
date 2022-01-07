; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_rejoin_groups.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_rejoin_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { %struct.ifmcaddr6* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*)* @ipv6_mc_rejoin_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_mc_rejoin_groups(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %6 = call i64 @mld_in_v1_mode(%struct.inet6_dev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 0
  %11 = call i32 @read_lock_bh(i32* %10)
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %12, i32 0, i32 1
  %14 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %13, align 8
  store %struct.ifmcaddr6* %14, %struct.ifmcaddr6** %3, align 8
  br label %15

15:                                               ; preds = %21, %8
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %17 = icmp ne %struct.ifmcaddr6* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %20 = call i32 @igmp6_join_group(%struct.ifmcaddr6* %19)
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %23 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %22, i32 0, i32 0
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %23, align 8
  store %struct.ifmcaddr6* %24, %struct.ifmcaddr6** %3, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %27 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %26, i32 0, i32 0
  %28 = call i32 @read_unlock_bh(i32* %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %31 = call i32 @mld_send_report(%struct.inet6_dev* %30, i32* null)
  br label %32

32:                                               ; preds = %29, %25
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @mld_in_v1_mode(%struct.inet6_dev*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @igmp6_join_group(%struct.ifmcaddr6*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @mld_send_report(%struct.inet6_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
