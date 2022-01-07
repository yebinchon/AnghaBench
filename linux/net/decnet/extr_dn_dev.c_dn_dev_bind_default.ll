; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_bind_default.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_bind_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@init_net = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_dev_bind_default(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call %struct.net_device* (...) @dn_dev_get_default()
  store %struct.net_device* %5, %struct.net_device** %3, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @dn_dev_get_first(%struct.net_device* %10, i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @dev_put(%struct.net_device* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.net_device*, %struct.net_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_net, i32 0, i32 0), align 8
  %20 = icmp eq %struct.net_device* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %9
  %22 = load i32, i32* %4, align 4
  ret i32 %22

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %6
  %25 = load %struct.net_device*, %struct.net_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_net, i32 0, i32 0), align 8
  store %struct.net_device* %25, %struct.net_device** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @dev_hold(%struct.net_device* %26)
  br label %6
}

declare dso_local %struct.net_device* @dn_dev_get_default(...) #1

declare dso_local i32 @dn_dev_get_first(%struct.net_device*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
