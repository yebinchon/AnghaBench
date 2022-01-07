; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk_publ.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c___tipc_nl_add_sk_publ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.publication = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_PUBL_GET = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL_KEY = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL_TYPE = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL_LOWER = common dso_local global i32 0, align 4
@TIPC_NLA_PUBL_UPPER = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.publication*)* @__tipc_nl_add_sk_publ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_sk_publ(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.publication* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.publication*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %6, align 8
  store %struct.publication* %2, %struct.publication** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %13 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @NETLINK_CB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NLM_F_MULTI, align 4
  %25 = load i32, i32* @TIPC_NL_PUBL_GET, align 4
  %26 = call i8* @genlmsg_put(%struct.sk_buff* %11, i32 %18, i32 %23, i32* @tipc_genl_family, i32 %24, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %88

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* @TIPC_NLA_PUBL, align 4
  %33 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %31, i32 %32)
  store %struct.nlattr* %33, %struct.nlattr** %9, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %84

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @TIPC_NLA_PUBL_KEY, align 4
  %40 = load %struct.publication*, %struct.publication** %7, align 8
  %41 = getelementptr inbounds %struct.publication, %struct.publication* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %38, i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %80

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = load i32, i32* @TIPC_NLA_PUBL_TYPE, align 4
  %49 = load %struct.publication*, %struct.publication** %7, align 8
  %50 = getelementptr inbounds %struct.publication, %struct.publication* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %80

55:                                               ; preds = %46
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* @TIPC_NLA_PUBL_LOWER, align 4
  %58 = load %struct.publication*, %struct.publication** %7, align 8
  %59 = getelementptr inbounds %struct.publication, %struct.publication* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %80

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* @TIPC_NLA_PUBL_UPPER, align 4
  %67 = load %struct.publication*, %struct.publication** %7, align 8
  %68 = getelementptr inbounds %struct.publication, %struct.publication* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @nla_put_u32(%struct.sk_buff* %65, i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %80

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %76 = call i32 @nla_nest_end(%struct.sk_buff* %74, %struct.nlattr* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @genlmsg_end(%struct.sk_buff* %77, i8* %78)
  store i32 0, i32* %4, align 4
  br label %91

80:                                               ; preds = %72, %63, %54, %45
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %83 = call i32 @nla_nest_cancel(%struct.sk_buff* %81, %struct.nlattr* %82)
  br label %84

84:                                               ; preds = %80, %36
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @genlmsg_cancel(%struct.sk_buff* %85, i8* %86)
  br label %88

88:                                               ; preds = %84, %29
  %89 = load i32, i32* @EMSGSIZE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %73
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
