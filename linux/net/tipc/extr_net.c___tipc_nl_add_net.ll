; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_net.c___tipc_nl_add_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_net.c___tipc_nl_add_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.tipc_net = type { i32, i32* }
%struct.nlattr = type { i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_NET_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_NET = common dso_local global i32 0, align 4
@TIPC_NLA_NET_ID = common dso_local global i32 0, align 4
@TIPC_NLA_NET_NODEID = common dso_local global i32 0, align 4
@TIPC_NLA_NET_NODEID_W1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tipc_nl_msg*)* @__tipc_nl_add_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_net(%struct.net* %0, %struct.tipc_nl_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tipc_nl_msg*, align 8
  %6 = alloca %struct.tipc_net*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %5, align 8
  %11 = load %struct.net*, %struct.net** %4, align 8
  %12 = load i32, i32* @tipc_net_id, align 4
  %13 = call %struct.tipc_net* @net_generic(%struct.net* %11, i32 %12)
  store %struct.tipc_net* %13, %struct.tipc_net** %6, align 8
  %14 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %15 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32* %17, i32** %7, align 8
  %18 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %19 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %23 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %26 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %29 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NLM_F_MULTI, align 4
  %32 = load i32, i32* @TIPC_NL_NET_GET, align 4
  %33 = call i8* @genlmsg_put(i32 %24, i32 %27, i32 %30, i32* @tipc_genl_family, i32 %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %104

39:                                               ; preds = %2
  %40 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %41 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TIPC_NLA_NET, align 4
  %44 = call %struct.nlattr* @nla_nest_start_noflag(i32 %42, i32 %43)
  store %struct.nlattr* %44, %struct.nlattr** %9, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %96

48:                                               ; preds = %39
  %49 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %50 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TIPC_NLA_NET_ID, align 4
  %53 = load %struct.tipc_net*, %struct.tipc_net** %6, align 8
  %54 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @nla_put_u32(i32 %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %90

59:                                               ; preds = %48
  %60 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %61 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TIPC_NLA_NET_NODEID, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_u64_64bit(i32 %62, i32 %63, i32 %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %90

69:                                               ; preds = %59
  %70 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %71 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TIPC_NLA_NET_NODEID_W1, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @nla_put_u64_64bit(i32 %72, i32 %73, i32 %75, i32 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %90

79:                                               ; preds = %69
  %80 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %81 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %84 = call i32 @nla_nest_end(i32 %82, %struct.nlattr* %83)
  %85 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %86 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @genlmsg_end(i32 %87, i8* %88)
  store i32 0, i32* %3, align 4
  br label %104

90:                                               ; preds = %78, %68, %58
  %91 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %92 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %95 = call i32 @nla_nest_cancel(i32 %93, %struct.nlattr* %94)
  br label %96

96:                                               ; preds = %90, %47
  %97 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %98 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @genlmsg_cancel(i32 %99, i8* %100)
  %102 = load i32, i32* @EMSGSIZE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %79, %36
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(i32, i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
