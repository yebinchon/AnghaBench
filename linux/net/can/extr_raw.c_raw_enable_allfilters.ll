; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_enable_allfilters.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_enable_allfilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.raw_sock = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.sock*)* @raw_enable_allfilters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_enable_allfilters(%struct.net* %0, %struct.net_device* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.raw_sock*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %6, align 8
  %10 = call %struct.raw_sock* @raw_sk(%struct.sock* %9)
  store %struct.raw_sock* %10, %struct.raw_sock** %7, align 8
  %11 = load %struct.net*, %struct.net** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = load %struct.raw_sock*, %struct.raw_sock** %7, align 8
  %15 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.raw_sock*, %struct.raw_sock** %7, align 8
  %18 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @raw_enable_filters(%struct.net* %11, %struct.net_device* %12, %struct.sock* %13, i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %3
  %24 = load %struct.net*, %struct.net** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.raw_sock*, %struct.raw_sock** %7, align 8
  %28 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @raw_enable_errfilter(%struct.net* %24, %struct.net_device* %25, %struct.sock* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load %struct.net*, %struct.net** %4, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = load %struct.raw_sock*, %struct.raw_sock** %7, align 8
  %38 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.raw_sock*, %struct.raw_sock** %7, align 8
  %41 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @raw_disable_filters(%struct.net* %34, %struct.net_device* %35, %struct.sock* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %33, %23
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local i32 @raw_enable_filters(%struct.net*, %struct.net_device*, %struct.sock*, i32, i32) #1

declare dso_local i32 @raw_enable_errfilter(%struct.net*, %struct.net_device*, %struct.sock*, i32) #1

declare dso_local i32 @raw_disable_filters(%struct.net*, %struct.net_device*, %struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
