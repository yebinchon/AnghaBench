; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_get_saddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_get_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.xfrm_policy_afinfo = type { i32 (%struct.net.0*, i32, i32*, i32*, i32)* }
%struct.net.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, i32*, i32*, i16, i32)* @xfrm_get_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_get_saddr(%struct.net* %0, i32 %1, i32* %2, i32* %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfrm_policy_afinfo*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %16 = load i16, i16* %12, align 2
  %17 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i16 zeroext %16)
  store %struct.xfrm_policy_afinfo* %17, %struct.xfrm_policy_afinfo** %15, align 8
  %18 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %15, align 8
  %19 = icmp eq %struct.xfrm_policy_afinfo* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %39

26:                                               ; preds = %6
  %27 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %15, align 8
  %28 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %27, i32 0, i32 0
  %29 = load i32 (%struct.net.0*, i32, i32*, i32*, i32)*, i32 (%struct.net.0*, i32, i32*, i32*, i32)** %28, align 8
  %30 = load %struct.net*, %struct.net** %8, align 8
  %31 = bitcast %struct.net* %30 to %struct.net.0*
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 %29(%struct.net.0* %31, i32 %32, i32* %33, i32* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %26, %23
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i16 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
