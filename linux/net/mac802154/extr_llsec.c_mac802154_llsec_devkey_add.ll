; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_devkey_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_devkey_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { i32 }
%struct.ieee802154_llsec_device_key = type { i32, i32 }
%struct.mac802154_llsec_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mac802154_llsec_device_key = type { %struct.ieee802154_llsec_device_key }

@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_devkey_add(%struct.mac802154_llsec* %0, i32 %1, %struct.ieee802154_llsec_device_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac802154_llsec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee802154_llsec_device_key*, align 8
  %8 = alloca %struct.mac802154_llsec_device*, align 8
  %9 = alloca %struct.mac802154_llsec_device_key*, align 8
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee802154_llsec_device_key* %2, %struct.ieee802154_llsec_device_key** %7, align 8
  %10 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.mac802154_llsec_device* @llsec_dev_find_long(%struct.mac802154_llsec* %10, i32 %11)
  store %struct.mac802154_llsec_device* %12, %struct.mac802154_llsec_device** %8, align 8
  %13 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %8, align 8
  %14 = icmp ne %struct.mac802154_llsec_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %8, align 8
  %20 = load %struct.ieee802154_llsec_device_key*, %struct.ieee802154_llsec_device_key** %7, align 8
  %21 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %20, i32 0, i32 1
  %22 = call i64 @llsec_devkey_find(%struct.mac802154_llsec_device* %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %18
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mac802154_llsec_device_key* @kmalloc(i32 8, i32 %28)
  store %struct.mac802154_llsec_device_key* %29, %struct.mac802154_llsec_device_key** %9, align 8
  %30 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %9, align 8
  %31 = icmp ne %struct.mac802154_llsec_device_key* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %48

35:                                               ; preds = %27
  %36 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %9, align 8
  %37 = getelementptr inbounds %struct.mac802154_llsec_device_key, %struct.mac802154_llsec_device_key* %36, i32 0, i32 0
  %38 = load %struct.ieee802154_llsec_device_key*, %struct.ieee802154_llsec_device_key** %7, align 8
  %39 = bitcast %struct.ieee802154_llsec_device_key* %37 to i8*
  %40 = bitcast %struct.ieee802154_llsec_device_key* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %9, align 8
  %42 = getelementptr inbounds %struct.mac802154_llsec_device_key, %struct.mac802154_llsec_device_key* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %42, i32 0, i32 0
  %44 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %8, align 8
  %45 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail_rcu(i32* %43, i32* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %35, %32, %24, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.mac802154_llsec_device* @llsec_dev_find_long(%struct.mac802154_llsec*, i32) #1

declare dso_local i64 @llsec_devkey_find(%struct.mac802154_llsec_device*, i32*) #1

declare dso_local %struct.mac802154_llsec_device_key* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
