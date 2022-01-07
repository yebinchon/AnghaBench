; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_vid_info_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_core.c_vlan_vid_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_vid_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlan_vid_info* (i32, i32)* @vlan_vid_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlan_vid_info* @vlan_vid_info_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.vlan_vid_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlan_vid_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.vlan_vid_info* @kzalloc(i32 8, i32 %7)
  store %struct.vlan_vid_info* %8, %struct.vlan_vid_info** %6, align 8
  %9 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %6, align 8
  %10 = icmp ne %struct.vlan_vid_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.vlan_vid_info* null, %struct.vlan_vid_info** %3, align 8
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %6, align 8
  %15 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %6, align 8
  %18 = getelementptr inbounds %struct.vlan_vid_info, %struct.vlan_vid_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %6, align 8
  store %struct.vlan_vid_info* %19, %struct.vlan_vid_info** %3, align 8
  br label %20

20:                                               ; preds = %12, %11
  %21 = load %struct.vlan_vid_info*, %struct.vlan_vid_info** %3, align 8
  ret %struct.vlan_vid_info* %21
}

declare dso_local %struct.vlan_vid_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
