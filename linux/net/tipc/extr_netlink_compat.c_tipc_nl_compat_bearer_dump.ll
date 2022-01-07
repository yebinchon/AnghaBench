; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_bearer_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c_tipc_nl_compat_bearer_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_msg = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_BEARER_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_TLV_BEARER_NAME = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_msg*, %struct.nlattr**)* @tipc_nl_compat_bearer_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_nl_compat_bearer_dump(%struct.tipc_nl_compat_msg* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_msg*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tipc_nl_compat_msg* %0, %struct.tipc_nl_compat_msg** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %10 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %16 = load i64, i64* @TIPC_NLA_BEARER, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

23:                                               ; preds = %2
  %24 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @TIPC_NLA_BEARER, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %24, %struct.nlattr* %28, i32* null, i32* null)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

34:                                               ; preds = %23
  %35 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %36 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TIPC_TLV_BEARER_NAME, align 4
  %39 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i32 @nla_data(%struct.nlattr* %41)
  %43 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @nla_len(%struct.nlattr* %45)
  %47 = call i32 @tipc_add_tlv(i32 %37, i32 %38, i32 %42, i32 %46)
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %34, %32, %20
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #2

declare dso_local i32 @tipc_add_tlv(i32, i32, i32, i32) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
