; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_tc_pool_bind_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_tc_pool_bind_get_doit.c"
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
@DEVLINK_CMD_SB_TC_POOL_BIND_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_tc_pool_bind_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_tc_pool_bind_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink_port*, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca %struct.devlink_sb*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 2
  %15 = load %struct.devlink_sb**, %struct.devlink_sb*** %14, align 8
  %16 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %15, i64 0
  %17 = load %struct.devlink_sb*, %struct.devlink_sb** %16, align 8
  %18 = bitcast %struct.devlink_sb* %17 to %struct.devlink_port*
  store %struct.devlink_port* %18, %struct.devlink_port** %6, align 8
  %19 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %20 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %19, i32 0, i32 0
  %21 = load %struct.devlink*, %struct.devlink** %20, align 8
  store %struct.devlink* %21, %struct.devlink** %7, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 2
  %24 = load %struct.devlink_sb**, %struct.devlink_sb*** %23, align 8
  %25 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %24, i64 1
  %26 = load %struct.devlink_sb*, %struct.devlink_sb** %25, align 8
  store %struct.devlink_sb* %26, %struct.devlink_sb** %8, align 8
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = call i32 @devlink_sb_pool_type_get_from_info(%struct.genl_info* %27, i32* %10)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %3, align 4
  br label %87

33:                                               ; preds = %2
  %34 = load %struct.devlink_sb*, %struct.devlink_sb** %8, align 8
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @devlink_sb_tc_index_get_from_info(%struct.devlink_sb* %34, %struct.genl_info* %35, i32 %36, i32* %11)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %3, align 4
  br label %87

42:                                               ; preds = %33
  %43 = load %struct.devlink*, %struct.devlink** %7, align 8
  %44 = getelementptr inbounds %struct.devlink, %struct.devlink* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %87

52:                                               ; preds = %42
  %53 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.sk_buff* @nlmsg_new(i32 %53, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %87

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = load %struct.devlink*, %struct.devlink** %7, align 8
  %64 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %65 = bitcast %struct.devlink_port* %64 to %struct.devlink_sb*
  %66 = load %struct.devlink_sb*, %struct.devlink_sb** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @DEVLINK_CMD_SB_TC_POOL_BIND_NEW, align 4
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @devlink_nl_sb_tc_pool_bind_fill(%struct.sk_buff* %62, %struct.devlink* %63, %struct.devlink_sb* %65, %struct.devlink_sb* %66, i32 %67, i32 %68, i32 %69, i32 %72, i32 %75, i32 0)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %61
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call i32 @nlmsg_free(%struct.sk_buff* %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %3, align 4
  br label %87

83:                                               ; preds = %61
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %86 = call i32 @genlmsg_reply(%struct.sk_buff* %84, %struct.genl_info* %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %79, %58, %49, %40, %31
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @devlink_sb_pool_type_get_from_info(%struct.genl_info*, i32*) #1

declare dso_local i32 @devlink_sb_tc_index_get_from_info(%struct.devlink_sb*, %struct.genl_info*, i32, i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_sb_tc_pool_bind_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_sb*, %struct.devlink_sb*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
