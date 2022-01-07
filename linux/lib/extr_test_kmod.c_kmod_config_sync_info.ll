; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_kmod_config_sync_info.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_kmod_config_sync_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { i32, %struct.test_config }
%struct.test_config = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_test_device*)* @kmod_config_sync_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmod_config_sync_info(%struct.kmod_test_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmod_test_device*, align 8
  %4 = alloca %struct.test_config*, align 8
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %3, align 8
  %5 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %6 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %5, i32 0, i32 1
  store %struct.test_config* %6, %struct.test_config** %4, align 8
  %7 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %8 = call i32 @free_test_dev_info(%struct.kmod_test_device* %7)
  %9 = load %struct.test_config*, %struct.test_config** %4, align 8
  %10 = getelementptr inbounds %struct.test_config, %struct.test_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @array_size(i32 4, i32 %11)
  %13 = call i32 @vzalloc(i32 %12)
  %14 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %15 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %17 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @free_test_dev_info(%struct.kmod_test_device*) #1

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
