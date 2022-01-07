; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_type_get_from_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_type_get_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32* }

@DEVLINK_ATTR_PARAM_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_PARAM_TYPE_U8 = common dso_local global i32 0, align 4
@DEVLINK_PARAM_TYPE_U16 = common dso_local global i32 0, align 4
@DEVLINK_PARAM_TYPE_U32 = common dso_local global i32 0, align 4
@DEVLINK_PARAM_TYPE_STRING = common dso_local global i32 0, align 4
@DEVLINK_PARAM_TYPE_BOOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i32*)* @devlink_param_type_get_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_param_type_get_from_info(%struct.genl_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %7 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @DEVLINK_ATTR_PARAM_TYPE, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @DEVLINK_ATTR_PARAM_TYPE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nla_get_u8(i32 %22)
  switch i32 %23, label %39 [
    i32 128, label %24
    i32 130, label %27
    i32 129, label %30
    i32 131, label %33
    i32 132, label %36
  ]

24:                                               ; preds = %16
  %25 = load i32, i32* @DEVLINK_PARAM_TYPE_U8, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %42

27:                                               ; preds = %16
  %28 = load i32, i32* @DEVLINK_PARAM_TYPE_U16, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %42

30:                                               ; preds = %16
  %31 = load i32, i32* @DEVLINK_PARAM_TYPE_U32, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %42

33:                                               ; preds = %16
  %34 = load i32, i32* @DEVLINK_PARAM_TYPE_STRING, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %42

36:                                               ; preds = %16
  %37 = load i32, i32* @DEVLINK_PARAM_TYPE_BOOL, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %16
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %36, %33, %30, %27, %24
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @nla_get_u8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
