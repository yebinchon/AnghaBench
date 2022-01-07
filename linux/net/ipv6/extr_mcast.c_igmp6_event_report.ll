; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_event_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_event_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.ifmcaddr6 = type { i32, i32, i32, i32, i32, %struct.ifmcaddr6* }
%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.mld_msg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAF_LAST_REPORTER = common dso_local global i32 0, align 4
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igmp6_event_report(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.mld_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PACKET_LOOPBACK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PACKET_MULTICAST, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PACKET_BROADCAST, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %113

27:                                               ; preds = %20, %14
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call i32 @pskb_may_pull(%struct.sk_buff* %28, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %113

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i64 @icmp6_hdr(%struct.sk_buff* %35)
  %37 = inttoptr i64 %36 to %struct.mld_msg*
  store %struct.mld_msg* %37, %struct.mld_msg** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @ipv6_addr_type(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %113

53:                                               ; preds = %45, %34
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.inet6_dev* @__in6_dev_get(i32 %56)
  store %struct.inet6_dev* %57, %struct.inet6_dev** %5, align 8
  %58 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %59 = icmp ne %struct.inet6_dev* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %113

63:                                               ; preds = %53
  %64 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %65 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %64, i32 0, i32 0
  %66 = call i32 @read_lock_bh(i32* %65)
  %67 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %68 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %67, i32 0, i32 1
  %69 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %68, align 8
  store %struct.ifmcaddr6* %69, %struct.ifmcaddr6** %4, align 8
  br label %70

70:                                               ; preds = %105, %63
  %71 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %72 = icmp ne %struct.ifmcaddr6* %71, null
  br i1 %72, label %73, label %109

73:                                               ; preds = %70
  %74 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %75 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %74, i32 0, i32 4
  %76 = load %struct.mld_msg*, %struct.mld_msg** %6, align 8
  %77 = getelementptr inbounds %struct.mld_msg, %struct.mld_msg* %76, i32 0, i32 0
  %78 = call i64 @ipv6_addr_equal(i32* %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %73
  %81 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %82 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %81, i32 0, i32 1
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %85 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %84, i32 0, i32 3
  %86 = call i64 @del_timer(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %90 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %89, i32 0, i32 2
  %91 = call i32 @refcount_dec(i32* %90)
  br label %92

92:                                               ; preds = %88, %80
  %93 = load i32, i32* @MAF_LAST_REPORTER, align 4
  %94 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %98 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %102 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %101, i32 0, i32 1
  %103 = call i32 @spin_unlock(i32* %102)
  br label %109

104:                                              ; preds = %73
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %107 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %106, i32 0, i32 5
  %108 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %107, align 8
  store %struct.ifmcaddr6* %108, %struct.ifmcaddr6** %4, align 8
  br label %70

109:                                              ; preds = %92, %70
  %110 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %111 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %110, i32 0, i32 0
  %112 = call i32 @read_unlock_bh(i32* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %60, %50, %31, %26, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @icmp6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
