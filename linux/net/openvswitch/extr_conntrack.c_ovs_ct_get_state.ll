; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OVS_CS_F_TRACKED = common dso_local global i32 0, align 4
@OVS_CS_F_REPLY_DIR = common dso_local global i32 0, align 4
@OVS_CS_F_ESTABLISHED = common dso_local global i32 0, align 4
@OVS_CS_F_RELATED = common dso_local global i32 0, align 4
@OVS_CS_F_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ovs_ct_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_ct_get_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @OVS_CS_F_TRACKED, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %10 [
    i32 131, label %6
    i32 128, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* @OVS_CS_F_REPLY_DIR, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %25 [
    i32 132, label %13
    i32 131, label %13
    i32 129, label %17
    i32 128, label %17
    i32 130, label %21
  ]

13:                                               ; preds = %11, %11
  %14 = load i32, i32* @OVS_CS_F_ESTABLISHED, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %11, %11
  %18 = load i32, i32* @OVS_CS_F_RELATED, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %11
  %22 = load i32, i32* @OVS_CS_F_NEW, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %21, %17, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
