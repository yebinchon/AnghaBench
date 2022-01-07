; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_check_carrier_and_operstate.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_check_carrier_and_operstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_priv = type { i32 }
%struct.hsr_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }

@HSR_PT_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsr_check_carrier_and_operstate(%struct.hsr_priv* %0) #0 {
  %2 = alloca %struct.hsr_priv*, align 8
  %3 = alloca %struct.hsr_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.hsr_priv* %0, %struct.hsr_priv** %2, align 8
  %6 = load %struct.hsr_priv*, %struct.hsr_priv** %2, align 8
  %7 = load i32, i32* @HSR_PT_MASTER, align 4
  %8 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %6, i32 %7)
  store %struct.hsr_port* %8, %struct.hsr_port** %3, align 8
  %9 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %10 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %4, align 1
  %14 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %15 = call i32 @hsr_check_carrier(%struct.hsr_port* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @hsr_set_operstate(%struct.hsr_port* %16, i32 %17)
  %19 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %20 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i8, i8* %4, align 1
  %23 = call i32 @hsr_check_announce(%struct.TYPE_2__* %21, i8 zeroext %22)
  ret void
}

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local i32 @hsr_check_carrier(%struct.hsr_port*) #1

declare dso_local i32 @hsr_set_operstate(%struct.hsr_port*, i32) #1

declare dso_local i32 @hsr_check_announce(%struct.TYPE_2__*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
