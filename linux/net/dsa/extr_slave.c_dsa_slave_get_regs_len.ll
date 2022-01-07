; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dsa_port = type { i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dsa_slave_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_get_regs_len(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %6)
  store %struct.dsa_port* %7, %struct.dsa_port** %4, align 8
  %8 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %8, i32 0, i32 1
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  store %struct.dsa_switch* %10, %struct.dsa_switch** %5, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.dsa_switch*, i32)* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %21, align 8
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %24 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %25 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(%struct.dsa_switch* %23, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
