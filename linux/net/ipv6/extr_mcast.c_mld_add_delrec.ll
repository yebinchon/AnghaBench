; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_add_delrec.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_add_delrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ifmcaddr6*, i32 }
%struct.ifmcaddr6 = type { i64, %struct.ifmcaddr6*, i32, i32, %struct.ip6_sf_list*, i32, i32, i32 }
%struct.ip6_sf_list = type { i32, %struct.ip6_sf_list* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.ifmcaddr6*)* @mld_add_delrec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_add_delrec(%struct.inet6_dev* %0, %struct.ifmcaddr6* %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca %struct.ifmcaddr6*, align 8
  %6 = alloca %struct.ip6_sf_list*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store %struct.ifmcaddr6* %1, %struct.ifmcaddr6** %4, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ifmcaddr6* @kzalloc(i32 48, i32 %7)
  store %struct.ifmcaddr6* %8, %struct.ifmcaddr6** %5, align 8
  %9 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %10 = icmp ne %struct.ifmcaddr6* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %96

12:                                               ; preds = %2
  %13 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %14 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %17 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %20 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %23 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %25 = call i32 @in6_dev_hold(%struct.inet6_dev* %24)
  %26 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %27 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %30 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %32 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %35 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %37 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %40 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %42 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MCAST_INCLUDE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %12
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %48 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %51 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %53 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %52, i32 0, i32 4
  %54 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %53, align 8
  %55 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %56 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %55, i32 0, i32 4
  store %struct.ip6_sf_list* %54, %struct.ip6_sf_list** %56, align 8
  %57 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %58 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %57, i32 0, i32 4
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %58, align 8
  %59 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %60 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %59, i32 0, i32 5
  store i32 0, i32* %60, align 8
  %61 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %62 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %61, i32 0, i32 4
  %63 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %62, align 8
  store %struct.ip6_sf_list* %63, %struct.ip6_sf_list** %6, align 8
  br label %64

64:                                               ; preds = %73, %46
  %65 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %6, align 8
  %66 = icmp ne %struct.ip6_sf_list* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %69 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %6, align 8
  %72 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %6, align 8
  %75 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %74, i32 0, i32 1
  %76 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %75, align 8
  store %struct.ip6_sf_list* %76, %struct.ip6_sf_list** %6, align 8
  br label %64

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %12
  %79 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  %80 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock_bh(i32* %80)
  %82 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %83 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %86 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %85, i32 0, i32 1
  %87 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %86, align 8
  %88 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %89 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %88, i32 0, i32 1
  store %struct.ifmcaddr6* %87, %struct.ifmcaddr6** %89, align 8
  %90 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %5, align 8
  %91 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %92 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %91, i32 0, i32 1
  store %struct.ifmcaddr6* %90, %struct.ifmcaddr6** %92, align 8
  %93 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %94 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock_bh(i32* %94)
  br label %96

96:                                               ; preds = %78, %11
  ret void
}

declare dso_local %struct.ifmcaddr6* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @in6_dev_hold(%struct.inet6_dev*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
