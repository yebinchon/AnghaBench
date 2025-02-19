; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mca_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mca_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, i32*, i32, %struct.in6_addr, i32, i32, i32, i32, %struct.inet6_dev*, i32 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@igmp6_timer_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8
@MAF_NOREPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifmcaddr6* (%struct.inet6_dev*, %struct.in6_addr*, i32)* @mca_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifmcaddr6* @mca_alloc(%struct.inet6_dev* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.ifmcaddr6*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifmcaddr6*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.ifmcaddr6* @kzalloc(i32 56, i32 %9)
  store %struct.ifmcaddr6* %10, %struct.ifmcaddr6** %8, align 8
  %11 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %12 = icmp ne %struct.ifmcaddr6* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.ifmcaddr6* null, %struct.ifmcaddr6** %4, align 8
  br label %67

14:                                               ; preds = %3
  %15 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %16 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %15, i32 0, i32 10
  %17 = load i32, i32* @igmp6_timer_handler, align 4
  %18 = call i32 @timer_setup(i32* %16, i32 %17, i32 0)
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %20 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %19, i32 0, i32 4
  %21 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %22 = bitcast %struct.in6_addr* %20 to i8*
  %23 = bitcast %struct.in6_addr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %25 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %26 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %25, i32 0, i32 9
  store %struct.inet6_dev* %24, %struct.inet6_dev** %26, align 8
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %31 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %33 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %32, i32 0, i32 8
  store i32 %29, i32* %33, align 4
  %34 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %35 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %34, i32 0, i32 6
  %36 = call i32 @refcount_set(i32* %35, i32 1)
  %37 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %38 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %37, i32 0, i32 5
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %42 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %44 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 1, i32* %48, align 4
  %49 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %50 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %49, i32 0, i32 4
  %51 = call i64 @ipv6_addr_is_ll_all_nodes(%struct.in6_addr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %14
  %54 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %55 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %54, i32 0, i32 4
  %56 = call i64 @IPV6_ADDR_MC_SCOPE(%struct.in6_addr* %55)
  %57 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %14
  %60 = load i32, i32* @MAF_NOREPORT, align 4
  %61 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  %62 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %8, align 8
  store %struct.ifmcaddr6* %66, %struct.ifmcaddr6** %4, align 8
  br label %67

67:                                               ; preds = %65, %13
  %68 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %4, align 8
  ret %struct.ifmcaddr6* %68
}

declare dso_local %struct.ifmcaddr6* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ipv6_addr_is_ll_all_nodes(%struct.in6_addr*) #1

declare dso_local i64 @IPV6_ADDR_MC_SCOPE(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
