; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_nl_media_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_nl_media_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, i32* }
%struct.tipc_nl_msg = type { i32, i32, %struct.sk_buff* }
%struct.tipc_media = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_BEARER_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_MAX = common dso_local global i32 0, align 4
@tipc_nl_media_policy = common dso_local global i32 0, align 4
@TIPC_NLA_MEDIA_NAME = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_media_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tipc_nl_msg, align 8
  %9 = alloca %struct.tipc_media*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @TIPC_NLA_MEDIA, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

29:                                               ; preds = %2
  %30 = load i32, i32* @TIPC_NLA_MEDIA_MAX, align 4
  %31 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @TIPC_NLA_MEDIA, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @tipc_nl_media_policy, align 4
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %18, i32 %30, i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

46:                                               ; preds = %29
  %47 = load i64, i64* @TIPC_NLA_MEDIA_NAME, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

54:                                               ; preds = %46
  %55 = load i64, i64* @TIPC_NLA_MEDIA_NAME, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i8* @nla_data(%struct.nlattr* %57)
  store i8* %58, i8** %7, align 8
  %59 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.sk_buff* @nlmsg_new(i32 %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %10, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

67:                                               ; preds = %54
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %8, i32 0, i32 2
  store %struct.sk_buff* %68, %struct.sk_buff** %69, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %8, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %8, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = call i32 (...) @rtnl_lock()
  %79 = load i8*, i8** %7, align 8
  %80 = call %struct.tipc_media* @tipc_media_find(i8* %79)
  store %struct.tipc_media* %80, %struct.tipc_media** %9, align 8
  %81 = load %struct.tipc_media*, %struct.tipc_media** %9, align 8
  %82 = icmp ne %struct.tipc_media* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %67
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %97

86:                                               ; preds = %67
  %87 = load %struct.tipc_media*, %struct.tipc_media** %9, align 8
  %88 = call i32 @__tipc_nl_add_media(%struct.tipc_nl_msg* %8, %struct.tipc_media* %87, i32 0)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %86
  %93 = call i32 (...) @rtnl_unlock()
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %96 = call i32 @genlmsg_reply(%struct.sk_buff* %94, %struct.genl_info* %95)
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

97:                                               ; preds = %91, %83
  %98 = call i32 (...) @rtnl_unlock()
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = call i32 @nlmsg_free(%struct.sk_buff* %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %97, %92, %64, %51, %44, %26
  %103 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.tipc_media* @tipc_media_find(i8*) #2

declare dso_local i32 @__tipc_nl_add_media(%struct.tipc_nl_msg*, %struct.tipc_media*, i32) #2

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
