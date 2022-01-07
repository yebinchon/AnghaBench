; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_reload.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, %struct.devlink** }
%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink*, i32)*, i32 (%struct.devlink*, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"resources size validation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_reload(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 1
  %10 = load %struct.devlink**, %struct.devlink*** %9, align 8
  %11 = getelementptr inbounds %struct.devlink*, %struct.devlink** %10, i64 0
  %12 = load %struct.devlink*, %struct.devlink** %11, align 8
  store %struct.devlink* %12, %struct.devlink** %6, align 8
  %13 = load %struct.devlink*, %struct.devlink** %6, align 8
  %14 = call i32 @devlink_reload_supported(%struct.devlink* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.devlink*, %struct.devlink** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = call i32 @devlink_resources_validate(%struct.devlink* %20, i32* null, %struct.genl_info* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @NL_SET_ERR_MSG_MOD(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %19
  %32 = load %struct.devlink*, %struct.devlink** %6, align 8
  %33 = getelementptr inbounds %struct.devlink, %struct.devlink* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.devlink*, i32)*, i32 (%struct.devlink*, i32)** %35, align 8
  %37 = load %struct.devlink*, %struct.devlink** %6, align 8
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %36(%struct.devlink* %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %31
  %47 = load %struct.devlink*, %struct.devlink** %6, align 8
  %48 = getelementptr inbounds %struct.devlink, %struct.devlink* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.devlink*, i32)*, i32 (%struct.devlink*, i32)** %50, align 8
  %52 = load %struct.devlink*, %struct.devlink** %6, align 8
  %53 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %54 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %51(%struct.devlink* %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.devlink*, %struct.devlink** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @devlink_reload_failed_set(%struct.devlink* %57, i32 %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %46, %44, %25, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @devlink_reload_supported(%struct.devlink*) #1

declare dso_local i32 @devlink_resources_validate(%struct.devlink*, i32*, %struct.genl_info*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @devlink_reload_failed_set(%struct.devlink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
