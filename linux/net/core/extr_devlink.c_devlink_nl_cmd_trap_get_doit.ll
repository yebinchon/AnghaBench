; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_trap_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_trap_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.devlink**, %struct.netlink_ext_ack* }
%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.devlink_trap_item = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Device did not register this trap\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_TRAP_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_trap_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_trap_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca %struct.devlink_trap_item*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 3
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  store %struct.netlink_ext_ack* %13, %struct.netlink_ext_ack** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 2
  %16 = load %struct.devlink**, %struct.devlink*** %15, align 8
  %17 = getelementptr inbounds %struct.devlink*, %struct.devlink** %16, i64 0
  %18 = load %struct.devlink*, %struct.devlink** %17, align 8
  store %struct.devlink* %18, %struct.devlink** %7, align 8
  %19 = load %struct.devlink*, %struct.devlink** %7, align 8
  %20 = getelementptr inbounds %struct.devlink, %struct.devlink* %19, i32 0, i32 0
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %2
  %27 = load %struct.devlink*, %struct.devlink** %7, align 8
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = call %struct.devlink_trap_item* @devlink_trap_item_get_from_info(%struct.devlink* %27, %struct.genl_info* %28)
  store %struct.devlink_trap_item* %29, %struct.devlink_trap_item** %8, align 8
  %30 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %8, align 8
  %31 = icmp ne %struct.devlink_trap_item* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %34 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %26
  %38 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.sk_buff* @nlmsg_new(i32 %38, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %9, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load %struct.devlink*, %struct.devlink** %7, align 8
  %49 = load %struct.devlink_trap_item*, %struct.devlink_trap_item** %8, align 8
  %50 = load i32, i32* @DEVLINK_CMD_TRAP_NEW, align 4
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %55 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @devlink_nl_trap_fill(%struct.sk_buff* %47, %struct.devlink* %48, %struct.devlink_trap_item* %49, i32 %50, i32 %53, i32 %56, i32 0)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %65

61:                                               ; preds = %46
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = call i32 @genlmsg_reply(%struct.sk_buff* %62, %struct.genl_info* %63)
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = call i32 @nlmsg_free(%struct.sk_buff* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %61, %43, %32, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.devlink_trap_item* @devlink_trap_item_get_from_info(%struct.devlink*, %struct.genl_info*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_trap_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_trap_item*, i32, i32, i32, i32) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
