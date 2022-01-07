; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_ioctl.c_add_del_if.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_ioctl.c_add_del_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, i32, i32)* @add_del_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_del_if(%struct.net_bridge* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @dev_net(i32 %13)
  store %struct.net* %14, %struct.net** %8, align 8
  %15 = load %struct.net*, %struct.net** %8, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CAP_NET_ADMIN, align 4
  %19 = call i32 @ns_capable(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load %struct.net*, %struct.net** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.net_device* @__dev_get_by_index(%struct.net* %25, i32 %26)
  store %struct.net_device* %27, %struct.net_device** %9, align 8
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = icmp eq %struct.net_device* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %38 = load %struct.net_device*, %struct.net_device** %9, align 8
  %39 = call i32 @br_add_if(%struct.net_bridge* %37, %struct.net_device* %38, i32* null)
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %42 = load %struct.net_device*, %struct.net_device** %9, align 8
  %43 = call i32 @br_del_if(%struct.net_bridge* %41, %struct.net_device* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %30, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @br_add_if(%struct.net_bridge*, %struct.net_device*, i32*) #1

declare dso_local i32 @br_del_if(%struct.net_bridge*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
