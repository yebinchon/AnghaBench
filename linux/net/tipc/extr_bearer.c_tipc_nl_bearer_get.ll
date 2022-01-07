; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_nl_bearer_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_nl_bearer_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, i32* }
%struct.tipc_bearer = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, %struct.sk_buff* }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_BEARER_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_bearer_policy = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER_NAME = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_bearer_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tipc_bearer*, align 8
  %10 = alloca %struct.tipc_nl_msg, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = call %struct.net* @genl_info_net(%struct.genl_info* %20)
  store %struct.net* %21, %struct.net** %13, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 3
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
  store i32 1, i32* %14, align 4
  br label %106

32:                                               ; preds = %2
  %33 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @TIPC_NLA_BEARER, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @tipc_nl_bearer_policy, align 4
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %19, i32 %33, i32 %39, i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %106

49:                                               ; preds = %32
  %50 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %106

57:                                               ; preds = %49
  %58 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nla_data(%struct.nlattr* %60)
  store i8* %61, i8** %7, align 8
  %62 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.sk_buff* @nlmsg_new(i32 %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %8, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %106

70:                                               ; preds = %57
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %10, i32 0, i32 2
  store %struct.sk_buff* %71, %struct.sk_buff** %72, align 8
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %10, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %78 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %10, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = call i32 (...) @rtnl_lock()
  %82 = load %struct.net*, %struct.net** %13, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call %struct.tipc_bearer* @tipc_bearer_find(%struct.net* %82, i8* %83)
  store %struct.tipc_bearer* %84, %struct.tipc_bearer** %9, align 8
  %85 = load %struct.tipc_bearer*, %struct.tipc_bearer** %9, align 8
  %86 = icmp ne %struct.tipc_bearer* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %70
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %101

90:                                               ; preds = %70
  %91 = load %struct.tipc_bearer*, %struct.tipc_bearer** %9, align 8
  %92 = call i32 @__tipc_nl_add_bearer(%struct.tipc_nl_msg* %10, %struct.tipc_bearer* %91, i32 0)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %101

96:                                               ; preds = %90
  %97 = call i32 (...) @rtnl_unlock()
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %100 = call i32 @genlmsg_reply(%struct.sk_buff* %98, %struct.genl_info* %99)
  store i32 %100, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %106

101:                                              ; preds = %95, %87
  %102 = call i32 (...) @rtnl_unlock()
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = call i32 @nlmsg_free(%struct.sk_buff* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %106

106:                                              ; preds = %101, %96, %67, %54, %47, %29
  %107 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.tipc_bearer* @tipc_bearer_find(%struct.net*, i8*) #2

declare dso_local i32 @__tipc_nl_add_bearer(%struct.tipc_nl_msg*, %struct.tipc_bearer*, i32) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
