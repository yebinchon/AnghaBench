; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_tc_pool_bind_set_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_tc_pool_bind_set_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32*, %struct.devlink_sb** }
%struct.devlink_sb = type { i32 }
%struct.devlink_port = type { i32 }

@DEVLINK_ATTR_SB_THRESHOLD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_tc_pool_bind_set_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_tc_pool_bind_set_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink_port*, align 8
  %7 = alloca %struct.devlink_sb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 2
  %21 = load %struct.devlink_sb**, %struct.devlink_sb*** %20, align 8
  %22 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %21, i64 1
  %23 = load %struct.devlink_sb*, %struct.devlink_sb** %22, align 8
  store %struct.devlink_sb* %23, %struct.devlink_sb** %7, align 8
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = call i32 @devlink_sb_pool_type_get_from_info(%struct.genl_info* %24, i32* %8)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %2
  %31 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @devlink_sb_tc_index_get_from_info(%struct.devlink_sb* %31, %struct.genl_info* %32, i32 %33, i32* %9)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %3, align 4
  br label %79

39:                                               ; preds = %30
  %40 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = call i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb* %40, %struct.genl_info* %41, i32* %10)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %3, align 4
  br label %79

47:                                               ; preds = %39
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @DEVLINK_ATTR_SB_THRESHOLD, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %79

58:                                               ; preds = %47
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @DEVLINK_ATTR_SB_THRESHOLD, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nla_get_u32(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.devlink_port*, %struct.devlink_port** %6, align 8
  %67 = bitcast %struct.devlink_port* %66 to %struct.devlink_sb*
  %68 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %69 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @devlink_sb_tc_pool_bind_set(%struct.devlink_sb* %67, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %58, %55, %45, %37, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @devlink_sb_pool_type_get_from_info(%struct.genl_info*, i32*) #1

declare dso_local i32 @devlink_sb_tc_index_get_from_info(%struct.devlink_sb*, %struct.genl_info*, i32, i32*) #1

declare dso_local i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb*, %struct.genl_info*, i32*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @devlink_sb_tc_pool_bind_set(%struct.devlink_sb*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
