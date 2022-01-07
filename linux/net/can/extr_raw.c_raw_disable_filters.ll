; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_disable_filters.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_disable_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.can_filter = type { i32, i32 }

@raw_rcv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.net_device*, %struct.sock*, %struct.can_filter*, i32)* @raw_disable_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_disable_filters(%struct.net* %0, %struct.net_device* %1, %struct.sock* %2, %struct.can_filter* %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.can_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.sock* %2, %struct.sock** %8, align 8
  store %struct.can_filter* %3, %struct.can_filter** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %34, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load %struct.net*, %struct.net** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load %struct.can_filter*, %struct.can_filter** %9, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %19, i64 %21
  %23 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.can_filter*, %struct.can_filter** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %25, i64 %27
  %29 = getelementptr inbounds %struct.can_filter, %struct.can_filter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @raw_rcv, align 4
  %32 = load %struct.sock*, %struct.sock** %8, align 8
  %33 = call i32 @can_rx_unregister(%struct.net* %17, %struct.net_device* %18, i32 %24, i32 %30, i32 %31, %struct.sock* %32)
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %12

37:                                               ; preds = %12
  ret void
}

declare dso_local i32 @can_rx_unregister(%struct.net*, %struct.net_device*, i32, i32, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
