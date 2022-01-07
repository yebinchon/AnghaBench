; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_group_item_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_group_item_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_trap_group_item = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_trap_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.devlink_trap_group_item* (%struct.devlink*, %struct.devlink_trap_group*)* @devlink_trap_group_item_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.devlink_trap_group_item* @devlink_trap_group_item_get(%struct.devlink* %0, %struct.devlink_trap_group* %1) #0 {
  %3 = alloca %struct.devlink_trap_group_item*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.devlink_trap_group*, align 8
  %6 = alloca %struct.devlink_trap_group_item*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.devlink_trap_group* %1, %struct.devlink_trap_group** %5, align 8
  %7 = load %struct.devlink*, %struct.devlink** %4, align 8
  %8 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %5, align 8
  %9 = getelementptr inbounds %struct.devlink_trap_group, %struct.devlink_trap_group* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.devlink_trap_group_item* @devlink_trap_group_item_lookup(%struct.devlink* %7, i32 %10)
  store %struct.devlink_trap_group_item* %11, %struct.devlink_trap_group_item** %6, align 8
  %12 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %6, align 8
  %13 = icmp ne %struct.devlink_trap_group_item* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %6, align 8
  %16 = getelementptr inbounds %struct.devlink_trap_group_item, %struct.devlink_trap_group_item* %15, i32 0, i32 0
  %17 = call i32 @refcount_inc(i32* %16)
  %18 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %6, align 8
  store %struct.devlink_trap_group_item* %18, %struct.devlink_trap_group_item** %3, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.devlink*, %struct.devlink** %4, align 8
  %21 = load %struct.devlink_trap_group*, %struct.devlink_trap_group** %5, align 8
  %22 = call %struct.devlink_trap_group_item* @devlink_trap_group_item_create(%struct.devlink* %20, %struct.devlink_trap_group* %21)
  store %struct.devlink_trap_group_item* %22, %struct.devlink_trap_group_item** %3, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %3, align 8
  ret %struct.devlink_trap_group_item* %24
}

declare dso_local %struct.devlink_trap_group_item* @devlink_trap_group_item_lookup(%struct.devlink*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local %struct.devlink_trap_group_item* @devlink_trap_group_item_create(%struct.devlink*, %struct.devlink_trap_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
