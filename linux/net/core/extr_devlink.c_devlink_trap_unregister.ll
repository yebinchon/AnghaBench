; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink*, %struct.devlink_trap*, %struct.devlink_trap_item*)* }
%struct.devlink_trap_item = type { i32, i32 }
%struct.devlink_trap = type { i32 }

@DEVLINK_CMD_TRAP_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink*, %struct.devlink_trap*)* @devlink_trap_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_trap_unregister(%struct.devlink* %0, %struct.devlink_trap* %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca %struct.devlink_trap*, align 8
  %5 = alloca %struct.devlink_trap_item*, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %4, align 8
  %6 = load %struct.devlink*, %struct.devlink** %3, align 8
  %7 = load %struct.devlink_trap*, %struct.devlink_trap** %4, align 8
  %8 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.devlink_trap_item* @devlink_trap_item_lookup(%struct.devlink* %6, i32 %9)
  store %struct.devlink_trap_item* %10, %struct.devlink_trap_item** %5, align 8
  %11 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %12 = icmp ne %struct.devlink_trap_item* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.devlink*, %struct.devlink** %3, align 8
  %20 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %21 = load i32, i32* @DEVLINK_CMD_TRAP_DEL, align 4
  %22 = call i32 @devlink_trap_notify(%struct.devlink* %19, %struct.devlink_trap_item* %20, i32 %21)
  %23 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %24 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %23, i32 0, i32 1
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.devlink*, %struct.devlink** %3, align 8
  %27 = getelementptr inbounds %struct.devlink, %struct.devlink* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.devlink*, %struct.devlink_trap*, %struct.devlink_trap_item*)*, i32 (%struct.devlink*, %struct.devlink_trap*, %struct.devlink_trap_item*)** %29, align 8
  %31 = icmp ne i32 (%struct.devlink*, %struct.devlink_trap*, %struct.devlink_trap_item*)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = load %struct.devlink*, %struct.devlink** %3, align 8
  %34 = getelementptr inbounds %struct.devlink, %struct.devlink* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.devlink*, %struct.devlink_trap*, %struct.devlink_trap_item*)*, i32 (%struct.devlink*, %struct.devlink_trap*, %struct.devlink_trap_item*)** %36, align 8
  %38 = load %struct.devlink*, %struct.devlink** %3, align 8
  %39 = load %struct.devlink_trap*, %struct.devlink_trap** %4, align 8
  %40 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %41 = call i32 %37(%struct.devlink* %38, %struct.devlink_trap* %39, %struct.devlink_trap_item* %40)
  br label %42

42:                                               ; preds = %32, %18
  %43 = load %struct.devlink*, %struct.devlink** %3, align 8
  %44 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %45 = call i32 @devlink_trap_item_group_unlink(%struct.devlink* %43, %struct.devlink_trap_item* %44)
  %46 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %47 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @free_percpu(i32 %48)
  %50 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %5, align 8
  %51 = call i32 @kfree(%struct.devlink_trap_item* %50)
  br label %52

52:                                               ; preds = %42, %17
  ret void
}

declare dso_local %struct.devlink_trap_item* @devlink_trap_item_lookup(%struct.devlink*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @devlink_trap_notify(%struct.devlink*, %struct.devlink_trap_item*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devlink_trap_item_group_unlink(%struct.devlink*, %struct.devlink_trap_item*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(%struct.devlink_trap_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
