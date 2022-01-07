; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, %struct.device* }
%struct.device = type { i32 }

@devlink_mutex = common dso_local global i32 0, align 4
@devlink_list = common dso_local global i32 0, align 4
@DEVLINK_CMD_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_register(%struct.devlink* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = call i32 @mutex_lock(i32* @devlink_mutex)
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = load %struct.devlink*, %struct.devlink** %3, align 8
  %8 = getelementptr inbounds %struct.devlink, %struct.devlink* %7, i32 0, i32 1
  store %struct.device* %6, %struct.device** %8, align 8
  %9 = load %struct.devlink*, %struct.devlink** %3, align 8
  %10 = getelementptr inbounds %struct.devlink, %struct.devlink* %9, i32 0, i32 0
  %11 = call i32 @list_add_tail(i32* %10, i32* @devlink_list)
  %12 = load %struct.devlink*, %struct.devlink** %3, align 8
  %13 = load i32, i32* @DEVLINK_CMD_NEW, align 4
  %14 = call i32 @devlink_notify(%struct.devlink* %12, i32 %13)
  %15 = call i32 @mutex_unlock(i32* @devlink_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @devlink_notify(%struct.devlink*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
