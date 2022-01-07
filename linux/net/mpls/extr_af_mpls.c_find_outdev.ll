; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_find_outdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_find_outdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.mpls_route = type { i32 }
%struct.mpls_nh = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net*, %struct.mpls_route*, %struct.mpls_nh*, i32)* @find_outdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @find_outdev(%struct.net* %0, %struct.mpls_route* %1, %struct.mpls_nh* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.mpls_route*, align 8
  %8 = alloca %struct.mpls_nh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.mpls_route* %1, %struct.mpls_route** %7, align 8
  store %struct.mpls_nh* %2, %struct.mpls_nh** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %4
  %14 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %15 = getelementptr inbounds %struct.mpls_nh, %struct.mpls_nh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %30 [
    i32 130, label %17
    i32 128, label %23
    i32 129, label %29
  ]

17:                                               ; preds = %13
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load %struct.mpls_route*, %struct.mpls_route** %7, align 8
  %20 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %21 = call i32 @mpls_nh_via(%struct.mpls_route* %19, %struct.mpls_nh* %20)
  %22 = call %struct.net_device* @inet_fib_lookup_dev(%struct.net* %18, i32 %21)
  store %struct.net_device* %22, %struct.net_device** %10, align 8
  br label %30

23:                                               ; preds = %13
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = load %struct.mpls_route*, %struct.mpls_route** %7, align 8
  %26 = load %struct.mpls_nh*, %struct.mpls_nh** %8, align 8
  %27 = call i32 @mpls_nh_via(%struct.mpls_route* %25, %struct.mpls_nh* %26)
  %28 = call %struct.net_device* @inet6_fib_lookup_dev(%struct.net* %24, i32 %27)
  store %struct.net_device* %28, %struct.net_device** %10, align 8
  br label %30

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %13, %29, %23, %17
  br label %35

31:                                               ; preds = %4
  %32 = load %struct.net*, %struct.net** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.net_device* @dev_get_by_index(%struct.net* %32, i32 %33)
  store %struct.net_device* %34, %struct.net_device** %10, align 8
  br label %35

35:                                               ; preds = %31, %30
  %36 = load %struct.net_device*, %struct.net_device** %10, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.net_device* @ERR_PTR(i32 %40)
  store %struct.net_device* %41, %struct.net_device** %5, align 8
  br label %52

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = call i64 @IS_ERR(%struct.net_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %47, %struct.net_device** %5, align 8
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %10, align 8
  %50 = call i32 @dev_put(%struct.net_device* %49)
  %51 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %51, %struct.net_device** %5, align 8
  br label %52

52:                                               ; preds = %48, %46, %38
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  ret %struct.net_device* %53
}

declare dso_local %struct.net_device* @inet_fib_lookup_dev(%struct.net*, i32) #1

declare dso_local i32 @mpls_nh_via(%struct.mpls_route*, %struct.mpls_nh*) #1

declare dso_local %struct.net_device* @inet6_fib_lookup_dev(%struct.net*, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
