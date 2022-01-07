; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_pop.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.clip_vcc = type { i32, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)* }
%struct.atm_vcc.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"(vcc %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @clip_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clip_pop(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.clip_vcc*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %10 = call %struct.clip_vcc* @CLIP_VCC(%struct.atm_vcc* %9)
  store %struct.clip_vcc* %10, %struct.clip_vcc** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %14)
  %16 = load %struct.clip_vcc*, %struct.clip_vcc** %5, align 8
  %17 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %16, i32 0, i32 1
  %18 = load i32 (%struct.atm_vcc.0*, %struct.sk_buff*)*, i32 (%struct.atm_vcc.0*, %struct.sk_buff*)** %17, align 8
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %20 = bitcast %struct.atm_vcc* %19 to %struct.atm_vcc.0*
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 %18(%struct.atm_vcc.0* %20, %struct.sk_buff* %21)
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %51

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %33 = call i64 @atm_may_send(%struct.atm_vcc* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load %struct.clip_vcc*, %struct.clip_vcc** %5, align 8
  %37 = getelementptr inbounds %struct.clip_vcc, %struct.clip_vcc* %36, i32 0, i32 0
  %38 = call i32 @xchg(i32* %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @netif_wake_queue(%struct.net_device* %42)
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call %struct.TYPE_2__* @PRIV(%struct.net_device* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %45, %25
  ret void
}

declare dso_local %struct.clip_vcc* @CLIP_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @PRIV(%struct.net_device*) #1

declare dso_local i64 @atm_may_send(%struct.atm_vcc*, i32) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
