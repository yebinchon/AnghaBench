; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_trap_action_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_trap_action_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.devlink*, %struct.TYPE_4__*, i32)* }
%struct.TYPE_4__ = type { i64 }
%struct.devlink_trap_item = type { i32, %struct.TYPE_4__* }
%struct.netlink_ext_ack = type { i32 }

@DEVLINK_TRAP_TYPE_DROP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Cannot change action of non-drop traps. Skipping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_trap_item*, i32, %struct.netlink_ext_ack*)* @__devlink_trap_action_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__devlink_trap_action_set(%struct.devlink* %0, %struct.devlink_trap_item* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_trap_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store %struct.devlink_trap_item* %1, %struct.devlink_trap_item** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %7, align 8
  %12 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %7, align 8
  %18 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEVLINK_TRAP_TYPE_DROP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %47

27:                                               ; preds = %16, %4
  %28 = load %struct.devlink*, %struct.devlink** %6, align 8
  %29 = getelementptr inbounds %struct.devlink, %struct.devlink* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.devlink*, %struct.TYPE_4__*, i32)*, i32 (%struct.devlink*, %struct.TYPE_4__*, i32)** %31, align 8
  %33 = load %struct.devlink*, %struct.devlink** %6, align 8
  %34 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %7, align 8
  %35 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 %32(%struct.devlink* %33, %struct.TYPE_4__* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %7, align 8
  %46 = getelementptr inbounds %struct.devlink_trap_item, %struct.devlink_trap_item* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %41, %24
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
