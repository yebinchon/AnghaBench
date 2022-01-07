; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_group_queried.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_group_queried.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8* }

@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@MAF_TIMER_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*, i64)* @igmp6_group_queried to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_group_queried(%struct.ifmcaddr6* %0, i64 %1) #0 {
  %3 = alloca %struct.ifmcaddr6*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %8 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %7, i32 0, i32 3
  %9 = call i64 @ipv6_addr_is_ll_all_nodes(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %13 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %12, i32 0, i32 3
  %14 = call i64 @IPV6_ADDR_MC_SCOPE(i32* %13)
  %15 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  br label %67

18:                                               ; preds = %11
  %19 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %20 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %19, i32 0, i32 2
  %21 = call i64 @del_timer(%struct.TYPE_3__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %25 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %24, i32 0, i32 1
  %26 = call i32 @refcount_dec(i32* %25)
  %27 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %28 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @jiffies, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %23, %18
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i64 (...) @prandom_u32()
  %41 = load i64, i64* %4, align 8
  %42 = urem i64 %40, %41
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i8*, i8** @jiffies, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %48 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %51 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %50, i32 0, i32 2
  %52 = load i8*, i8** @jiffies, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr i8, i8* %52, i64 %53
  %55 = call i32 @mod_timer(%struct.TYPE_3__* %51, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %43
  %58 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %59 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %58, i32 0, i32 1
  %60 = call i32 @refcount_inc(i32* %59)
  br label %61

61:                                               ; preds = %57, %43
  %62 = load i32, i32* @MAF_TIMER_RUNNING, align 4
  %63 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %3, align 8
  %64 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %17
  ret void
}

declare dso_local i64 @ipv6_addr_is_ll_all_nodes(i32*) #1

declare dso_local i64 @IPV6_ADDR_MC_SCOPE(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i32 @mod_timer(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
