; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c___vlan_vid_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c___vlan_vid_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_info = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.vlan_vid_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to kill vid %04x/%d for device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlan_info*, %struct.vlan_vid_info*)* @__vlan_vid_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vlan_vid_del(%struct.vlan_info* %0, %struct.vlan_vid_info* %1) #0 {
  %3 = alloca %struct.vlan_info*, align 8
  %4 = alloca %struct.vlan_vid_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vlan_info* %0, %struct.vlan_info** %3, align 8
  store %struct.vlan_vid_info* %1, %struct.vlan_vid_info** %4, align 8
  %9 = load %struct.vlan_info*, %struct.vlan_info** %3, align 8
  %10 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %4, align 8
  %13 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %4, align 8
  %16 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vlan_kill_rx_filter_info(%struct.net_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %4, align 8
  %33 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %4, align 8
  %36 = call i32 @kfree(%struct.vlan_vid_info* %35)
  %37 = load %struct.vlan_info*, %struct.vlan_info** %3, align 8
  %38 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  ret void
}

declare dso_local i32 @vlan_kill_rx_filter_info(%struct.net_device*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.vlan_vid_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
