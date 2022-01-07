; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_occ_max_clear_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_occ_max_clear_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.devlink_sb** }
%struct.devlink_sb = type { i32, %struct.devlink_ops* }
%struct.devlink_ops = type { i32 (%struct.devlink_sb*, i32)* }
%struct.devlink = type { i32, %struct.devlink_ops* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_occ_max_clear_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_occ_max_clear_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_sb*, align 8
  %8 = alloca %struct.devlink_ops*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load %struct.devlink_sb**, %struct.devlink_sb*** %10, align 8
  %12 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %11, i64 0
  %13 = load %struct.devlink_sb*, %struct.devlink_sb** %12, align 8
  %14 = bitcast %struct.devlink_sb* %13 to %struct.devlink*
  store %struct.devlink* %14, %struct.devlink** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load %struct.devlink_sb**, %struct.devlink_sb*** %16, align 8
  %18 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %17, i64 1
  %19 = load %struct.devlink_sb*, %struct.devlink_sb** %18, align 8
  store %struct.devlink_sb* %19, %struct.devlink_sb** %7, align 8
  %20 = load %struct.devlink*, %struct.devlink** %6, align 8
  %21 = getelementptr inbounds %struct.devlink, %struct.devlink* %20, i32 0, i32 1
  %22 = load %struct.devlink_ops*, %struct.devlink_ops** %21, align 8
  store %struct.devlink_ops* %22, %struct.devlink_ops** %8, align 8
  %23 = load %struct.devlink_ops*, %struct.devlink_ops** %8, align 8
  %24 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.devlink_sb*, i32)*, i32 (%struct.devlink_sb*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.devlink_sb*, i32)* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.devlink_ops*, %struct.devlink_ops** %8, align 8
  %29 = getelementptr inbounds %struct.devlink_ops, %struct.devlink_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.devlink_sb*, i32)*, i32 (%struct.devlink_sb*, i32)** %29, align 8
  %31 = load %struct.devlink*, %struct.devlink** %6, align 8
  %32 = bitcast %struct.devlink* %31 to %struct.devlink_sb*
  %33 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %34 = getelementptr inbounds %struct.devlink_sb, %struct.devlink_sb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %30(%struct.devlink_sb* %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
