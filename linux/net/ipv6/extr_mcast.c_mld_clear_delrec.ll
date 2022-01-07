; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_clear_delrec.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_clear_delrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i32, %struct.ip6_sf_list*, i32, %struct.ip6_sf_list* }
%struct.ip6_sf_list = type { %struct.ip6_sf_list*, i32, %struct.ip6_sf_list*, %struct.ip6_sf_list*, i32 }
%struct.ifmcaddr6 = type { %struct.ifmcaddr6*, i32, %struct.ifmcaddr6*, %struct.ifmcaddr6*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*)* @mld_clear_delrec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_clear_delrec(%struct.inet6_dev* %0) #0 {
  %2 = alloca %struct.inet6_dev*, align 8
  %3 = alloca %struct.ifmcaddr6*, align 8
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca %struct.ip6_sf_list*, align 8
  %6 = alloca %struct.ip6_sf_list*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %2, align 8
  %7 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %8 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %11 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %10, i32 0, i32 3
  %12 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %11, align 8
  %13 = bitcast %struct.ip6_sf_list* %12 to %struct.ifmcaddr6*
  store %struct.ifmcaddr6* %13, %struct.ifmcaddr6** %3, align 8
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %15 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %14, i32 0, i32 3
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %15, align 8
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 2
  %18 = call i32 @spin_unlock_bh(i32* %17)
  br label %19

19:                                               ; preds = %36, %1
  %20 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %21 = icmp ne %struct.ifmcaddr6* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %24 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %23, i32 0, i32 3
  %25 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %24, align 8
  store %struct.ifmcaddr6* %25, %struct.ifmcaddr6** %4, align 8
  %26 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %27 = bitcast %struct.ifmcaddr6* %26 to %struct.ip6_sf_list*
  %28 = call i32 @ip6_mc_clear_src(%struct.ip6_sf_list* %27)
  %29 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %30 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @in6_dev_put(i32 %31)
  %33 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %34 = bitcast %struct.ifmcaddr6* %33 to %struct.ip6_sf_list*
  %35 = call i32 @kfree(%struct.ip6_sf_list* %34)
  br label %36

36:                                               ; preds = %22
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  store %struct.ifmcaddr6* %37, %struct.ifmcaddr6** %3, align 8
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %40 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %39, i32 0, i32 0
  %41 = call i32 @read_lock_bh(i32* %40)
  %42 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %43 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %42, i32 0, i32 1
  %44 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %43, align 8
  %45 = bitcast %struct.ip6_sf_list* %44 to %struct.ifmcaddr6*
  store %struct.ifmcaddr6* %45, %struct.ifmcaddr6** %3, align 8
  br label %46

46:                                               ; preds = %74, %38
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %48 = icmp ne %struct.ifmcaddr6* %47, null
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %51 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %54 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %53, i32 0, i32 2
  %55 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %54, align 8
  %56 = bitcast %struct.ifmcaddr6* %55 to %struct.ip6_sf_list*
  store %struct.ip6_sf_list* %56, %struct.ip6_sf_list** %5, align 8
  %57 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %58 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %57, i32 0, i32 2
  store %struct.ifmcaddr6* null, %struct.ifmcaddr6** %58, align 8
  %59 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %60 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_bh(i32* %60)
  br label %62

62:                                               ; preds = %71, %49
  %63 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %64 = icmp ne %struct.ip6_sf_list* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %67 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %66, i32 0, i32 0
  %68 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %67, align 8
  store %struct.ip6_sf_list* %68, %struct.ip6_sf_list** %6, align 8
  %69 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %70 = call i32 @kfree(%struct.ip6_sf_list* %69)
  br label %71

71:                                               ; preds = %65
  %72 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %6, align 8
  store %struct.ip6_sf_list* %72, %struct.ip6_sf_list** %5, align 8
  br label %62

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %76 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %75, i32 0, i32 3
  %77 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %76, align 8
  store %struct.ifmcaddr6* %77, %struct.ifmcaddr6** %3, align 8
  br label %46

78:                                               ; preds = %46
  %79 = load %struct.inet6_dev*, %struct.inet6_dev** %2, align 8
  %80 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %79, i32 0, i32 0
  %81 = call i32 @read_unlock_bh(i32* %80)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ip6_mc_clear_src(%struct.ip6_sf_list*) #1

declare dso_local i32 @in6_dev_put(i32) #1

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
