; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_vif_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr_base.c_vif_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vif_device = type { i64, i16, i8, i32, i64, i64, i64, i64, i32* }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vif_device_init(%struct.vif_device* %0, %struct.net_device* %1, i64 %2, i8 zeroext %3, i16 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.vif_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.vif_device* %0, %struct.vif_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8 %3, i8* %10, align 1
  store i16 %4, i16* %11, align 2
  store i16 %5, i16* %12, align 2
  %13 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %14 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %13, i32 0, i32 8
  store i32* null, i32** %14, align 8
  %15 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %16 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %18 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %20 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %22 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %25 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i16, i16* %11, align 2
  %27 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %28 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %27, i32 0, i32 1
  store i16 %26, i16* %28, align 8
  %29 = load i8, i8* %10, align 1
  %30 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %31 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %30, i32 0, i32 2
  store i8 %29, i8* %31, align 2
  %32 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %33 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %32, i32 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %12, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %6
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = call i32 @dev_get_iflink(%struct.net_device* %41)
  %43 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %44 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %51

45:                                               ; preds = %6
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vif_device*, %struct.vif_device** %7, align 8
  %50 = getelementptr inbounds %struct.vif_device, %struct.vif_device* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @dev_get_iflink(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
