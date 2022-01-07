; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_port_pool_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_port_pool_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.devlink_sb** }
%struct.devlink_sb = type { %struct.devlink* }
%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.devlink_port = type { %struct.devlink* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_SB_PORT_POOL_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_port_pool_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_port_pool_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink_port*, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca %struct.devlink_sb*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 2
  %14 = load %struct.devlink_sb**, %struct.devlink_sb*** %13, align 8
  %15 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %14, i64 0
  %16 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %17 = bitcast %struct.devlink_sb* %16 to %struct.devlink_port*
  store %struct.devlink_port* %17, %struct.devlink_port** %6, align 8
  %18 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %19 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %18, i32 0, i32 0
  %20 = load %struct.devlink*, %struct.devlink** %19, align 8
  store %struct.devlink* %20, %struct.devlink** %7, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 2
  %23 = load %struct.devlink_sb**, %struct.devlink_sb*** %22, align 8
  %24 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %23, i64 1
  %25 = load %struct.devlink_sb*, %struct.devlink_sb** %24, align 8
  store %struct.devlink_sb* %25, %struct.devlink_sb** %8, align 8
  %26 = load %struct.devlink_sb*, %struct.devlink_sb** %8, align 8
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = call i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb* %26, %struct.genl_info* %27, i32* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  br label %77

33:                                               ; preds = %2
  %34 = load %struct.devlink*, %struct.devlink** %7, align 8
  %35 = getelementptr inbounds %struct.devlink, %struct.devlink* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %33
  %44 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.sk_buff* @nlmsg_new(i32 %44, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %9, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %77

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = load %struct.devlink*, %struct.devlink** %7, align 8
  %55 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %56 = bitcast %struct.devlink_port* %55 to %struct.devlink_sb*
  %57 = load %struct.devlink_sb*, %struct.devlink_sb** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @DEVLINK_CMD_SB_PORT_POOL_NEW, align 4
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @devlink_nl_sb_port_pool_fill(%struct.sk_buff* %53, %struct.devlink* %54, %struct.devlink_sb* %56, %struct.devlink_sb* %57, i32 %58, i32 %59, i32 %62, i32 %65, i32 0)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %52
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = call i32 @nlmsg_free(%struct.sk_buff* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %3, align 4
  br label %77

73:                                               ; preds = %52
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = call i32 @genlmsg_reply(%struct.sk_buff* %74, %struct.genl_info* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %69, %49, %40, %31
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb*, %struct.genl_info*, i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_sb_port_pool_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_sb*, %struct.devlink_sb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
