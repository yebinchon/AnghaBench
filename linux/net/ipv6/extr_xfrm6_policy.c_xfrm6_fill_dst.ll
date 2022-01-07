; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_policy.c_xfrm6_fill_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_policy.c_xfrm6_fill_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.flowi = type { i32 }
%struct.rt6_info = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_dst*, %struct.net_device*, %struct.flowi*)* @xfrm6_fill_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm6_fill_dst(%struct.xfrm_dst* %0, %struct.net_device* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_dst*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.rt6_info*, align 8
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %9 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.rt6_info*
  store %struct.rt6_info* %12, %struct.rt6_info** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.net_device* %13, %struct.net_device** %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call i32 @dev_hold(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @in6_dev_get(%struct.net_device* %20)
  %22 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %23 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  store i32 %21, i32* %25, align 4
  %26 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %27 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call i32 @dev_put(%struct.net_device* %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %3
  %38 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %39 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RTF_ANYCAST, align 4
  %42 = load i32, i32* @RTF_LOCAL, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %46 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %50 = call i32 @rt6_get_cookie(%struct.rt6_info* %49)
  %51 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %52 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %54 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %57 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  store i32 %55, i32* %59, align 8
  %60 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %61 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %64 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 4
  %67 = load %struct.rt6_info*, %struct.rt6_info** %8, align 8
  %68 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %71 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 8
  %74 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %75 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %80 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @rt6_uncached_list_add(%struct.TYPE_11__* %81)
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = call %struct.TYPE_12__* @dev_net(%struct.net_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = call i32 @atomic_inc(i32* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %37, %32
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @rt6_get_cookie(%struct.rt6_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rt6_uncached_list_add(%struct.TYPE_11__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_12__* @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
