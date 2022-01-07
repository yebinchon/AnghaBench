; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_pool_set_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_pool_set_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32*, %struct.devlink_sb** }
%struct.devlink_sb = type { i32 }
%struct.devlink = type { i32 }

@DEVLINK_ATTR_SB_POOL_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_pool_set_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_pool_set_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_sb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 2
  %14 = load %struct.devlink_sb**, %struct.devlink_sb*** %13, align 8
  %15 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %14, i64 0
  %16 = load %struct.devlink_sb*, %struct.devlink_sb** %15, align 8
  %17 = bitcast %struct.devlink_sb* %16 to %struct.devlink*
  store %struct.devlink* %17, %struct.devlink** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load %struct.devlink_sb**, %struct.devlink_sb*** %19, align 8
  %21 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %20, i64 1
  %22 = load %struct.devlink_sb*, %struct.devlink_sb** %21, align 8
  store %struct.devlink_sb* %22, %struct.devlink_sb** %7, align 8
  %23 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = call i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb* %23, %struct.genl_info* %24, i32* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  br label %68

30:                                               ; preds = %2
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = call i32 @devlink_sb_th_type_get_from_info(%struct.genl_info* %31, i32* %8)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %30
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @DEVLINK_ATTR_SB_POOL_SIZE, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %68

48:                                               ; preds = %37
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @DEVLINK_ATTR_SB_POOL_SIZE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nla_get_u32(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.devlink*, %struct.devlink** %6, align 8
  %57 = bitcast %struct.devlink* %56 to %struct.devlink_sb*
  %58 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %59 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %65 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @devlink_sb_pool_set(%struct.devlink_sb* %57, i32 %60, i32 %61, i32 %62, i32 %63, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %48, %45, %35, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @devlink_sb_pool_index_get_from_info(%struct.devlink_sb*, %struct.genl_info*, i32*) #1

declare dso_local i32 @devlink_sb_th_type_get_from_info(%struct.genl_info*, i32*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @devlink_sb_pool_set(%struct.devlink_sb*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
