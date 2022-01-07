; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_del_delrec.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_del_delrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, i32, %struct.ifmcaddr6* }
%struct.ifmcaddr6 = type { i64, i32, i32, i32, %struct.ip6_sf_list*, %struct.ip6_sf_list*, %struct.ifmcaddr6*, %struct.in6_addr }
%struct.ip6_sf_list = type { i32, %struct.ip6_sf_list* }
%struct.in6_addr = type { i32 }

@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.ifmcaddr6*)* @mld_del_delrec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_del_delrec(%struct.inet6_dev* %0, %struct.ifmcaddr6* %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca %struct.ifmcaddr6*, align 8
  %7 = alloca %struct.ip6_sf_list*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %4, align 8
  %9 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %10 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %9, i32 0, i32 7
  store %struct.in6_addr* %10, %struct.in6_addr** %8, align 8
  %11 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %12 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_bh(i32* %12)
  store %struct.ifmcaddr6* null, %struct.ifmcaddr6** %6, align 8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 2
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %15, align 8
  store %struct.ifmcaddr6* %16, %struct.ifmcaddr6** %5, align 8
  br label %17

17:                                               ; preds = %29, %2
  %18 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %19 = icmp ne %struct.ifmcaddr6* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %22 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %21, i32 0, i32 7
  %23 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %24 = call i64 @ipv6_addr_equal(%struct.in6_addr* %22, %struct.in6_addr* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  store %struct.ifmcaddr6* %28, %struct.ifmcaddr6** %6, align 8
  br label %29

29:                                               ; preds = %27
  %30 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %31 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %30, i32 0, i32 6
  %32 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %31, align 8
  store %struct.ifmcaddr6* %32, %struct.ifmcaddr6** %5, align 8
  br label %17

33:                                               ; preds = %26, %17
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %35 = icmp ne %struct.ifmcaddr6* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %38 = icmp ne %struct.ifmcaddr6* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %41 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %40, i32 0, i32 6
  %42 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %41, align 8
  %43 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %6, align 8
  %44 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %43, i32 0, i32 6
  store %struct.ifmcaddr6* %42, %struct.ifmcaddr6** %44, align 8
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %47 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %46, i32 0, i32 6
  %48 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %47, align 8
  %49 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %50 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %49, i32 0, i32 2
  store %struct.ifmcaddr6* %48, %struct.ifmcaddr6** %50, align 8
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %54 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %57 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %56, i32 0, i32 1
  %58 = call i32 @spin_lock_bh(i32* %57)
  %59 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %60 = icmp ne %struct.ifmcaddr6* %59, null
  br i1 %60, label %61, label %119

61:                                               ; preds = %52
  %62 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %63 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %66 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %68 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MCAST_INCLUDE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %61
  %73 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %74 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %73, i32 0, i32 5
  %75 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %74, align 8
  %76 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %77 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %76, i32 0, i32 5
  %78 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %77, align 8
  %79 = call i32 @swap(%struct.ip6_sf_list* %75, %struct.ip6_sf_list* %78)
  %80 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %81 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %80, i32 0, i32 4
  %82 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %81, align 8
  %83 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %84 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %83, i32 0, i32 4
  %85 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %84, align 8
  %86 = call i32 @swap(%struct.ip6_sf_list* %82, %struct.ip6_sf_list* %85)
  %87 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %88 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %87, i32 0, i32 4
  %89 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %88, align 8
  store %struct.ip6_sf_list* %89, %struct.ip6_sf_list** %7, align 8
  br label %90

90:                                               ; preds = %99, %72
  %91 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %7, align 8
  %92 = icmp ne %struct.ip6_sf_list* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %95 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %7, align 8
  %98 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %93
  %100 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %7, align 8
  %101 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %100, i32 0, i32 1
  %102 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %101, align 8
  store %struct.ip6_sf_list* %102, %struct.ip6_sf_list** %7, align 8
  br label %90

103:                                              ; preds = %90
  br label %110

104:                                              ; preds = %61
  %105 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %106 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %109 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %103
  %111 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %112 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @in6_dev_put(i32 %113)
  %115 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %116 = call i32 @ip6_mc_clear_src(%struct.ifmcaddr6* %115)
  %117 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %118 = call i32 @kfree(%struct.ifmcaddr6* %117)
  br label %119

119:                                              ; preds = %110, %52
  %120 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %121 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock_bh(i32* %121)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @swap(%struct.ip6_sf_list*, %struct.ip6_sf_list*) #1

declare dso_local i32 @in6_dev_put(i32) #1

declare dso_local i32 @ip6_mc_clear_src(%struct.ifmcaddr6*) #1

declare dso_local i32 @kfree(%struct.ifmcaddr6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
