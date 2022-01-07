; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_xmarksources.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_xmarksources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i64*, i32, %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { i64*, i32, %struct.ip6_sf_list* }
%struct.in6_addr = type { i32 }

@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MAF_GSQUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmcaddr6*, i32, %struct.in6_addr*)* @mld_xmarksources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mld_xmarksources(%struct.ifmcaddr6* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ip6_sf_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %12 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %11, i32 0, i32 2
  %13 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %12, align 8
  store %struct.ip6_sf_list* %13, %struct.ip6_sf_list** %8, align 8
  br label %14

14:                                               ; preds = %67, %3
  %15 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %16 = icmp ne %struct.ip6_sf_list* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %14
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %71

22:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %29 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @MCAST_INCLUDE, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %27
  %36 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %37 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @MCAST_EXCLUDE, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %43 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @MCAST_EXCLUDE, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %41, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35, %27
  br label %66

50:                                               ; preds = %35
  %51 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %51, i64 %53
  %55 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %56 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %55, i32 0, i32 1
  %57 = call i64 @ipv6_addr_equal(%struct.in6_addr* %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %23

66:                                               ; preds = %59, %49, %23
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %69 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %68, i32 0, i32 2
  %70 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %69, align 8
  store %struct.ip6_sf_list* %70, %struct.ip6_sf_list** %8, align 8
  br label %14

71:                                               ; preds = %21, %14
  %72 = load i32, i32* @MAF_GSQUERY, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %75 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %83

82:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
