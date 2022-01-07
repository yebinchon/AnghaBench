; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_install.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.tty_struct = type { %struct.rfcomm_dev*, i32 }
%struct.rfcomm_dev = type { i32, i32, i32, %struct.rfcomm_dlc* }
%struct.rfcomm_dlc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@RFCOMM_TTY_ATTACHED = common dso_local global i32 0, align 4
@RFCOMM_RELEASE_ONHUP = common dso_local global i32 0, align 4
@RFCOMM_TTY_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @rfcomm_tty_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.rfcomm_dev*, align 8
  %7 = alloca %struct.rfcomm_dlc*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.rfcomm_dev* @rfcomm_dev_get(i32 %11)
  store %struct.rfcomm_dev* %12, %struct.rfcomm_dev** %6, align 8
  %13 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %14 = icmp ne %struct.rfcomm_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %20 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %19, i32 0, i32 3
  %21 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %20, align 8
  store %struct.rfcomm_dlc* %21, %struct.rfcomm_dlc** %7, align 8
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %7, align 8
  %23 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %22)
  %24 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  store %struct.rfcomm_dev* %24, %struct.rfcomm_dev** %26, align 8
  %27 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %7, align 8
  %28 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %27)
  %29 = load i32, i32* @RFCOMM_TTY_ATTACHED, align 4
  %30 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %31 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %30, i32 0, i32 2
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %34 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %33, i32 0, i32 0
  %35 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %37 = call i32 @tty_port_install(i32* %34, %struct.tty_driver* %35, %struct.tty_struct* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %18
  %41 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %42 = call i32 @rfcomm_tty_cleanup(%struct.tty_struct* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %59

44:                                               ; preds = %18
  %45 = load i32, i32* @RFCOMM_RELEASE_ONHUP, align 4
  %46 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %47 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %46, i32 0, i32 2
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* @RFCOMM_TTY_OWNED, align 4
  %52 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %53 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %52, i32 0, i32 1
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %56 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %55, i32 0, i32 0
  %57 = call i32 @tty_port_put(i32* %56)
  br label %58

58:                                               ; preds = %50, %44
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %40, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.rfcomm_dev* @rfcomm_dev_get(i32) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_port_install(i32*, %struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local i32 @rfcomm_tty_cleanup(%struct.tty_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tty_port_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
