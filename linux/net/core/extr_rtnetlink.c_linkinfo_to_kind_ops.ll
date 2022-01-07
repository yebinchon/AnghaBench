; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_linkinfo_to_kind_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_linkinfo_to_kind_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link_ops = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_INFO_MAX = common dso_local global i32 0, align 4
@ifla_info_policy = common dso_local global i32 0, align 4
@IFLA_INFO_KIND = common dso_local global i64 0, align 8
@MODULE_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtnl_link_ops* (%struct.nlattr*)* @linkinfo_to_kind_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtnl_link_ops* @linkinfo_to_kind_ops(%struct.nlattr* %0) #0 {
  %2 = alloca %struct.rtnl_link_ops*, align 8
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.rtnl_link_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store %struct.rtnl_link_ops* null, %struct.rtnl_link_ops** %4, align 8
  %10 = load i32, i32* @IFLA_INFO_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @IFLA_INFO_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %17 = load i32, i32* @ifla_info_policy, align 4
  %18 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32 %17, i32* null)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.rtnl_link_ops* null, %struct.rtnl_link_ops** %2, align 8
  store i32 1, i32* %7, align 4
  br label %40

21:                                               ; preds = %1
  %22 = load i64, i64* @IFLA_INFO_KIND, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32, i32* @MODULE_NAME_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load i64, i64* @IFLA_INFO_KIND, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = trunc i64 %28 to i32
  %35 = call i32 @nla_strlcpy(i8* %30, %struct.nlattr* %33, i32 %34)
  %36 = call %struct.rtnl_link_ops* @rtnl_link_ops_get(i8* %30)
  store %struct.rtnl_link_ops* %36, %struct.rtnl_link_ops** %4, align 8
  %37 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %37)
  br label %38

38:                                               ; preds = %26, %21
  %39 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  store %struct.rtnl_link_ops* %39, %struct.rtnl_link_ops** %2, align 8
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %20
  %41 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %2, align 8
  ret %struct.rtnl_link_ops* %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #2

declare dso_local %struct.rtnl_link_ops* @rtnl_link_ops_get(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
