; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_fill_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_fill_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.flowi = type { i32 }
%struct.xfrm_policy_afinfo = type { i32 (%struct.xfrm_dst.0*, %struct.net_device.1*, %struct.flowi.2*)* }
%struct.xfrm_dst.0 = type opaque
%struct.net_device.1 = type opaque
%struct.flowi.2 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_dst*, %struct.net_device*, %struct.flowi*)* @xfrm_fill_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_fill_dst(%struct.xfrm_dst* %0, %struct.net_device* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_dst*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.xfrm_policy_afinfo*, align 8
  %9 = alloca i32, align 4
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %10 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %11 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32 %16)
  store %struct.xfrm_policy_afinfo* %17, %struct.xfrm_policy_afinfo** %8, align 8
  %18 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %8, align 8
  %19 = icmp ne %struct.xfrm_policy_afinfo* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %8, align 8
  %25 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %24, i32 0, i32 0
  %26 = load i32 (%struct.xfrm_dst.0*, %struct.net_device.1*, %struct.flowi.2*)*, i32 (%struct.xfrm_dst.0*, %struct.net_device.1*, %struct.flowi.2*)** %25, align 8
  %27 = load %struct.xfrm_dst*, %struct.xfrm_dst** %5, align 8
  %28 = bitcast %struct.xfrm_dst* %27 to %struct.xfrm_dst.0*
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = bitcast %struct.net_device* %29 to %struct.net_device.1*
  %31 = load %struct.flowi*, %struct.flowi** %7, align 8
  %32 = bitcast %struct.flowi* %31 to %struct.flowi.2*
  %33 = call i32 %26(%struct.xfrm_dst.0* %28, %struct.net_device.1* %30, %struct.flowi.2* %32)
  store i32 %33, i32* %9, align 4
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
