; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c___vlan_vid_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c___vlan_vid_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_info = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.vlan_vid_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlan_info*, i32, i32, %struct.vlan_vid_info**)* @__vlan_vid_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vlan_vid_add(%struct.vlan_info* %0, i32 %1, i32 %2, %struct.vlan_vid_info** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlan_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vlan_vid_info**, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.vlan_vid_info*, align 8
  %12 = alloca i32, align 4
  store %struct.vlan_info* %0, %struct.vlan_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.vlan_vid_info** %3, %struct.vlan_vid_info*** %9, align 8
  %13 = load %struct.vlan_info*, %struct.vlan_info** %6, align 8
  %14 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.vlan_vid_info* @vlan_vid_info_alloc(i32 %16, i32 %17)
  store %struct.vlan_vid_info* %18, %struct.vlan_vid_info** %11, align 8
  %19 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %11, align 8
  %20 = icmp ne %struct.vlan_vid_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %47

24:                                               ; preds = %4
  %25 = load %struct.net_device*, %struct.net_device** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @vlan_add_rx_filter_info(%struct.net_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %11, align 8
  %33 = call i32 @kfree(%struct.vlan_vid_info* %32)
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %47

35:                                               ; preds = %24
  %36 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %11, align 8
  %37 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %36, i32 0, i32 0
  %38 = load %struct.vlan_info*, %struct.vlan_info** %6, align 8
  %39 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %37, i32* %39)
  %41 = load %struct.vlan_info*, %struct.vlan_info** %6, align 8
  %42 = getelementptr inbounds %struct.vlan_info, %struct.vlan_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %11, align 8
  %46 = load %struct.vlan_vid_info**, %struct.vlan_vid_info*** %9, align 8
  store %struct.vlan_vid_info* %45, %struct.vlan_vid_info** %46, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %35, %31, %21
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.vlan_vid_info* @vlan_vid_info_alloc(i32, i32) #1

declare dso_local i32 @vlan_add_rx_filter_info(%struct.net_device*, i32, i32) #1

declare dso_local i32 @kfree(%struct.vlan_vid_info*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
