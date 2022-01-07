; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_acct.c_nfnl_acct_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { %struct.nlattr* }
%struct.nlattr = type { i8*, i8* }
%struct.nfacct_filter = type { i8*, i8* }

@NFACCT_FILTER_MAX = common dso_local global i32 0, align 4
@filter_policy = common dso_local global i32 0, align 4
@NFACCT_FILTER_MASK = common dso_local global i64 0, align 8
@NFACCT_FILTER_VALUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @nfnl_acct_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_acct_start(%struct.netlink_callback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfacct_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  %10 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %11 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %10, i32 0, i32 0
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  store %struct.nlattr* %12, %struct.nlattr** %4, align 8
  %13 = load i32, i32* @NFACCT_FILTER_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load i32, i32* @NFACCT_FILTER_MAX, align 4
  %23 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %24 = load i32, i32* @filter_policy, align 4
  %25 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %22, %struct.nlattr* %23, i32 %24, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %71

30:                                               ; preds = %21
  %31 = load i64, i64* @NFACCT_FILTER_MASK, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i64, i64* @NFACCT_FILTER_VALUE, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %71

43:                                               ; preds = %35
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.nlattr* @kzalloc(i32 16, i32 %44)
  %46 = bitcast %struct.nlattr* %45 to %struct.nfacct_filter*
  store %struct.nfacct_filter* %46, %struct.nfacct_filter** %7, align 8
  %47 = load %struct.nfacct_filter*, %struct.nfacct_filter** %7, align 8
  %48 = icmp ne %struct.nfacct_filter* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %71

52:                                               ; preds = %43
  %53 = load i64, i64* @NFACCT_FILTER_MASK, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_be32(%struct.nlattr* %55)
  %57 = call i8* @ntohl(i32 %56)
  %58 = load %struct.nfacct_filter*, %struct.nfacct_filter** %7, align 8
  %59 = getelementptr inbounds %struct.nfacct_filter, %struct.nfacct_filter* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @NFACCT_FILTER_VALUE, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i32 @nla_get_be32(%struct.nlattr* %62)
  %64 = call i8* @ntohl(i32 %63)
  %65 = load %struct.nfacct_filter*, %struct.nfacct_filter** %7, align 8
  %66 = getelementptr inbounds %struct.nfacct_filter, %struct.nfacct_filter* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.nfacct_filter*, %struct.nfacct_filter** %7, align 8
  %68 = bitcast %struct.nfacct_filter* %67 to %struct.nlattr*
  %69 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %70 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %69, i32 0, i32 0
  store %struct.nlattr* %68, %struct.nlattr** %70, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %71

71:                                               ; preds = %52, %49, %40, %28, %20
  %72 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local %struct.nlattr* @kzalloc(i32, i32) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
