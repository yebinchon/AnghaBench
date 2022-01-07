; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_bearer_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c___tipc_nl_bearer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32* }
%struct.tipc_bearer = type { i8*, %struct.TYPE_2__*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@TIPC_NLA_BEARER_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_bearer_policy = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER_NAME = common dso_local global i64 0, align 8
@TIPC_NLA_BEARER_PROP = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_PRIO = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_WIN = common dso_local global i64 0, align 8
@TIPC_NLA_PROP_MTU = common dso_local global i64 0, align 8
@TIPC_MEDIA_TYPE_UDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tipc_nl_bearer_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.tipc_bearer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %9, align 8
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @TIPC_NLA_BEARER, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %154

34:                                               ; preds = %2
  %35 = load i32, i32* @TIPC_NLA_BEARER_MAX, align 4
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @TIPC_NLA_BEARER, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @tipc_nl_bearer_policy, align 4
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %19, i32 %35, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %154

51:                                               ; preds = %34
  %52 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %154

59:                                               ; preds = %51
  %60 = load i64, i64* @TIPC_NLA_BEARER_NAME, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i8* @nla_data(%struct.nlattr* %62)
  store i8* %63, i8** %10, align 8
  %64 = load %struct.net*, %struct.net** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call %struct.tipc_bearer* @tipc_bearer_find(%struct.net* %64, i8* %65)
  store %struct.tipc_bearer* %66, %struct.tipc_bearer** %6, align 8
  %67 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %68 = icmp ne %struct.tipc_bearer* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %154

72:                                               ; preds = %59
  %73 = load i64, i64* @TIPC_NLA_BEARER_PROP, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %153

77:                                               ; preds = %72
  %78 = load i32, i32* @TIPC_NLA_PROP_MAX, align 4
  %79 = add nsw i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %13, align 8
  %82 = alloca %struct.nlattr*, i64 %80, align 16
  store i64 %80, i64* %14, align 8
  %83 = load i64, i64* @TIPC_NLA_BEARER_PROP, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = call i32 @tipc_nl_parse_link_prop(%struct.nlattr* %85, %struct.nlattr** %82)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %149

91:                                               ; preds = %77
  %92 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i8* @nla_get_u32(%struct.nlattr* %99)
  %101 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %102 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.net*, %struct.net** %9, align 8
  %104 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %105 = load i64, i64* @TIPC_NLA_PROP_TOL, align 8
  %106 = call i32 @tipc_node_apply_property(%struct.net* %103, %struct.tipc_bearer* %104, i64 %105)
  br label %107

107:                                              ; preds = %96, %91
  %108 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = icmp ne %struct.nlattr* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i64, i64* @TIPC_NLA_PROP_PRIO, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = call i8* @nla_get_u32(%struct.nlattr* %115)
  %117 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %118 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %112, %107
  %120 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = icmp ne %struct.nlattr* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i64, i64* @TIPC_NLA_PROP_WIN, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i8* @nla_get_u32(%struct.nlattr* %127)
  %129 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %130 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %124, %119
  %132 = load i64, i64* @TIPC_NLA_PROP_MTU, align 8
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = icmp ne %struct.nlattr* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  %137 = load %struct.tipc_bearer*, %struct.tipc_bearer** %6, align 8
  %138 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TIPC_MEDIA_TYPE_UDP, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %149

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %131
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %148, %144, %89
  %150 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %12, align 4
  switch i32 %151, label %154 [
    i32 0, label %152
  ]

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152, %72
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %154

154:                                              ; preds = %153, %149, %69, %56, %49, %31
  %155 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.net* @sock_net(i32) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, i32, i32, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tipc_bearer* @tipc_bearer_find(%struct.net*, i8*) #2

declare dso_local i32 @tipc_nl_parse_link_prop(%struct.nlattr*, %struct.nlattr**) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @tipc_node_apply_property(%struct.net*, %struct.tipc_bearer*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
