; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_vid_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_vid_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_info = type { i32 }
%struct.vlan_vid_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_vid_add(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlan_info*, align 8
  %9 = alloca %struct.vlan_vid_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vlan_info* @rtnl_dereference(i32 %15)
  store %struct.vlan_info* %16, %struct.vlan_info** %8, align 8
  %17 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %18 = icmp ne %struct.vlan_info* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.vlan_info* @vlan_info_alloc(%struct.net_device* %20)
  store %struct.vlan_info* %21, %struct.vlan_info** %8, align 8
  %22 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %23 = icmp ne %struct.vlan_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %66

27:                                               ; preds = %19
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.vlan_vid_info* @vlan_vid_info_get(%struct.vlan_info* %29, i32 %30, i32 %31)
  store %struct.vlan_vid_info* %32, %struct.vlan_vid_info** %9, align 8
  %33 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %9, align 8
  %34 = icmp ne %struct.vlan_vid_info* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @__vlan_vid_add(%struct.vlan_info* %36, i32 %37, i32 %38, %struct.vlan_vid_info** %9)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %58

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %9, align 8
  %46 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %56 = call i32 @rcu_assign_pointer(i32 %54, %struct.vlan_info* %55)
  br label %57

57:                                               ; preds = %51, %44
  store i32 0, i32* %4, align 4
  br label %66

58:                                               ; preds = %42
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.vlan_info*, %struct.vlan_info** %8, align 8
  %63 = call i32 @kfree(%struct.vlan_info* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %57, %24
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.vlan_info* @rtnl_dereference(i32) #1

declare dso_local %struct.vlan_info* @vlan_info_alloc(%struct.net_device*) #1

declare dso_local %struct.vlan_vid_info* @vlan_vid_info_get(%struct.vlan_info*, i32, i32) #1

declare dso_local i32 @__vlan_vid_add(%struct.vlan_info*, i32, i32, %struct.vlan_vid_info**) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.vlan_info*) #1

declare dso_local i32 @kfree(%struct.vlan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
