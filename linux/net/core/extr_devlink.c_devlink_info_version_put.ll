; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_info_version_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_info_version_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_info_req = type { i32 }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_INFO_VERSION_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_INFO_VERSION_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_info_req*, i32, i8*, i8*)* @devlink_info_version_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_info_version_put(%struct.devlink_info_req* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_info_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  store %struct.devlink_info_req* %0, %struct.devlink_info_req** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %13 = getelementptr inbounds %struct.devlink_info_req, %struct.devlink_info_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(i32 %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %10, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %24 = getelementptr inbounds %struct.devlink_info_req, %struct.devlink_info_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DEVLINK_ATTR_INFO_VERSION_NAME, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @nla_put_string(i32 %25, i32 %26, i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %34 = getelementptr inbounds %struct.devlink_info_req, %struct.devlink_info_req* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DEVLINK_ATTR_INFO_VERSION_VALUE, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @nla_put_string(i32 %35, i32 %36, i8* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %48

42:                                               ; preds = %32
  %43 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %44 = getelementptr inbounds %struct.devlink_info_req, %struct.devlink_info_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %47 = call i32 @nla_nest_end(i32 %45, %struct.nlattr* %46)
  store i32 0, i32* %5, align 4
  br label %55

48:                                               ; preds = %41, %31
  %49 = load %struct.devlink_info_req*, %struct.devlink_info_req** %6, align 8
  %50 = getelementptr inbounds %struct.devlink_info_req, %struct.devlink_info_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %53 = call i32 @nla_nest_cancel(i32 %51, %struct.nlattr* %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %48, %42, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i32 @nla_put_string(i32, i32, i8*) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
