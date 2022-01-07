; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_configure_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_configure_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.ifinfomsg = type { i64, i64 }

@RTNL_LINK_INITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtnl_configure_link(%struct.net_device* %0, %struct.ifinfomsg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifinfomsg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifinfomsg* %1, %struct.ifinfomsg** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ifinfomsg*, %struct.ifinfomsg** %5, align 8
  %12 = icmp ne %struct.ifinfomsg* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.ifinfomsg*, %struct.ifinfomsg** %5, align 8
  %15 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.ifinfomsg*, %struct.ifinfomsg** %5, align 8
  %20 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18, %13
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.ifinfomsg*, %struct.ifinfomsg** %5, align 8
  %27 = call i32 @rtnl_dev_combine_flags(%struct.net_device* %25, %struct.ifinfomsg* %26)
  %28 = call i32 @__dev_change_flags(%struct.net_device* %24, i32 %27, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %18, %2
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RTNL_LINK_INITIALIZED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %43, %46
  %48 = call i32 @__dev_notify_flags(%struct.net_device* %41, i32 %42, i32 %47)
  br label %56

49:                                               ; preds = %34
  %50 = load i64, i64* @RTNL_LINK_INITIALIZED, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @__dev_notify_flags(%struct.net_device* %53, i32 %54, i32 -1)
  br label %56

56:                                               ; preds = %49, %40
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @__dev_change_flags(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @rtnl_dev_combine_flags(%struct.net_device*, %struct.ifinfomsg*) #1

declare dso_local i32 @__dev_notify_flags(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
