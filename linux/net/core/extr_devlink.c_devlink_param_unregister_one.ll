; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_unregister_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_unregister_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.list_head = type { i32 }
%struct.devlink_param = type { i32 }
%struct.devlink_param_item = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*, i32, %struct.list_head*, %struct.devlink_param*, i32)* @devlink_param_unregister_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_param_unregister_one(%struct.devlink* %0, i32 %1, %struct.list_head* %2, %struct.devlink_param* %3, i32 %4) #0 {
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.devlink_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.devlink_param_item*, align 8
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.devlink_param* %3, %struct.devlink_param** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.list_head*, %struct.list_head** %8, align 8
  %13 = load %struct.devlink_param*, %struct.devlink_param** %9, align 8
  %14 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.devlink_param_item* @devlink_param_find_by_name(%struct.list_head* %12, i32 %15)
  store %struct.devlink_param_item* %16, %struct.devlink_param_item** %11, align 8
  %17 = load %struct.devlink_param_item*, %struct.devlink_param_item** %11, align 8
  %18 = icmp ne %struct.devlink_param_item* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.devlink*, %struct.devlink** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.devlink_param_item*, %struct.devlink_param_item** %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @devlink_param_notify(%struct.devlink* %22, i32 %23, %struct.devlink_param_item* %24, i32 %25)
  %27 = load %struct.devlink_param_item*, %struct.devlink_param_item** %11, align 8
  %28 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %27, i32 0, i32 0
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.devlink_param_item*, %struct.devlink_param_item** %11, align 8
  %31 = call i32 @kfree(%struct.devlink_param_item* %30)
  ret void
}

declare dso_local %struct.devlink_param_item* @devlink_param_find_by_name(%struct.list_head*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devlink_param_notify(%struct.devlink*, i32, %struct.devlink_param_item*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.devlink_param_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
