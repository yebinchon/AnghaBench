; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_make_blackhole.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_make_blackhole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.dst_entry = type { i32 }
%struct.xfrm_policy_afinfo = type { %struct.dst_entry* (%struct.net.0*, %struct.dst_entry*)* }
%struct.net.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dst_entry* (%struct.net*, i32, %struct.dst_entry*)* @make_blackhole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dst_entry* @make_blackhole(%struct.net* %0, i32 %1, %struct.dst_entry* %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.xfrm_policy_afinfo*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dst_entry* %2, %struct.dst_entry** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32 %10)
  store %struct.xfrm_policy_afinfo* %11, %struct.xfrm_policy_afinfo** %8, align 8
  %12 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %8, align 8
  %13 = icmp ne %struct.xfrm_policy_afinfo* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %16 = call i32 @dst_release(%struct.dst_entry* %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dst_entry* @ERR_PTR(i32 %18)
  store %struct.dst_entry* %19, %struct.dst_entry** %4, align 8
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.xfrm_policy_afinfo*, %struct.xfrm_policy_afinfo** %8, align 8
  %22 = getelementptr inbounds %struct.xfrm_policy_afinfo, %struct.xfrm_policy_afinfo* %21, i32 0, i32 0
  %23 = load %struct.dst_entry* (%struct.net.0*, %struct.dst_entry*)*, %struct.dst_entry* (%struct.net.0*, %struct.dst_entry*)** %22, align 8
  %24 = load %struct.net*, %struct.net** %5, align 8
  %25 = bitcast %struct.net* %24 to %struct.net.0*
  %26 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %27 = call %struct.dst_entry* %23(%struct.net.0* %25, %struct.dst_entry* %26)
  store %struct.dst_entry* %27, %struct.dst_entry** %9, align 8
  br label %28

28:                                               ; preds = %20
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  store %struct.dst_entry* %30, %struct.dst_entry** %4, align 8
  br label %31

31:                                               ; preds = %28, %14
  %32 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  ret %struct.dst_entry* %32
}

declare dso_local %struct.xfrm_policy_afinfo* @xfrm_policy_get_afinfo(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
