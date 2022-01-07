; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_vid_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_vid_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_info = type { i64, i32 }
%struct.vlan_vid_info = type { i64 }

@vlan_info_rcu_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlan_vid_del(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlan_info*, align 8
  %8 = alloca %struct.vlan_vid_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @ASSERT_RTNL()
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.vlan_info* @rtnl_dereference(i32 %12)
  store %struct.vlan_info* %13, %struct.vlan_info** %7, align 8
  %14 = load %struct.vlan_info*, %struct.vlan_info** %7, align 8
  %15 = icmp ne %struct.vlan_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.vlan_info*, %struct.vlan_info** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.vlan_vid_info* @vlan_vid_info_get(%struct.vlan_info* %18, i32 %19, i32 %20)
  store %struct.vlan_vid_info* %21, %struct.vlan_vid_info** %8, align 8
  %22 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %8, align 8
  %23 = icmp ne %struct.vlan_vid_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %52

25:                                               ; preds = %17
  %26 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %8, align 8
  %27 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %8, align 8
  %31 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load %struct.vlan_info*, %struct.vlan_info** %7, align 8
  %36 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %8, align 8
  %37 = call i32 @__vlan_vid_del(%struct.vlan_info* %35, %struct.vlan_vid_info* %36)
  %38 = load %struct.vlan_info*, %struct.vlan_info** %7, align 8
  %39 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @RCU_INIT_POINTER(i32 %45, i32* null)
  %47 = load %struct.vlan_info*, %struct.vlan_info** %7, align 8
  %48 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %47, i32 0, i32 1
  %49 = load i32, i32* @vlan_info_rcu_free, align 4
  %50 = call i32 @call_rcu(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %34
  br label %52

52:                                               ; preds = %16, %24, %51, %25
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.vlan_info* @rtnl_dereference(i32) #1

declare dso_local %struct.vlan_vid_info* @vlan_vid_info_get(%struct.vlan_info*, i32, i32) #1

declare dso_local i32 @__vlan_vid_del(%struct.vlan_info*, %struct.vlan_vid_info*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
