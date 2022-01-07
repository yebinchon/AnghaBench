; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_pool_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_pool_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.devlink_sb** }
%struct.devlink_sb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.devlink = type { %struct.TYPE_2__* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_SB_POOL_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_pool_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_pool_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_sb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 2
  %13 = load %struct.devlink_sb**, %struct.devlink_sb*** %12, align 8
  %14 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %13, i64 0
  %15 = load %struct.devlink_sb*, %struct.devlink_sb** %14, align 8
  %16 = bitcast %struct.devlink_sb* %15 to %struct.devlink*
  store %struct.devlink* %16, %struct.devlink** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 2
  %19 = load %struct.devlink_sb**, %struct.devlink_sb*** %18, align 8
  %20 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %19, i64 1
  %21 = load %struct.devlink_sb*, %struct.devlink_sb** %20, align 8
  store %struct.devlink_sb* %21, %struct.devlink_sb** %7, align 8
  %22 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = call i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb* %22, %struct.genl_info* %23, i32* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %2
  %30 = load %struct.devlink*, %struct.devlink** %6, align 8
  %31 = getelementptr inbounds %struct.devlink, %struct.devlink* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %29
  %40 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.sk_buff* @nlmsg_new(i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.devlink*, %struct.devlink** %6, align 8
  %51 = bitcast %struct.devlink* %50 to %struct.devlink_sb*
  %52 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DEVLINK_CMD_SB_POOL_NEW, align 4
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @devlink_nl_sb_pool_fill(%struct.sk_buff* %49, %struct.devlink_sb* %51, %struct.devlink_sb* %52, i32 %53, i32 %54, i32 %57, i32 %60, i32 0)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = call i32 @nlmsg_free(%struct.sk_buff* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %72

68:                                               ; preds = %48
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = call i32 @genlmsg_reply(%struct.sk_buff* %69, %struct.genl_info* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %64, %45, %36, %27
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb*, %struct.genl_info*, i32*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_sb_pool_fill(%struct.sk_buff*, %struct.devlink_sb*, %struct.devlink_sb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
