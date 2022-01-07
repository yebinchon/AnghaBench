; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_mc_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, i32, i64, i32*, i32, i64, i32 }

@mld_gq_timer_expire = common dso_local global i32 0, align 4
@mld_ifc_timer_expire = common dso_local global i32 0, align 4
@mld_dad_timer_expire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipv6_mc_init_dev(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %3 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %4 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %3, i32 0, i32 0
  %5 = call i32 @write_lock_bh(i32* %4)
  %6 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %7 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %6, i32 0, i32 7
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 5
  %13 = load i32, i32* @mld_gq_timer_expire, align 4
  %14 = call i32 @timer_setup(i32* %12, i32 %13, i32 0)
  %15 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %16 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 2
  %21 = load i32, i32* @mld_ifc_timer_expire, align 4
  %22 = call i32 @timer_setup(i32* %20, i32 %21, i32 0)
  %23 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %24 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %23, i32 0, i32 1
  %25 = load i32, i32* @mld_dad_timer_expire, align 4
  %26 = call i32 @timer_setup(i32* %24, i32 %25, i32 0)
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %28 = call i32 @ipv6_mc_reset(%struct.inet6_dev* %27)
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 0
  %31 = call i32 @write_unlock_bh(i32* %30)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ipv6_mc_reset(%struct.inet6_dev*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
