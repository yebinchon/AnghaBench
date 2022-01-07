; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_test_kmod_put_module.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_kmod.c_test_kmod_put_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_test_device_info = type { i32, %struct.TYPE_2__*, %struct.kmod_test_device* }
%struct.TYPE_2__ = type { i32 }
%struct.kmod_test_device = type { %struct.test_config }
%struct.test_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmod_test_device_info*)* @test_kmod_put_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_kmod_put_module(%struct.kmod_test_device_info* %0) #0 {
  %2 = alloca %struct.kmod_test_device_info*, align 8
  %3 = alloca %struct.kmod_test_device*, align 8
  %4 = alloca %struct.test_config*, align 8
  store %struct.kmod_test_device_info* %0, %struct.kmod_test_device_info** %2, align 8
  %5 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %2, align 8
  %6 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %5, i32 0, i32 2
  %7 = load %struct.kmod_test_device*, %struct.kmod_test_device** %6, align 8
  store %struct.kmod_test_device* %7, %struct.kmod_test_device** %3, align 8
  %8 = load %struct.kmod_test_device*, %struct.kmod_test_device** %3, align 8
  %9 = getelementptr inbounds %struct.kmod_test_device, %struct.kmod_test_device* %8, i32 0, i32 0
  store %struct.test_config* %9, %struct.test_config** %4, align 8
  %10 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %2, align 8
  %11 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.test_config*, %struct.test_config** %4, align 8
  %17 = getelementptr inbounds %struct.test_config, %struct.test_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %43 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %15
  br label %45

20:                                               ; preds = %15
  %21 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %2, align 8
  %22 = icmp ne %struct.kmod_test_device_info* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %2, align 8
  %25 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %2, align 8
  %30 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %2, align 8
  %37 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @module_put(i32 %40)
  br label %42

42:                                               ; preds = %35, %28, %23, %20
  br label %45

43:                                               ; preds = %15
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %42, %19
  %46 = load %struct.kmod_test_device_info*, %struct.kmod_test_device_info** %2, align 8
  %47 = getelementptr inbounds %struct.kmod_test_device_info, %struct.kmod_test_device_info* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %14
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
