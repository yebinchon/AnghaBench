; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_nl_add_bearer_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_nl_add_bearer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nl_msg = type { i32 }
%struct.tipc_bearer = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.udp_media_addr = type { i32 }
%struct.udp_bearer = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TIPC_NLA_BEARER_UDP_OPTS = common dso_local global i32 0, align 4
@TIPC_NLA_UDP_LOCAL = common dso_local global i32 0, align 4
@TIPC_NLA_UDP_REMOTE = common dso_local global i32 0, align 4
@TIPC_NLA_UDP_MULTI_REMOTEIP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_udp_nl_add_bearer_data(%struct.tipc_nl_msg* %0, %struct.tipc_bearer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_nl_msg*, align 8
  %5 = alloca %struct.tipc_bearer*, align 8
  %6 = alloca %struct.udp_media_addr*, align 8
  %7 = alloca %struct.udp_media_addr*, align 8
  %8 = alloca %struct.udp_bearer*, align 8
  %9 = alloca %struct.nlattr*, align 8
  store %struct.tipc_nl_msg* %0, %struct.tipc_nl_msg** %4, align 8
  store %struct.tipc_bearer* %1, %struct.tipc_bearer** %5, align 8
  %10 = load %struct.tipc_bearer*, %struct.tipc_bearer** %5, align 8
  %11 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.udp_media_addr*
  store %struct.udp_media_addr* %13, %struct.udp_media_addr** %6, align 8
  %14 = load %struct.tipc_bearer*, %struct.tipc_bearer** %5, align 8
  %15 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.udp_bearer* @rtnl_dereference(i32 %16)
  store %struct.udp_bearer* %17, %struct.udp_bearer** %8, align 8
  %18 = load %struct.udp_bearer*, %struct.udp_bearer** %8, align 8
  %19 = icmp ne %struct.udp_bearer* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %25 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TIPC_NLA_BEARER_UDP_OPTS, align 4
  %28 = call %struct.nlattr* @nla_nest_start_noflag(i32 %26, i32 %27)
  store %struct.nlattr* %28, %struct.nlattr** %9, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %75

32:                                               ; preds = %23
  %33 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %34 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.udp_media_addr*, %struct.udp_media_addr** %6, align 8
  %37 = load i32, i32* @TIPC_NLA_UDP_LOCAL, align 4
  %38 = call i64 @__tipc_nl_add_udp_addr(i32 %35, %struct.udp_media_addr* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %75

41:                                               ; preds = %32
  %42 = load %struct.tipc_bearer*, %struct.tipc_bearer** %5, align 8
  %43 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to %struct.udp_media_addr*
  store %struct.udp_media_addr* %45, %struct.udp_media_addr** %7, align 8
  %46 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %47 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.udp_media_addr*, %struct.udp_media_addr** %7, align 8
  %50 = load i32, i32* @TIPC_NLA_UDP_REMOTE, align 4
  %51 = call i64 @__tipc_nl_add_udp_addr(i32 %48, %struct.udp_media_addr* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %75

54:                                               ; preds = %41
  %55 = load %struct.udp_bearer*, %struct.udp_bearer** %8, align 8
  %56 = getelementptr inbounds %struct.udp_bearer, %struct.udp_bearer* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %54
  %61 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %62 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TIPC_NLA_UDP_MULTI_REMOTEIP, align 4
  %65 = call i64 @nla_put_flag(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %75

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %54
  %70 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %71 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %74 = call i32 @nla_nest_end(i32 %72, %struct.nlattr* %73)
  store i32 0, i32* %3, align 4
  br label %83

75:                                               ; preds = %67, %53, %40, %31
  %76 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %4, align 8
  %77 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %80 = call i32 @nla_nest_cancel(i32 %78, %struct.nlattr* %79)
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %69, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.udp_bearer* @rtnl_dereference(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @__tipc_nl_add_udp_addr(i32, %struct.udp_media_addr*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @nla_put_flag(i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
