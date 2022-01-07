; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_update_devkey_record.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_update_devkey_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee802154_llsec_key_id = type { i32 }
%struct.mac802154_llsec_device_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ieee802154_llsec_key_id }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac802154_llsec_device*, %struct.ieee802154_llsec_key_id*)* @llsec_update_devkey_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_update_devkey_record(%struct.mac802154_llsec_device* %0, %struct.ieee802154_llsec_key_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac802154_llsec_device*, align 8
  %5 = alloca %struct.ieee802154_llsec_key_id*, align 8
  %6 = alloca %struct.mac802154_llsec_device_key*, align 8
  %7 = alloca %struct.mac802154_llsec_device_key*, align 8
  store %struct.mac802154_llsec_device* %0, %struct.mac802154_llsec_device** %4, align 8
  store %struct.ieee802154_llsec_key_id* %1, %struct.ieee802154_llsec_key_id** %5, align 8
  %8 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %4, align 8
  %9 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %10 = call %struct.mac802154_llsec_device_key* @llsec_devkey_find(%struct.mac802154_llsec_device* %8, %struct.ieee802154_llsec_key_id* %9)
  store %struct.mac802154_llsec_device_key* %10, %struct.mac802154_llsec_device_key** %6, align 8
  %11 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %6, align 8
  %12 = icmp ne %struct.mac802154_llsec_device_key* %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.mac802154_llsec_device_key* @kzalloc(i32 8, i32 %14)
  store %struct.mac802154_llsec_device_key* %15, %struct.mac802154_llsec_device_key** %7, align 8
  %16 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %7, align 8
  %17 = icmp ne %struct.mac802154_llsec_device_key* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %13
  %22 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %7, align 8
  %23 = getelementptr inbounds %struct.mac802154_llsec_device_key, %struct.mac802154_llsec_device_key* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %26 = bitcast %struct.ieee802154_llsec_key_id* %24 to i8*
  %27 = bitcast %struct.ieee802154_llsec_key_id* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %4, align 8
  %29 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %4, align 8
  %32 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %33 = call %struct.mac802154_llsec_device_key* @llsec_devkey_find(%struct.mac802154_llsec_device* %31, %struct.ieee802154_llsec_key_id* %32)
  store %struct.mac802154_llsec_device_key* %33, %struct.mac802154_llsec_device_key** %6, align 8
  %34 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %6, align 8
  %35 = icmp ne %struct.mac802154_llsec_device_key* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %21
  %37 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %7, align 8
  %38 = getelementptr inbounds %struct.mac802154_llsec_device_key, %struct.mac802154_llsec_device_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %4, align 8
  %41 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @list_add_rcu(i32* %39, i32* %42)
  br label %47

44:                                               ; preds = %21
  %45 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %7, align 8
  %46 = call i32 @kzfree(%struct.mac802154_llsec_device_key* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %4, align 8
  %49 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  br label %51

51:                                               ; preds = %47, %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mac802154_llsec_device_key* @llsec_devkey_find(%struct.mac802154_llsec_device*, %struct.ieee802154_llsec_key_id*) #1

declare dso_local %struct.mac802154_llsec_device_key* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @kzfree(%struct.mac802154_llsec_device_key*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
