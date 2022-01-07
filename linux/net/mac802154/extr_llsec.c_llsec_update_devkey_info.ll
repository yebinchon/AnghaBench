; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_update_devkey_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_update_devkey_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ieee802154_llsec_key_id = type { i32 }
%struct.mac802154_llsec_device_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IEEE802154_LLSEC_DEVKEY_RESTRICT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_DEVKEY_RECORD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac802154_llsec_device*, %struct.ieee802154_llsec_key_id*, i64)* @llsec_update_devkey_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_update_devkey_info(%struct.mac802154_llsec_device* %0, %struct.ieee802154_llsec_key_id* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac802154_llsec_device*, align 8
  %6 = alloca %struct.ieee802154_llsec_key_id*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mac802154_llsec_device_key*, align 8
  %9 = alloca i32, align 4
  store %struct.mac802154_llsec_device* %0, %struct.mac802154_llsec_device** %5, align 8
  store %struct.ieee802154_llsec_key_id* %1, %struct.ieee802154_llsec_key_id** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mac802154_llsec_device_key* null, %struct.mac802154_llsec_device_key** %8, align 8
  %10 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %11 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE802154_LLSEC_DEVKEY_RESTRICT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %18 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %6, align 8
  %19 = call %struct.mac802154_llsec_device_key* @llsec_devkey_find(%struct.mac802154_llsec_device* %17, %struct.ieee802154_llsec_key_id* %18)
  store %struct.mac802154_llsec_device_key* %19, %struct.mac802154_llsec_device_key** %8, align 8
  %20 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %8, align 8
  %21 = icmp ne %struct.mac802154_llsec_device_key* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %28 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE802154_LLSEC_DEVKEY_RECORD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %35 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %6, align 8
  %36 = call i32 @llsec_update_devkey_record(%struct.mac802154_llsec_device* %34, %struct.ieee802154_llsec_key_id* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %90

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %44 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %8, align 8
  %47 = icmp ne %struct.mac802154_llsec_device_key* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %51 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %8, align 8
  %57 = icmp ne %struct.mac802154_llsec_device_key* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %8, align 8
  %61 = getelementptr inbounds %struct.mac802154_llsec_device_key, %struct.mac802154_llsec_device_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %59, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %58, %48
  %66 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %67 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %90

71:                                               ; preds = %58, %55
  %72 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %8, align 8
  %73 = icmp ne %struct.mac802154_llsec_device_key* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  %77 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %8, align 8
  %78 = getelementptr inbounds %struct.mac802154_llsec_device_key, %struct.mac802154_llsec_device_key* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  br label %86

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, 1
  %83 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %84 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %5, align 8
  %88 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %65, %39, %22
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.mac802154_llsec_device_key* @llsec_devkey_find(%struct.mac802154_llsec_device*, %struct.ieee802154_llsec_key_id*) #1

declare dso_local i32 @llsec_update_devkey_record(%struct.mac802154_llsec_device*, %struct.ieee802154_llsec_key_id*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
