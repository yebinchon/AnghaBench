; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_free_test_dev_kmod.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_free_test_dev_kmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmod_test_device*)* @free_test_dev_kmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_test_dev_kmod(%struct.kmod_test_device* %0) #0 {
  %2 = alloca %struct.kmod_test_device*, align 8
  store %struct.kmod_test_device* %0, %struct.kmod_test_device** %2, align 8
  %3 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %4 = icmp ne %struct.kmod_test_device* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %7 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kfree_const(i32* %9)
  %11 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %12 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %15 = call i32 @free_test_dev_info(%struct.kmod_test_device* %14)
  %16 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %17 = call i32 @kmod_config_free(%struct.kmod_test_device* %16)
  %18 = load %struct.kmod_test_device*, %struct.kmod_test_device** %2, align 8
  %19 = call i32 @vfree(%struct.kmod_test_device* %18)
  store %struct.kmod_test_device* null, %struct.kmod_test_device** %2, align 8
  br label %20

20:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @kfree_const(i32*) #1

declare dso_local i32 @free_test_dev_info(%struct.kmod_test_device*) #1

declare dso_local i32 @kmod_config_free(%struct.kmod_test_device*) #1

declare dso_local i32 @vfree(%struct.kmod_test_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
