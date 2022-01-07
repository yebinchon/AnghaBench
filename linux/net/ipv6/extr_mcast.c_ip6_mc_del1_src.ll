; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_del1_src.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_ip6_mc_del1_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, %struct.ip6_sf_list*, %struct.ip6_sf_list*, %struct.inet6_dev* }
%struct.ip6_sf_list = type { i64*, %struct.ip6_sf_list*, i32, i64, i32 }
%struct.inet6_dev = type { i32 }
%struct.in6_addr = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@MAF_NOREPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmcaddr6*, i32, %struct.in6_addr*)* @ip6_mc_del1_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_mc_del1_src(%struct.ifmcaddr6* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ip6_sf_list*, align 8
  %9 = alloca %struct.ip6_sf_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inet6_dev*, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store i32 0, i32* %10, align 4
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %9, align 8
  %12 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %13 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %12, i32 0, i32 2
  %14 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %13, align 8
  store %struct.ip6_sf_list* %14, %struct.ip6_sf_list** %8, align 8
  br label %15

15:                                               ; preds = %27, %3
  %16 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %17 = icmp ne %struct.ip6_sf_list* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %20 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %19, i32 0, i32 4
  %21 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %22 = call i64 @ipv6_addr_equal(i32* %20, %struct.in6_addr* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %31

25:                                               ; preds = %18
  %26 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  store %struct.ip6_sf_list* %26, %struct.ip6_sf_list** %9, align 8
  br label %27

27:                                               ; preds = %25
  %28 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %29 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %28, i32 0, i32 1
  %30 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %29, align 8
  store %struct.ip6_sf_list* %30, %struct.ip6_sf_list** %8, align 8
  br label %15

31:                                               ; preds = %24, %15
  %32 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %33 = icmp ne %struct.ip6_sf_list* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %36 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34, %31
  %44 = load i32, i32* @ESRCH, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %124

46:                                               ; preds = %34
  %47 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %48 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %56 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @MCAST_INCLUDE, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %122, label %62

62:                                               ; preds = %46
  %63 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %64 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @MCAST_EXCLUDE, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %122, label %70

70:                                               ; preds = %62
  %71 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %72 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %71, i32 0, i32 3
  %73 = load %struct.inet6_dev*, %struct.inet6_dev** %72, align 8
  store %struct.inet6_dev* %73, %struct.inet6_dev** %11, align 8
  %74 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %9, align 8
  %75 = icmp ne %struct.ip6_sf_list* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %78 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %77, i32 0, i32 1
  %79 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %78, align 8
  %80 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %9, align 8
  %81 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %80, i32 0, i32 1
  store %struct.ip6_sf_list* %79, %struct.ip6_sf_list** %81, align 8
  br label %88

82:                                               ; preds = %70
  %83 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %84 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %83, i32 0, i32 1
  %85 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %84, align 8
  %86 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %87 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %86, i32 0, i32 2
  store %struct.ip6_sf_list* %85, %struct.ip6_sf_list** %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %90 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %88
  %94 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %95 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MAF_NOREPORT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %118, label %100

100:                                              ; preds = %93
  %101 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %102 = call i32 @mld_in_v1_mode(%struct.inet6_dev* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %100
  %105 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %106 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %109 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %111 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %110, i32 0, i32 1
  %112 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %111, align 8
  %113 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %114 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %113, i32 0, i32 1
  store %struct.ip6_sf_list* %112, %struct.ip6_sf_list** %114, align 8
  %115 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %116 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %117 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %116, i32 0, i32 1
  store %struct.ip6_sf_list* %115, %struct.ip6_sf_list** %117, align 8
  store i32 1, i32* %10, align 4
  br label %121

118:                                              ; preds = %100, %93, %88
  %119 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %8, align 8
  %120 = call i32 @kfree(%struct.ip6_sf_list* %119)
  br label %121

121:                                              ; preds = %118, %104
  br label %122

122:                                              ; preds = %121, %62, %46
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %43
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @mld_in_v1_mode(%struct.inet6_dev*) #1

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
