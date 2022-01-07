; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c_xfrm4_fill_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_policy.c_xfrm4_fill_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.flowi = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_LOCAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_dst*, %struct.net_device*, %struct.flowi*)* @xfrm4_fill_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_fill_dst(%struct.xfrm_dst* %0, %struct.net_device* %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.xfrm_dst*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.flowi4*, align 8
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %9 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %10 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rtable*
  store %struct.rtable* %12, %struct.rtable** %7, align 8
  %13 = load %struct.flowi*, %struct.flowi** %6, align 8
  %14 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.flowi4* %15, %struct.flowi4** %8, align 8
  %16 = load %struct.flowi4*, %struct.flowi4** %8, align 8
  %17 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %20 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  store i32 %18, i32* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %25 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.net_device* %23, %struct.net_device** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @dev_hold(%struct.net_device* %28)
  %30 = load %struct.rtable*, %struct.rtable** %7, align 8
  %31 = getelementptr inbounds %struct.rtable, %struct.rtable* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %34 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 9
  store i32 %32, i32* %36, align 4
  %37 = load %struct.rtable*, %struct.rtable** %7, align 8
  %38 = getelementptr inbounds %struct.rtable, %struct.rtable* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RTCF_BROADCAST, align 4
  %41 = load i32, i32* @RTCF_MULTICAST, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RTCF_LOCAL, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %47 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.rtable*, %struct.rtable** %7, align 8
  %51 = getelementptr inbounds %struct.rtable, %struct.rtable* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %54 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 8
  store i32 %52, i32* %56, align 8
  %57 = load %struct.rtable*, %struct.rtable** %7, align 8
  %58 = getelementptr inbounds %struct.rtable, %struct.rtable* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %61 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 7
  store i32 %59, i32* %63, align 4
  %64 = load %struct.rtable*, %struct.rtable** %7, align 8
  %65 = getelementptr inbounds %struct.rtable, %struct.rtable* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %68 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i64 %66, i64* %70, align 8
  %71 = load %struct.rtable*, %struct.rtable** %7, align 8
  %72 = getelementptr inbounds %struct.rtable, %struct.rtable* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AF_INET, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %3
  %77 = load %struct.rtable*, %struct.rtable** %7, align 8
  %78 = getelementptr inbounds %struct.rtable, %struct.rtable* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %81 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 6
  store i32 %79, i32* %83, align 8
  br label %99

84:                                               ; preds = %3
  %85 = load %struct.rtable*, %struct.rtable** %7, align 8
  %86 = getelementptr inbounds %struct.rtable, %struct.rtable* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AF_INET6, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.rtable*, %struct.rtable** %7, align 8
  %92 = getelementptr inbounds %struct.rtable, %struct.rtable* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %95 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %90, %84
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.rtable*, %struct.rtable** %7, align 8
  %101 = getelementptr inbounds %struct.rtable, %struct.rtable* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %104 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  store i32 %102, i32* %106, align 8
  %107 = load %struct.rtable*, %struct.rtable** %7, align 8
  %108 = getelementptr inbounds %struct.rtable, %struct.rtable* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %111 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 4
  %114 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %115 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.xfrm_dst*, %struct.xfrm_dst** %4, align 8
  %120 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = call i32 @rt_add_uncached_list(%struct.TYPE_8__* %121)
  ret i32 0
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rt_add_uncached_list(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
