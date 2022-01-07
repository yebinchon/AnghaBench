; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c___tipc_nl_compat_publ_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_netlink_compat.c___tipc_nl_compat_publ_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_compat_msg = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_PUBL_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL_TYPE = common dso_local global i64 0, align 8
@TIPC_NLA_PUBL_LOWER = common dso_local global i64 0, align 8
@TIPC_NLA_PUBL_UPPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" {%u,%u}\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" {%u,%u,%u}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_nl_compat_msg*, %struct.nlattr**)* @__tipc_nl_compat_publ_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_compat_publ_dump(%struct.tipc_nl_compat_msg* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_compat_msg*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tipc_nl_compat_msg* %0, %struct.tipc_nl_compat_msg** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %13 = load i32, i32* @TIPC_NLA_PUBL_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load i64, i64* @TIPC_NLA_PUBL, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

26:                                               ; preds = %2
  %27 = load i32, i32* @TIPC_NLA_PUBL_MAX, align 4
  %28 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %29 = load i64, i64* @TIPC_NLA_PUBL, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %27, %struct.nlattr* %31, i32* null, i32* null)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

37:                                               ; preds = %26
  %38 = load i64, i64* @TIPC_NLA_PUBL_TYPE, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i64 @nla_get_u32(%struct.nlattr* %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* @TIPC_NLA_PUBL_LOWER, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i64 @nla_get_u32(%struct.nlattr* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* @TIPC_NLA_PUBL_UPPER, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i64 @nla_get_u32(%struct.nlattr* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %55 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 (i32, i8*, i64, i64, ...) @tipc_tlv_sprintf(i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %58)
  br label %68

60:                                               ; preds = %37
  %61 = load %struct.tipc_nl_compat_msg*, %struct.tipc_nl_compat_msg** %4, align 8
  %62 = getelementptr inbounds %struct.tipc_nl_compat_msg, %struct.tipc_nl_compat_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 (i32, i8*, i64, i64, ...) @tipc_tlv_sprintf(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %60, %53
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %35, %23
  %70 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32*, i32*) #2

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_tlv_sprintf(i32, i8*, i64, i64, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
