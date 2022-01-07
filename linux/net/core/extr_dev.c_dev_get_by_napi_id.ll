; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_by_napi_id.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_get_by_napi_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.napi_struct = type { %struct.net_device* }

@MIN_NAPI_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @dev_get_by_napi_id(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.napi_struct*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @rcu_read_lock_held()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MIN_NAPI_ID, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.napi_struct* @napi_by_id(i32 %15)
  store %struct.napi_struct* %16, %struct.napi_struct** %4, align 8
  %17 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %18 = icmp ne %struct.napi_struct* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %21 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi %struct.net_device* [ %22, %19 ], [ null, %23 ]
  store %struct.net_device* %25, %struct.net_device** %2, align 8
  br label %26

26:                                               ; preds = %24, %13
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %27
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock_held(...) #1

declare dso_local %struct.napi_struct* @napi_by_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
