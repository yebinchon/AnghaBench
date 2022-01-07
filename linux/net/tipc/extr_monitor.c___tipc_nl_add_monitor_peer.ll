; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c___tipc_nl_add_monitor_peer.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c___tipc_nl_add_monitor_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_peer = type { i64, i64, i64, i32, i32, %struct.tipc_mon_domain* }
%struct.tipc_mon_domain = type { i32, i32, i32, i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_MON_PEER_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_ADDR = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_APPLIED = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_UP = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_LOCAL = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_HEAD = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_DOMGEN = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_UPMAP = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_PAD = common dso_local global i32 0, align 4
@TIPC_NLA_MON_PEER_MEMBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_peer*, %struct.tipc_nl_msg*)* @__tipc_nl_add_monitor_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tipc_nl_add_monitor_peer(%struct.tipc_peer* %0, %struct.tipc_nl_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_peer*, align 8
  %5 = alloca %struct.tipc_nl_msg*, align 8
  %6 = alloca %struct.tipc_mon_domain*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i8*, align 8
  store %struct.tipc_peer* %0, %struct.tipc_peer** %4, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %5, align 8
  %9 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %10 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %9, i32 0, i32 5
  %11 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %10, align 8
  store %struct.tipc_mon_domain* %11, %struct.tipc_mon_domain** %6, align 8
  %12 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %13 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %16 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %19 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NLM_F_MULTI, align 4
  %22 = load i32, i32* @TIPC_NL_MON_PEER_GET, align 4
  %23 = call i8* @genlmsg_put(i32 %14, i32 %17, i32 %20, i32* @tipc_genl_family, i32 %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %170

29:                                               ; preds = %2
  %30 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TIPC_NLA_MON_PEER, align 4
  %34 = call %struct.nlattr* @nla_nest_start_noflag(i32 %32, i32 %33)
  store %struct.nlattr* %34, %struct.nlattr** %7, align 8
  %35 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %162

38:                                               ; preds = %29
  %39 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %40 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TIPC_NLA_MON_PEER_ADDR, align 4
  %43 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %44 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @nla_put_u32(i32 %41, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %156

49:                                               ; preds = %38
  %50 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %51 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TIPC_NLA_MON_PEER_APPLIED, align 4
  %54 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %55 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @nla_put_u32(i32 %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %156

60:                                               ; preds = %49
  %61 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %62 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %67 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @TIPC_NLA_MON_PEER_UP, align 4
  %70 = call i64 @nla_put_flag(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %156

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %60
  %75 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %76 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %81 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TIPC_NLA_MON_PEER_LOCAL, align 4
  %84 = call i64 @nla_put_flag(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %156

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %74
  %89 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %90 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %95 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TIPC_NLA_MON_PEER_HEAD, align 4
  %98 = call i64 @nla_put_flag(i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %156

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %6, align 8
  %104 = icmp ne %struct.tipc_mon_domain* %103, null
  br i1 %104, label %105, label %145

105:                                              ; preds = %102
  %106 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %107 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @TIPC_NLA_MON_PEER_DOMGEN, align 4
  %110 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %6, align 8
  %111 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @nla_put_u32(i32 %108, i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %156

116:                                              ; preds = %105
  %117 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %118 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TIPC_NLA_MON_PEER_UPMAP, align 4
  %121 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %6, align 8
  %122 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @TIPC_NLA_MON_PEER_PAD, align 4
  %125 = call i64 @nla_put_u64_64bit(i32 %119, i32 %120, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %156

128:                                              ; preds = %116
  %129 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %130 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TIPC_NLA_MON_PEER_MEMBERS, align 4
  %133 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %6, align 8
  %134 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %6, align 8
  %140 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %139, i32 0, i32 1
  %141 = call i64 @nla_put(i32 %131, i32 %132, i32 %138, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %128
  br label %156

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %102
  %146 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %147 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %150 = call i32 @nla_nest_end(i32 %148, %struct.nlattr* %149)
  %151 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %152 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @genlmsg_end(i32 %153, i8* %154)
  store i32 0, i32* %3, align 4
  br label %170

156:                                              ; preds = %143, %127, %115, %100, %86, %72, %59, %48
  %157 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %158 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %161 = call i32 @nla_nest_cancel(i32 %159, %struct.nlattr* %160)
  br label %162

162:                                              ; preds = %156, %37
  %163 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %164 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @genlmsg_cancel(i32 %165, i8* %166)
  %168 = load i32, i32* @EMSGSIZE, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %162, %145, %26
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(i32, i32, i32, i32) #1

declare dso_local i64 @nla_put(i32, i32, i32, i32*) #1

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
