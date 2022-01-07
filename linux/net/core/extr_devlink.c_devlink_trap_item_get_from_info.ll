; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_item_get_from_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_trap_item_get_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_trap_item = type { i32 }
%struct.devlink = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_TRAP_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.devlink_trap_item* (%struct.devlink*, %struct.genl_info*)* @devlink_trap_item_get_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.devlink_trap_item* @devlink_trap_item_get_from_info(%struct.devlink* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.devlink_trap_item*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 0
  %9 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %10 = load i64, i64* @DEVLINK_ATTR_TRAP_NAME, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.devlink_trap_item* null, %struct.devlink_trap_item** %3, align 8
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  %19 = load i64, i64* @DEVLINK_ATTR_TRAP_NAME, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  store %struct.nlattr* %21, %struct.nlattr** %6, align 8
  %22 = load %struct.devlink*, %struct.devlink** %4, align 8
  %23 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %24 = call i32 @nla_data(%struct.nlattr* %23)
  %25 = call %struct.devlink_trap_item* @devlink_trap_item_lookup(%struct.devlink* %22, i32 %24)
  store %struct.devlink_trap_item* %25, %struct.devlink_trap_item** %3, align 8
  br label %26

26:                                               ; preds = %15, %14
  %27 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %3, align 8
  ret %struct.devlink_trap_item* %27
}

declare dso_local %struct.devlink_trap_item* @devlink_trap_item_lookup(%struct.devlink*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
