; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_port_pool_set_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_port_pool_set_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32*, %struct.devlink_sb** }
%struct.devlink_sb = type { i32 }
%struct.devlink_port = type { i32 }

@DEVLINK_ATTR_SB_THRESHOLD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_port_pool_set_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_port_pool_set_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink_port*, align 8
  %7 = alloca %struct.devlink_sb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 2
  %13 = load %struct.devlink_sb**, %struct.devlink_sb*** %12, align 8
  %14 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %13, i64 0
  %15 = load %struct.devlink_sb*, %struct.devlink_sb** %14, align 8
  %16 = bitcast %struct.devlink_sb* %15 to %struct.devlink_port*
  store %struct.devlink_port* %16, %struct.devlink_port** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 2
  %19 = load %struct.devlink_sb**, %struct.devlink_sb*** %18, align 8
  %20 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %19, i64 1
  %21 = load %struct.devlink_sb*, %struct.devlink_sb** %20, align 8
  store %struct.devlink_sb* %21, %struct.devlink_sb** %7, align 8
  %22 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %23 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %24 = call i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb* %22, %struct.genl_info* %23, i32* %8)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %59

29:                                               ; preds = %2
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @DEVLINK_ATTR_SB_THRESHOLD, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %59

40:                                               ; preds = %29
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @DEVLINK_ATTR_SB_THRESHOLD, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nla_get_u32(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %49 = bitcast %struct.devlink_port* %48 to %struct.devlink_sb*
  %50 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %51 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @devlink_sb_port_pool_set(%struct.devlink_sb* %49, i32 %52, i32 %53, i32 %54, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %40, %37, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb*, %struct.genl_info*, i32*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @devlink_sb_port_pool_set(%struct.devlink_sb*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
