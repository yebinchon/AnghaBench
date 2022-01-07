; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c___ipv6_dev_mc_inc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c___ipv6_dev_mc_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifmcaddr6 = type { %struct.ifmcaddr6*, i32, i32 }
%struct.inet6_dev = type { i32, %struct.ifmcaddr6*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.in6_addr*, i32)* @__ipv6_dev_mc_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ipv6_dev_mc_inc(%struct.net_device* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmcaddr6*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %11)
  store %struct.inet6_dev* %12, %struct.inet6_dev** %9, align 8
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %14 = icmp ne %struct.inet6_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %103

18:                                               ; preds = %3
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %19, i32 0, i32 0
  %21 = call i32 @write_lock_bh(i32* %20)
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %23 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %28 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %27, i32 0, i32 0
  %29 = call i32 @write_unlock_bh(i32* %28)
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %31 = call i32 @in6_dev_put(%struct.inet6_dev* %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %103

34:                                               ; preds = %18
  %35 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %36 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %35, i32 0, i32 1
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %36, align 8
  store %struct.ifmcaddr6* %37, %struct.ifmcaddr6** %8, align 8
  br label %38

38:                                               ; preds = %63, %34
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %40 = icmp ne %struct.ifmcaddr6* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %43 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %42, i32 0, i32 1
  %44 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %45 = call i64 @ipv6_addr_equal(i32* %43, %struct.in6_addr* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %49 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %53 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %52, i32 0, i32 0
  %54 = call i32 @write_unlock_bh(i32* %53)
  %55 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %56 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %57 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %56, i32 0, i32 1
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ip6_mc_add_src(%struct.inet6_dev* %55, i32* %57, i32 %58, i32 0, i32* null, i32 0)
  %60 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %61 = call i32 @in6_dev_put(%struct.inet6_dev* %60)
  store i32 0, i32* %4, align 4
  br label %103

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %65 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %64, i32 0, i32 0
  %66 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %65, align 8
  store %struct.ifmcaddr6* %66, %struct.ifmcaddr6** %8, align 8
  br label %38

67:                                               ; preds = %38
  %68 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %69 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.ifmcaddr6* @mca_alloc(%struct.inet6_dev* %68, %struct.in6_addr* %69, i32 %70)
  store %struct.ifmcaddr6* %71, %struct.ifmcaddr6** %8, align 8
  %72 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %73 = icmp ne %struct.ifmcaddr6* %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %76 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %75, i32 0, i32 0
  %77 = call i32 @write_unlock_bh(i32* %76)
  %78 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %79 = call i32 @in6_dev_put(%struct.inet6_dev* %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %103

82:                                               ; preds = %67
  %83 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %84 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %83, i32 0, i32 1
  %85 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %84, align 8
  %86 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %87 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %86, i32 0, i32 0
  store %struct.ifmcaddr6* %85, %struct.ifmcaddr6** %87, align 8
  %88 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %89 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %90 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %89, i32 0, i32 1
  store %struct.ifmcaddr6* %88, %struct.ifmcaddr6** %90, align 8
  %91 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %92 = call i32 @mca_get(%struct.ifmcaddr6* %91)
  %93 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %94 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %93, i32 0, i32 0
  %95 = call i32 @write_unlock_bh(i32* %94)
  %96 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %97 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %98 = call i32 @mld_del_delrec(%struct.inet6_dev* %96, %struct.ifmcaddr6* %97)
  %99 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %100 = call i32 @igmp6_group_added(%struct.ifmcaddr6* %99)
  %101 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %102 = call i32 @ma_put(%struct.ifmcaddr6* %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %82, %74, %47, %26, %15
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_mc_add_src(%struct.inet6_dev*, i32*, i32, i32, i32*, i32) #1

declare dso_local %struct.ifmcaddr6* @mca_alloc(%struct.inet6_dev*, %struct.in6_addr*, i32) #1

declare dso_local i32 @mca_get(%struct.ifmcaddr6*) #1

declare dso_local i32 @mld_del_delrec(%struct.inet6_dev*, %struct.ifmcaddr6*) #1

declare dso_local i32 @igmp6_group_added(%struct.ifmcaddr6*) #1

declare dso_local i32 @ma_put(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
