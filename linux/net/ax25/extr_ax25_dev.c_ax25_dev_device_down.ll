; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_dev.c_ax25_dev_device_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_dev.c_ax25_dev_device_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.net_device* }
%struct.net_device = type { i32* }

@ax25_dev_lock = common dso_local global i32 0, align 4
@ax25_dev_list = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_dev_device_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.TYPE_7__* @ax25_dev_ax25dev(%struct.net_device* %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %84

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32 @ax25_unregister_dev_sysctl(%struct.TYPE_7__* %10)
  %12 = call i32 @spin_lock_bh(i32* @ax25_dev_lock)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ax25_dev_list, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %3, align 8
  br label %14

14:                                               ; preds = %27, %9
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = icmp eq %struct.net_device* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %25, align 8
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %3, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ax25_dev_list, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %3, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = icmp eq %struct.TYPE_7__* %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** @ax25_dev_list, align 8
  %39 = call i32 @spin_unlock_bh(i32* @ax25_dev_lock)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @dev_put(%struct.net_device* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = call i32 @kfree(%struct.TYPE_7__* %44)
  br label %84

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %76, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i1 [ false, %47 ], [ %54, %50 ]
  br i1 %56, label %57, label %80

57:                                               ; preds = %55
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = icmp eq %struct.TYPE_7__* %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %68, align 8
  %69 = call i32 @spin_unlock_bh(i32* @ax25_dev_lock)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = call i32 @dev_put(%struct.net_device* %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = call i32 @kfree(%struct.TYPE_7__* %74)
  br label %84

76:                                               ; preds = %57
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %3, align 8
  br label %47

80:                                               ; preds = %55
  %81 = call i32 @spin_unlock_bh(i32* @ax25_dev_lock)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %63, %35, %8
  ret void
}

declare dso_local %struct.TYPE_7__* @ax25_dev_ax25dev(%struct.net_device*) #1

declare dso_local i32 @ax25_unregister_dev_sysctl(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
