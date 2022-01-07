; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atrtr_device_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atrtr_device_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_route = type { %struct.atalk_route*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@atalk_routes = common dso_local global %struct.atalk_route* null, align 8
@atalk_routes_lock = common dso_local global i32 0, align 4
@atrtr_default = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @atrtr_device_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atrtr_device_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atalk_route**, align 8
  %4 = alloca %struct.atalk_route*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.atalk_route** @atalk_routes, %struct.atalk_route*** %3, align 8
  %5 = call i32 @write_lock_bh(i32* @atalk_routes_lock)
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.atalk_route**, %struct.atalk_route*** %3, align 8
  %8 = load %struct.atalk_route*, %struct.atalk_route** %7, align 8
  store %struct.atalk_route* %8, %struct.atalk_route** %4, align 8
  %9 = icmp ne %struct.atalk_route* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %12 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = icmp eq %struct.net_device* %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %18 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %17, i32 0, i32 0
  %19 = load %struct.atalk_route*, %struct.atalk_route** %18, align 8
  %20 = load %struct.atalk_route**, %struct.atalk_route*** %3, align 8
  store %struct.atalk_route* %19, %struct.atalk_route** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @dev_put(%struct.net_device* %21)
  %23 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %24 = call i32 @kfree(%struct.atalk_route* %23)
  br label %28

25:                                               ; preds = %10
  %26 = load %struct.atalk_route*, %struct.atalk_route** %4, align 8
  %27 = getelementptr inbounds %struct.atalk_route, %struct.atalk_route* %26, i32 0, i32 0
  store %struct.atalk_route** %27, %struct.atalk_route*** %3, align 8
  br label %28

28:                                               ; preds = %25, %16
  br label %6

29:                                               ; preds = %6
  %30 = call i32 @write_unlock_bh(i32* @atalk_routes_lock)
  %31 = load %struct.net_device*, %struct.net_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @atrtr_default, i32 0, i32 0), align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = icmp eq %struct.net_device* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @atrtr_set_default(i32* null)
  br label %36

36:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.atalk_route*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @atrtr_set_default(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
