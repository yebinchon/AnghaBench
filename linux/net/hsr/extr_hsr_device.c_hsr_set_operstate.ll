; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_set_operstate.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_set_operstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_port = type { i32 }

@IF_OPER_DOWN = common dso_local global i32 0, align 4
@IF_OPER_UP = common dso_local global i32 0, align 4
@IF_OPER_LOWERLAYERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsr_port*, i32)* @hsr_set_operstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsr_set_operstate(%struct.hsr_port* %0, i32 %1) #0 {
  %3 = alloca %struct.hsr_port*, align 8
  %4 = alloca i32, align 4
  store %struct.hsr_port* %0, %struct.hsr_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %6 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @is_admin_up(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %12 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IF_OPER_DOWN, align 4
  %15 = call i32 @__hsr_set_operstate(i32 %13, i32 %14)
  br label %31

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %21 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IF_OPER_UP, align 4
  %24 = call i32 @__hsr_set_operstate(i32 %22, i32 %23)
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  %27 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IF_OPER_LOWERLAYERDOWN, align 4
  %30 = call i32 @__hsr_set_operstate(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %10, %25, %19
  ret void
}

declare dso_local i32 @is_admin_up(i32) #1

declare dso_local i32 @__hsr_set_operstate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
