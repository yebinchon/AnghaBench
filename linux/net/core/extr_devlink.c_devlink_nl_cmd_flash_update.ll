; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_flash_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_flash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, %struct.nlattr**, %struct.devlink** }
%struct.nlattr = type { i32 }
%struct.devlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink*, i8*, i8*, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEVLINK_ATTR_FLASH_UPDATE_FILE_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_ATTR_FLASH_UPDATE_COMPONENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_flash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_flash_update(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 2
  %12 = load %struct.devlink**, %struct.devlink*** %11, align 8
  %13 = getelementptr inbounds %struct.devlink*, %struct.devlink** %12, i64 0
  %14 = load %struct.devlink*, %struct.devlink** %13, align 8
  store %struct.devlink* %14, %struct.devlink** %6, align 8
  %15 = load %struct.devlink*, %struct.devlink** %6, align 8
  %16 = getelementptr inbounds %struct.devlink, %struct.devlink* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.devlink*, i8*, i8*, i32)*, i32 (%struct.devlink*, i8*, i8*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.devlink*, i8*, i8*, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %69

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 1
  %27 = load %struct.nlattr**, %struct.nlattr*** %26, align 8
  %28 = load i64, i64* @DEVLINK_ATTR_FLASH_UPDATE_FILE_NAME, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %24
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 1
  %38 = load %struct.nlattr**, %struct.nlattr*** %37, align 8
  %39 = load i64, i64* @DEVLINK_ATTR_FLASH_UPDATE_FILE_NAME, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i8* @nla_data(%struct.nlattr* %41)
  store i8* %42, i8** %7, align 8
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 1
  %45 = load %struct.nlattr**, %struct.nlattr*** %44, align 8
  %46 = load i64, i64* @DEVLINK_ATTR_FLASH_UPDATE_COMPONENT, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  store %struct.nlattr* %48, %struct.nlattr** %9, align 8
  %49 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %53 = call i8* @nla_data(%struct.nlattr* %52)
  br label %55

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i8* [ %53, %51 ], [ null, %54 ]
  store i8* %56, i8** %8, align 8
  %57 = load %struct.devlink*, %struct.devlink** %6, align 8
  %58 = getelementptr inbounds %struct.devlink, %struct.devlink* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.devlink*, i8*, i8*, i32)*, i32 (%struct.devlink*, i8*, i8*, i32)** %60, align 8
  %62 = load %struct.devlink*, %struct.devlink** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %61(%struct.devlink* %62, i8* %63, i8* %64, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %55, %32, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
