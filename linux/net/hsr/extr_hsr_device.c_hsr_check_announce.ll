; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_check_announce.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_check_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8 }
%struct.hsr_priv = type { i32, i64 }

@IF_OPER_UP = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@HSR_ANNOUNCE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8)* @hsr_check_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsr_check_announce(%struct.net_device* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.hsr_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.hsr_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.hsr_priv* %7, %struct.hsr_priv** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @IF_OPER_UP, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @IF_OPER_UP, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %23 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %25 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* @HSR_ANNOUNCE_INTERVAL, align 4
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @mod_timer(i32* %25, i64 %29)
  br label %31

31:                                               ; preds = %21, %15, %2
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @IF_OPER_UP, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @IF_OPER_UP, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.hsr_priv*, %struct.hsr_priv** %5, align 8
  %47 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %46, i32 0, i32 0
  %48 = call i32 @del_timer(i32* %47)
  br label %49

49:                                               ; preds = %45, %39, %31
  ret void
}

declare dso_local %struct.hsr_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
