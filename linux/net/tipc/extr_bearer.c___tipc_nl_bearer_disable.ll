; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_bearer_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_bearer_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.tipc_bearer = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_BEARER_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_bearer_policy = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tipc_nl_bearer_disable(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tipc_bearer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca %struct.nlattr*, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %11, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @TIPC_NLA_BEARER, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

32:                                               ; preds = %2
  %33 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @TIPC_NLA_BEARER, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @tipc_nl_bearer_policy, align 4
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %17, i32 %33, i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

49:                                               ; preds = %32
  %50 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nla_data(%struct.nlattr* %60)
  store i8* %61, i8** %7, align 8
  %62 = load %struct.net*, %struct.net** %11, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call %struct.tipc_bearer* @tipc_bearer_find(%struct.net* %62, i8* %63)
  store %struct.tipc_bearer* %64, %struct.tipc_bearer** %8, align 8
  %65 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %66 = icmp ne %struct.tipc_bearer* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

70:                                               ; preds = %57
  %71 = load %struct.net*, %struct.net** %11, align 8
  %72 = load %struct.tipc_bearer*, %struct.tipc_bearer** %8, align 8
  %73 = call i32 @bearer_disable(%struct.net* %71, %struct.tipc_bearer* %72)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %67, %54, %47, %29
  %75 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @sock_net(i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tipc_bearer* @tipc_bearer_find(%struct.net*, i8*) #2

declare dso_local i32 @bearer_disable(%struct.net*, %struct.tipc_bearer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
