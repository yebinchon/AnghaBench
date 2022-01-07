; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_action_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_action_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_trap_item = type { i32 }
%struct.genl_info = type { i32, i32* }

@DEVLINK_ATTR_TRAP_ACTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Invalid trap action\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, %struct.devlink_trap_item*, %struct.genl_info*)* @devlink_trap_action_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_trap_action_set(%struct.devlink* %0, %struct.devlink_trap_item* %1, %struct.genl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca %struct.devlink_trap_item*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store %struct.devlink_trap_item* %1, %struct.devlink_trap_item** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @DEVLINK_ATTR_TRAP_ACTION, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %20 = call i32 @devlink_trap_action_get_from_info(%struct.genl_info* %19, i32* %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @NL_SET_ERR_MSG_MOD(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.devlink*, %struct.devlink** %5, align 8
  %32 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @__devlink_trap_action_set(%struct.devlink* %31, %struct.devlink_trap_item* %32, i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %23, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @devlink_trap_action_get_from_info(%struct.genl_info*, i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @__devlink_trap_action_set(%struct.devlink*, %struct.devlink_trap_item*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
