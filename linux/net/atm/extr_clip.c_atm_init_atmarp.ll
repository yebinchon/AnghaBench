; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_atm_init_atmarp.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_atm_init_atmarp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32*, i32*, i32*, i32*, i32 }

@atmarpd = common dso_local global %struct.atm_vcc* null, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@idle_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@CLIP_CHECK_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@atmarpd_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @atm_init_atmarp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_init_atmarp(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %4 = call i32 (...) @rtnl_lock()
  %5 = load %struct.atm_vcc*, %struct.atm_vcc** @atmarpd, align 8
  %6 = icmp ne %struct.atm_vcc* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 (...) @rtnl_unlock()
  %9 = load i32, i32* @EADDRINUSE, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @CLIP_CHECK_INTERVAL, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %12, %16
  %18 = call i32 @mod_timer(i32* @idle_timer, i64 %17)
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  store %struct.atm_vcc* %19, %struct.atm_vcc** @atmarpd, align 8
  %20 = load i32, i32* @ATM_VF_META, align 4
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %22 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %21, i32 0, i32 4
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load i32, i32* @ATM_VF_READY, align 4
  %25 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %26 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %25, i32 0, i32 4
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %29 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %28, i32 0, i32 3
  store i32* @atmarpd_dev, i32** %29, align 8
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %31 = call i32 @sk_atm(%struct.atm_vcc* %30)
  %32 = call i32 @vcc_insert_socket(i32 %31)
  %33 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %34 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %36 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %38 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %11, %7
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vcc_insert_socket(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
