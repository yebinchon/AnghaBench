; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { %struct.ifmcaddr6* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_mc_up(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 0
  %6 = call i32 @read_lock_bh(i32* %5)
  %7 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %8 = call i32 @ipv6_mc_reset(%struct.inet6_dev* %7)
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 1
  %11 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %10, align 8
  store %struct.ifmcaddr6* %11, %struct.ifmcaddr6** %3, align 8
  br label %12

12:                                               ; preds = %21, %1
  %13 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %14 = icmp ne %struct.ifmcaddr6* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %17 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %18 = call i32 @mld_del_delrec(%struct.inet6_dev* %16, %struct.ifmcaddr6* %17)
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %20 = call i32 @igmp6_group_added(%struct.ifmcaddr6* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %23 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %22, i32 0, i32 0
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %23, align 8
  store %struct.ifmcaddr6* %24, %struct.ifmcaddr6** %3, align 8
  br label %12

25:                                               ; preds = %12
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %27 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %26, i32 0, i32 0
  %28 = call i32 @read_unlock_bh(i32* %27)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @ipv6_mc_reset(%struct.inet6_dev*) #1

declare dso_local i32 @mld_del_delrec(%struct.inet6_dev*, %struct.ifmcaddr6*) #1

declare dso_local i32 @igmp6_group_added(%struct.ifmcaddr6*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
