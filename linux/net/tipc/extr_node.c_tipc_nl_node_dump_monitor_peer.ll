; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_dump_monitor_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_nl_node_dump_monitor_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, %struct.sk_buff* }
%struct.nlattr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TIPC_NLA_MON_MAX = common dso_local global i32 0, align 4
@TIPC_NLA_MON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tipc_nl_monitor_policy = common dso_local global i32 0, align 4
@TIPC_NLA_MON_REF = common dso_local global i64 0, align 8
@MAX_BEARERS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_node_dump_monitor_peer(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tipc_nl_msg, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %6, align 8
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %29 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %8, align 8
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %101, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @TIPC_NLA_MON_MAX, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %13, align 8
  %47 = alloca %struct.nlattr*, i64 %45, align 16
  store i64 %45, i64* %14, align 8
  %48 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %49 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @tipc_nlmsg_parse(%struct.TYPE_3__* %50, %struct.nlattr*** %12)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %97

56:                                               ; preds = %42
  %57 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %58 = load i64, i64* @TIPC_NLA_MON, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %97

65:                                               ; preds = %56
  %66 = load i32, i32* @TIPC_NLA_MON_MAX, align 4
  %67 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %68 = load i64, i64* @TIPC_NLA_MON, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = load i32, i32* @tipc_nl_monitor_policy, align 4
  %72 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %47, i32 %66, %struct.nlattr* %70, i32 %71, i32* null)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %97

77:                                               ; preds = %65
  %78 = load i64, i64* @TIPC_NLA_MON_REF, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %97

85:                                               ; preds = %77
  %86 = load i64, i64* @TIPC_NLA_MON_REF, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i8* @nla_get_u32(%struct.nlattr* %88)
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** @MAX_BEARERS, align 8
  %92 = icmp uge i8* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %97

96:                                               ; preds = %85
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %96, %93, %82, %75, %62, %54
  %98 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load i32, i32* %15, align 4
  switch i32 %99, label %153 [
    i32 0, label %100
    i32 1, label %151
  ]

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100, %2
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %151

105:                                              ; preds = %101
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %10, i32 0, i32 2
  store %struct.sk_buff* %106, %struct.sk_buff** %107, align 8
  %108 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %109 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @NETLINK_CB(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %10, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %117 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %10, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = call i32 (...) @rtnl_lock()
  %123 = load %struct.net*, %struct.net** %6, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @tipc_nl_add_monitor_peer(%struct.net* %123, %struct.tipc_nl_msg* %10, i8* %124, i8** %7)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %129

129:                                              ; preds = %128, %105
  %130 = call i32 (...) @rtnl_unlock()
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %133 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %131, i32* %135, align 4
  %136 = load i8*, i8** %7, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %139 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 %137, i32* %141, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %145 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32 %143, i32* %147, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %129, %104, %97
  %152 = load i32, i32* %3, align 4
  ret i32 %152

153:                                              ; preds = %97
  unreachable
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tipc_nlmsg_parse(%struct.TYPE_3__*, %struct.nlattr***) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @tipc_nl_add_monitor_peer(%struct.net*, %struct.tipc_nl_msg*, i8*, i8**) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
