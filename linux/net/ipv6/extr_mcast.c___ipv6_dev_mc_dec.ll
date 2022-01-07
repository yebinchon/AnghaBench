; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c___ipv6_dev_mc_dec.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c___ipv6_dev_mc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64, %struct.ifmcaddr6*, i32 }
%struct.in6_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipv6_dev_mc_dec(%struct.inet6_dev* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca %struct.ifmcaddr6**, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %10 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %9, i32 0, i32 0
  %11 = call i32 @write_lock_bh(i32* %10)
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %12, i32 0, i32 1
  store %struct.ifmcaddr6** %13, %struct.ifmcaddr6*** %7, align 8
  br label %14

14:                                               ; preds = %49, %2
  %15 = load %struct.ifmcaddr6**, %struct.ifmcaddr6*** %7, align 8
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %15, align 8
  store %struct.ifmcaddr6* %16, %struct.ifmcaddr6** %6, align 8
  %17 = icmp ne %struct.ifmcaddr6* %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %20 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %19, i32 0, i32 2
  %21 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %22 = call i64 @ipv6_addr_equal(i32* %20, %struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %26 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %32 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %31, i32 0, i32 1
  %33 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %32, align 8
  %34 = load %struct.ifmcaddr6**, %struct.ifmcaddr6*** %7, align 8
  store %struct.ifmcaddr6* %33, %struct.ifmcaddr6** %34, align 8
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %36 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %35, i32 0, i32 0
  %37 = call i32 @write_unlock_bh(i32* %36)
  %38 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %39 = call i32 @igmp6_group_dropped(%struct.ifmcaddr6* %38)
  %40 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %41 = call i32 @ip6_mc_clear_src(%struct.ifmcaddr6* %40)
  %42 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %43 = call i32 @ma_put(%struct.ifmcaddr6* %42)
  store i32 0, i32* %3, align 4
  br label %58

44:                                               ; preds = %24
  %45 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %46 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %45, i32 0, i32 0
  %47 = call i32 @write_unlock_bh(i32* %46)
  store i32 0, i32* %3, align 4
  br label %58

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %51 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %50, i32 0, i32 1
  store %struct.ifmcaddr6** %51, %struct.ifmcaddr6*** %7, align 8
  br label %14

52:                                               ; preds = %14
  %53 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %54 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %53, i32 0, i32 0
  %55 = call i32 @write_unlock_bh(i32* %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %44, %30
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @igmp6_group_dropped(%struct.ifmcaddr6*) #1

declare dso_local i32 @ip6_mc_clear_src(%struct.ifmcaddr6*) #1

declare dso_local i32 @ma_put(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
