; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_dev_combine_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_dev_combine_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifinfomsg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifinfomsg*)* @rtnl_dev_combine_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_dev_combine_flags(%struct.net_device* %0, %struct.ifinfomsg* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ifinfomsg*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ifinfomsg* %1, %struct.ifinfomsg** %4, align 8
  %6 = load %struct.ifinfomsg*, %struct.ifinfomsg** %4, align 8
  %7 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ifinfomsg*, %struct.ifinfomsg** %4, align 8
  %10 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ifinfomsg*, %struct.ifinfomsg** %4, align 8
  %16 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @rtnl_dev_get_flags(%struct.net_device* %19)
  %21 = load %struct.ifinfomsg*, %struct.ifinfomsg** %4, align 8
  %22 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = or i32 %18, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @rtnl_dev_get_flags(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
