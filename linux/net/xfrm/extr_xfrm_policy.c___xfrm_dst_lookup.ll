; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm_dst_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c___xfrm_dst_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy_afinfo = type { %struct.dst_entry* (%struct.net.0*, i32, i32, i32*, i32*, i32)* }
%struct.net.0 = type opaque

@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @__xfrm_dst_lookup(%struct.net* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfrm_policy_afinfo*, align 8
  %17 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32 %18)
  store %struct.xfrm_policy_afinfo* %19, %struct.xfrm_policy_afinfo** %16, align 8
  %20 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %16, align 8
  %21 = icmp eq %struct.xfrm_policy_afinfo* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load i32, i32* @EAFNOSUPPORT, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.dst_entry* @ERR_PTR(i32 %27)
  store %struct.dst_entry* %28, %struct.dst_entry** %8, align 8
  br label %43

29:                                               ; preds = %7
  %30 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %16, align 8
  %31 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %30, i32 0, i32 0
  %32 = load %struct.dst_entry* (%struct.net.0*, i32, i32, i32*, i32*, i32)*, %struct.dst_entry* (%struct.net.0*, i32, i32, i32*, i32*, i32)** %31, align 8
  %33 = load %struct.net*, %struct.net** %9, align 8
  %34 = bitcast %struct.net* %33 to %struct.net.0*
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call %struct.dst_entry* %32(%struct.net.0* %34, i32 %35, i32 %36, i32* %37, i32* %38, i32 %39)
  store %struct.dst_entry* %40, %struct.dst_entry** %17, align 8
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  store %struct.dst_entry* %42, %struct.dst_entry** %8, align 8
  br label %43

43:                                               ; preds = %29, %25
  %44 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  ret %struct.dst_entry* %44
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
