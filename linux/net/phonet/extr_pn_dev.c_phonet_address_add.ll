; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c_phonet_address_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c_phonet_address_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.phonet_device_list = type { i32 }
%struct.phonet_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phonet_address_add(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phonet_device_list*, align 8
  %6 = alloca %struct.phonet_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @dev_net(%struct.net_device* %8)
  %10 = call %struct.phonet_device_list* @phonet_device_list(i32 %9)
  store %struct.phonet_device_list* %10, %struct.phonet_device_list** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.phonet_device_list*, %struct.phonet_device_list** %5, align 8
  %12 = getelementptr inbounds %struct.phonet_device_list, %struct.phonet_device_list* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.phonet_device* @__phonet_get(%struct.net_device* %14)
  store %struct.phonet_device* %15, %struct.phonet_device** %6, align 8
  %16 = load %struct.phonet_device*, %struct.phonet_device** %6, align 8
  %17 = icmp eq %struct.phonet_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.phonet_device* @__phonet_device_alloc(%struct.net_device* %19)
  store %struct.phonet_device* %20, %struct.phonet_device** %6, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.phonet_device*, %struct.phonet_device** %6, align 8
  %23 = icmp eq %struct.phonet_device* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %42

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 2
  %33 = load %struct.phonet_device*, %struct.phonet_device** %6, align 8
  %34 = getelementptr inbounds %struct.phonet_device, %struct.phonet_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @test_and_set_bit(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.phonet_device_list*, %struct.phonet_device_list** %5, align 8
  %44 = getelementptr inbounds %struct.phonet_device_list, %struct.phonet_device_list* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.phonet_device_list* @phonet_device_list(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.phonet_device* @__phonet_get(%struct.net_device*) #1

declare dso_local %struct.phonet_device* @__phonet_device_alloc(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
