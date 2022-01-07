; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32, %struct.devlink* }
%struct.devlink = type { i32 }

@DEVLINK_CMD_PORT_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_port_unregister(%struct.devlink_port* %0) #0 {
  %2 = alloca %struct.devlink_port*, align 8
  %3 = alloca %struct.devlink*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %2, align 8
  %4 = load %struct.devlink_port*, %struct.devlink_port** %2, align 8
  %5 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %4, i32 0, i32 1
  %6 = load %struct.devlink*, %struct.devlink** %5, align 8
  store %struct.devlink* %6, %struct.devlink** %3, align 8
  %7 = load %struct.devlink_port*, %struct.devlink_port** %2, align 8
  %8 = call i32 @devlink_port_type_warn_cancel(%struct.devlink_port* %7)
  %9 = load %struct.devlink_port*, %struct.devlink_port** %2, align 8
  %10 = load i32, i32* @DEVLINK_CMD_PORT_DEL, align 4
  %11 = call i32 @devlink_port_notify(%struct.devlink_port* %9, i32 %10)
  %12 = load %struct.devlink*, %struct.devlink** %3, align 8
  %13 = getelementptr inbounds %struct.devlink, %struct.devlink* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.devlink_port*, %struct.devlink_port** %2, align 8
  %16 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %15, i32 0, i32 0
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.devlink*, %struct.devlink** %3, align 8
  %19 = getelementptr inbounds %struct.devlink, %struct.devlink* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  ret void
}

declare dso_local i32 @devlink_port_type_warn_cancel(%struct.devlink_port*) #1

declare dso_local i32 @devlink_port_notify(%struct.devlink_port*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
