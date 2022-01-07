; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_mutual_parents.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_mutual_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net*, %struct.net_device*, %struct.net*)* @batadv_mutual_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mutual_parents(%struct.net_device* %0, %struct.net* %1, %struct.net_device* %2, %struct.net* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.net*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.net* %1, %struct.net** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.net* %3, %struct.net** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call i32 @dev_get_iflink(%struct.net_device* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call i32 @dev_get_iflink(%struct.net_device* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = call %struct.net* @batadv_getlink_net(%struct.net_device* %18, %struct.net* %19)
  store %struct.net* %20, %struct.net** %12, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = load %struct.net*, %struct.net** %9, align 8
  %23 = call %struct.net* @batadv_getlink_net(%struct.net_device* %21, %struct.net* %22)
  store %struct.net* %23, %struct.net** %13, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %4
  store i32 0, i32* %5, align 4
  br label %55

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.net*, %struct.net** %12, align 8
  %44 = load %struct.net*, %struct.net** %9, align 8
  %45 = call i64 @net_eq(%struct.net* %43, %struct.net* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.net*, %struct.net** %13, align 8
  %49 = load %struct.net*, %struct.net** %7, align 8
  %50 = call i64 @net_eq(%struct.net* %48, %struct.net* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %42, %36, %30
  %53 = phi i1 [ false, %42 ], [ false, %36 ], [ false, %30 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %29
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @dev_get_iflink(%struct.net_device*) #1

declare dso_local %struct.net* @batadv_getlink_net(%struct.net_device*, %struct.net*) #1

declare dso_local i64 @net_eq(%struct.net*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
