; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_headers_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_headers_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32, i32, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_dpipe_headers = type { i32, i32* }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_HEADERS = common dso_local global i32 0, align 4
@NLMSG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i32, i32, %struct.devlink_dpipe_headers*)* @devlink_dpipe_headers_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_headers_fill(%struct.genl_info* %0, i32 %1, i32 %2, %struct.devlink_dpipe_headers* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.devlink_dpipe_headers*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.devlink_dpipe_headers* %3, %struct.devlink_dpipe_headers** %9, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load %struct.devlink**, %struct.devlink*** %19, align 8
  %21 = getelementptr inbounds %struct.devlink*, %struct.devlink** %20, i64 0
  %22 = load %struct.devlink*, %struct.devlink** %21, align 8
  store %struct.devlink* %22, %struct.devlink** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %103, %4
  %24 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %25 = call i32 @devlink_dpipe_send_and_alloc_skb(%struct.sk_buff** %12, %struct.genl_info* %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %5, align 4
  br label %139

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NLM_F_MULTI, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @genlmsg_put(%struct.sk_buff* %31, i32 %34, i32 %37, i32* @devlink_nl_family, i32 %38, i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = call i32 @nlmsg_free(%struct.sk_buff* %44)
  %46 = load i32, i32* @EMSGSIZE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %139

48:                                               ; preds = %30
  %49 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %50 = load %struct.devlink*, %struct.devlink** %10, align 8
  %51 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %49, %struct.devlink* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %132

54:                                               ; preds = %48
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = load i32, i32* @DEVLINK_ATTR_DPIPE_HEADERS, align 4
  %57 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %55, i32 %56)
  store %struct.nlattr* %57, %struct.nlattr** %11, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %132

61:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.devlink_dpipe_headers*, %struct.devlink_dpipe_headers** %9, align 8
  %65 = getelementptr inbounds %struct.devlink_dpipe_headers, %struct.devlink_dpipe_headers* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = load %struct.devlink_dpipe_headers*, %struct.devlink_dpipe_headers** %9, align 8
  %71 = getelementptr inbounds %struct.devlink_dpipe_headers, %struct.devlink_dpipe_headers* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @devlink_dpipe_header_put(%struct.sk_buff* %69, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %135

84:                                               ; preds = %80
  br label %91

85:                                               ; preds = %68
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %62

91:                                               ; preds = %84, %62
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %94 = call i32 @nla_nest_end(%struct.sk_buff* %92, %struct.nlattr* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @genlmsg_end(%struct.sk_buff* %95, i8* %96)
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.devlink_dpipe_headers*, %struct.devlink_dpipe_headers** %9, align 8
  %100 = getelementptr inbounds %struct.devlink_dpipe_headers, %struct.devlink_dpipe_headers* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %23

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %127, %104
  %106 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %107 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %108 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %111 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NLMSG_DONE, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @NLM_F_MULTI, align 4
  %116 = or i32 %114, %115
  %117 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %106, i32 %109, i32 %112, i32 %113, i32 0, i32 %116)
  store %struct.nlmsghdr* %117, %struct.nlmsghdr** %13, align 8
  %118 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %119 = icmp ne %struct.nlmsghdr* %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %105
  %121 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %122 = call i32 @devlink_dpipe_send_and_alloc_skb(%struct.sk_buff** %12, %struct.genl_info* %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %17, align 4
  store i32 %126, i32* %5, align 4
  br label %139

127:                                              ; preds = %120
  br label %105

128:                                              ; preds = %105
  %129 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %130 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %131 = call i32 @genlmsg_reply(%struct.sk_buff* %129, %struct.genl_info* %130)
  store i32 %131, i32* %5, align 4
  br label %139

132:                                              ; preds = %60, %53
  %133 = load i32, i32* @EMSGSIZE, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %132, %83
  %136 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %137 = call i32 @nlmsg_free(%struct.sk_buff* %136)
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %128, %125, %43, %28
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @devlink_dpipe_send_and_alloc_skb(%struct.sk_buff**, %struct.genl_info*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @devlink_dpipe_header_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
