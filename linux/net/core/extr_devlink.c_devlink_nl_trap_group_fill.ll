; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_trap_group_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_trap_group_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_trap_group_item = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_TRAP_GROUP_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_TRAP_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_trap_group_item*, i32, i32, i32, i32)* @devlink_nl_trap_group_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_trap_group_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_trap_group_item* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca %struct.devlink_trap_group_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store %struct.devlink_trap_group_item* %2, %struct.devlink_trap_group_item** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32* @devlink_nl_family, i32 %21, i32 %22)
  store i8* %23, i8** %16, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %78

29:                                               ; preds = %7
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = load %struct.devlink*, %struct.devlink** %10, align 8
  %32 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %30, %struct.devlink* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %72

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = load i32, i32* @DEVLINK_ATTR_TRAP_GROUP_NAME, align 4
  %38 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %11, align 8
  %39 = getelementptr inbounds %struct.devlink_trap_group_item, %struct.devlink_trap_group_item* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @nla_put_string(%struct.sk_buff* %36, i32 %37, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %72

46:                                               ; preds = %35
  %47 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %11, align 8
  %48 = getelementptr inbounds %struct.devlink_trap_group_item, %struct.devlink_trap_group_item* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = load i32, i32* @DEVLINK_ATTR_TRAP_GENERIC, align 4
  %56 = call i64 @nla_put_flag(%struct.sk_buff* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %72

59:                                               ; preds = %53, %46
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load %struct.devlink_trap_group_item*, %struct.devlink_trap_group_item** %11, align 8
  %62 = getelementptr inbounds %struct.devlink_trap_group_item, %struct.devlink_trap_group_item* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @devlink_trap_stats_put(%struct.sk_buff* %60, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = call i32 @genlmsg_end(%struct.sk_buff* %69, i8* %70)
  store i32 0, i32* %8, align 4
  br label %78

72:                                               ; preds = %67, %58, %45, %34
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @genlmsg_cancel(%struct.sk_buff* %73, i8* %74)
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %68, %26
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @devlink_trap_stats_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
