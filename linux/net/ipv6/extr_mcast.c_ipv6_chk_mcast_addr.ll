; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_chk_mcast_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ipv6_chk_mcast_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64*, i32, %struct.ip6_sf_list*, i32, %struct.ifmcaddr6* }
%struct.ip6_sf_list = type { i64*, i32, %struct.ip6_sf_list* }

@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_chk_mcast_addr(%struct.net_device* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.ifmcaddr6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip6_sf_list*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %12)
  store %struct.inet6_dev* %13, %struct.inet6_dev** %7, align 8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %15 = icmp ne %struct.inet6_dev* %14, null
  br i1 %15, label %16, label %117

16:                                               ; preds = %3
  %17 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %17, i32 0, i32 0
  %19 = call i32 @read_lock_bh(i32* %18)
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %21 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %20, i32 0, i32 1
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %21, align 8
  store %struct.ifmcaddr6* %22, %struct.ifmcaddr6** %8, align 8
  br label %23

23:                                               ; preds = %34, %16
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %25 = icmp ne %struct.ifmcaddr6* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 3
  %29 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %30 = call i64 @ipv6_addr_equal(i32* %28, %struct.in6_addr* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %38

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %36 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %35, i32 0, i32 4
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %36, align 8
  store %struct.ifmcaddr6* %37, %struct.ifmcaddr6** %8, align 8
  br label %23

38:                                               ; preds = %32, %23
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %40 = icmp ne %struct.ifmcaddr6* %39, null
  br i1 %40, label %41, label %113

41:                                               ; preds = %38
  %42 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %43 = icmp ne %struct.in6_addr* %42, null
  br i1 %43, label %44, label %111

44:                                               ; preds = %41
  %45 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %46 = call i32 @ipv6_addr_any(%struct.in6_addr* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %111, label %48

48:                                               ; preds = %44
  %49 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %50 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %49, i32 0, i32 1
  %51 = call i32 @spin_lock_bh(i32* %50)
  %52 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %53 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %52, i32 0, i32 2
  %54 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %53, align 8
  store %struct.ip6_sf_list* %54, %struct.ip6_sf_list** %10, align 8
  br label %55

55:                                               ; preds = %66, %48
  %56 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %57 = icmp ne %struct.ip6_sf_list* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %60 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %59, i32 0, i32 1
  %61 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %62 = call i64 @ipv6_addr_equal(i32* %60, %struct.in6_addr* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %68 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %67, i32 0, i32 2
  %69 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %68, align 8
  store %struct.ip6_sf_list* %69, %struct.ip6_sf_list** %10, align 8
  br label %55

70:                                               ; preds = %64, %55
  %71 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %72 = icmp ne %struct.ip6_sf_list* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %75 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @MCAST_INCLUDE, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %73
  %82 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %10, align 8
  %83 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @MCAST_EXCLUDE, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %89 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* @MCAST_EXCLUDE, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %87, %93
  br label %95

95:                                               ; preds = %81, %73
  %96 = phi i1 [ true, %73 ], [ %94, %81 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %9, align 4
  br label %107

98:                                               ; preds = %70
  %99 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %100 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* @MCAST_EXCLUDE, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %98, %95
  %108 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %109 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock_bh(i32* %109)
  br label %112

111:                                              ; preds = %44, %41
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %111, %107
  br label %113

113:                                              ; preds = %112, %38
  %114 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %115 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %114, i32 0, i32 0
  %116 = call i32 @read_unlock_bh(i32* %115)
  br label %117

117:                                              ; preds = %113, %3
  %118 = call i32 (...) @rcu_read_unlock()
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
