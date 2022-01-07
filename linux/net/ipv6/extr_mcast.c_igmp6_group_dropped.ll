; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_group_dropped.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_igmp6_group_dropped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmcaddr6 = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@MAX_ADDR_LEN = common dso_local global i32 0, align 4
@IPV6_ADDR_SCOPE_LINKLOCAL = common dso_local global i64 0, align 8
@MAF_LOADED = common dso_local global i32 0, align 4
@MAF_NOREPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifmcaddr6*)* @igmp6_group_dropped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp6_group_dropped(%struct.ifmcaddr6* %0) #0 {
  %2 = alloca %struct.ifmcaddr6*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ifmcaddr6* %0, %struct.ifmcaddr6** %2, align 8
  %7 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %8 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load i32, i32* @MAX_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %17 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %16, i32 0, i32 5
  %18 = call i64 @IPV6_ADDR_MC_SCOPE(i32* %17)
  %19 = load i64, i64* @IPV6_ADDR_SCOPE_LINKLOCAL, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %24 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %27 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MAF_LOADED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %22
  %33 = load i32, i32* @MAF_LOADED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %36 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %40 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %39, i32 0, i32 5
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i64 @ndisc_mc_map(i32* %40, i8* %15, %struct.net_device* %41, i32 0)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @dev_mc_del(%struct.net_device* %45, i8* %15)
  br label %47

47:                                               ; preds = %44, %32
  br label %48

48:                                               ; preds = %47, %22
  %49 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %50 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %53 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MAF_NOREPORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %85

59:                                               ; preds = %48
  %60 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %61 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %68 = call i32 @igmp6_leave_group(%struct.ifmcaddr6* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %71 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %74 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %73, i32 0, i32 3
  %75 = call i64 @del_timer(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %79 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %78, i32 0, i32 2
  %80 = call i32 @refcount_dec(i32* %79)
  br label %81

81:                                               ; preds = %77, %69
  %82 = load %struct.ifmcaddr6*, %struct.ifmcaddr6** %2, align 8
  %83 = getelementptr inbounds %struct.ifmcaddr6, %struct.ifmcaddr6* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock_bh(i32* %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %58, %21
  %86 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %6, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %85, %85
  ret void

89:                                               ; preds = %85
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IPV6_ADDR_MC_SCOPE(i32*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i64 @ndisc_mc_map(i32*, i8*, %struct.net_device*, i32) #2

declare dso_local i32 @dev_mc_del(%struct.net_device*, i8*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @igmp6_leave_group(%struct.ifmcaddr6*) #2

declare dso_local i64 @del_timer(i32*) #2

declare dso_local i32 @refcount_dec(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
