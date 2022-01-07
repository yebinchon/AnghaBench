; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_set_operstate.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_set_operstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8 }

@IF_OPER_UNKNOWN = common dso_local global i8 0, align 1
@dev_base_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8)* @set_operstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_operstate(%struct.net_device* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 129, label %27
  ]

11:                                               ; preds = %2
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @IF_OPER_UNKNOWN, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %11
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @netif_dormant(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i8 -128, i8* %5, align 1
  br label %26

26:                                               ; preds = %25, %21, %15
  br label %39

27:                                               ; preds = %2
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @IF_OPER_UNKNOWN, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %27
  store i8 -127, i8* %5, align 1
  br label %38

38:                                               ; preds = %37, %31
  br label %39

39:                                               ; preds = %2, %38, %26
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = call i32 @write_lock_bh(i32* @dev_base_lock)
  %49 = load i8, i8* %5, align 1
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  store i8 %49, i8* %51, align 1
  %52 = call i32 @write_unlock_bh(i32* @dev_base_lock)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @netdev_state_change(%struct.net_device* %53)
  br label %55

55:                                               ; preds = %47, %39
  ret void
}

declare dso_local i32 @netif_dormant(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @netdev_state_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
