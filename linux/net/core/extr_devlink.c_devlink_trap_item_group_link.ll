; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_item_group_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_item_group_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_trap_item = type { %struct.devlink_trap_group_item*, %struct.TYPE_2__* }
%struct.devlink_trap_group_item = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_trap_item*)* @devlink_trap_item_group_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_trap_item_group_link(%struct.devlink* %0, %struct.devlink_trap_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_trap_item*, align 8
  %6 = alloca %struct.devlink_trap_group_item*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.devlink_trap_item* %1, %struct.devlink_trap_item** %5, align 8
  %7 = load %struct.devlink*, %struct.devlink** %4, align 8
  %8 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %9 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.devlink_trap_group_item* @devlink_trap_group_item_get(%struct.devlink* %7, i32* %11)
  store %struct.devlink_trap_group_item* %12, %struct.devlink_trap_group_item** %6, align 8
  %13 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %6, align 8
  %14 = call i64 @IS_ERR(%struct.devlink_trap_group_item* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %6, align 8
  %18 = call i32 @PTR_ERR(%struct.devlink_trap_group_item* %17)
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %6, align 8
  %21 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %22 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %21, i32 0, i32 0
  store %struct.devlink_trap_group_item* %20, %struct.devlink_trap_group_item** %22, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.devlink_trap_group_item* @devlink_trap_group_item_get(%struct.devlink*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.devlink_trap_group_item*) #1

declare dso_local i32 @PTR_ERR(%struct.devlink_trap_group_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
