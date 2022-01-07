; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_nl_add_bc_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_nl_add_bc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tipc_net = type { %struct.tipc_link* }
%struct.tipc_link = type { i32, i32, i32 }

@tipc_net_id = common dso_local global i32 0, align 4
@tipc_genl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@TIPC_NL_LINK_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_LINK = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_UP = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_BROADCAST = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_NAME = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_RX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_TX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_PROP = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_WIN = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_BROADCAST = common dso_local global i32 0, align 4
@BCLINK_MODE_SEL = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_BROADCAST_RATIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nl_add_bc_link(%struct.net* %0, %struct.tipc_nl_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tipc_nl_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.tipc_net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tipc_link*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %5, align 8
  %14 = load %struct.net*, %struct.net** %4, align 8
  %15 = load i32, i32* @tipc_net_id, align 4
  %16 = call %struct.tipc_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.tipc_net* %16, %struct.tipc_net** %10, align 8
  %17 = load %struct.net*, %struct.net** %4, align 8
  %18 = call i32 @tipc_bcast_get_broadcast_mode(%struct.net* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.net*, %struct.net** %4, align 8
  %20 = call i32 @tipc_bcast_get_broadcast_ratio(%struct.net* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.tipc_net*, %struct.tipc_net** %10, align 8
  %22 = getelementptr inbounds %struct.tipc_net, %struct.tipc_net* %21, i32 0, i32 0
  %23 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  store %struct.tipc_link* %23, %struct.tipc_link** %13, align 8
  %24 = load %struct.tipc_link*, %struct.tipc_link** %13, align 8
  %25 = icmp ne %struct.tipc_link* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %195

27:                                               ; preds = %2
  %28 = load %struct.net*, %struct.net** %4, align 8
  %29 = call i32 @tipc_bcast_lock(%struct.net* %28)
  %30 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %34 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %37 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NLM_F_MULTI, align 4
  %40 = load i32, i32* @TIPC_NL_LINK_GET, align 4
  %41 = call i8* @genlmsg_put(i32 %32, i32 %35, i32 %38, i32* @tipc_genl_family, i32 %39, i32 %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %27
  %45 = load %struct.net*, %struct.net** %4, align 8
  %46 = call i32 @tipc_bcast_unlock(%struct.net* %45)
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %195

49:                                               ; preds = %27
  %50 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %51 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TIPC_NLA_LINK, align 4
  %54 = call %struct.nlattr* @nla_nest_start_noflag(i32 %52, i32 %53)
  store %struct.nlattr* %54, %struct.nlattr** %8, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %185

58:                                               ; preds = %49
  %59 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %60 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TIPC_NLA_LINK_UP, align 4
  %63 = call i64 @nla_put_flag(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %179

66:                                               ; preds = %58
  %67 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %68 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TIPC_NLA_LINK_BROADCAST, align 4
  %71 = call i64 @nla_put_flag(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %179

74:                                               ; preds = %66
  %75 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %76 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TIPC_NLA_LINK_NAME, align 4
  %79 = load %struct.tipc_link*, %struct.tipc_link** %13, align 8
  %80 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @nla_put_string(i32 %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %179

85:                                               ; preds = %74
  %86 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %87 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TIPC_NLA_LINK_RX, align 4
  %90 = call i64 @nla_put_u32(i32 %88, i32 %89, i32 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %179

93:                                               ; preds = %85
  %94 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %95 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TIPC_NLA_LINK_TX, align 4
  %98 = call i64 @nla_put_u32(i32 %96, i32 %97, i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %179

101:                                              ; preds = %93
  %102 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %103 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TIPC_NLA_LINK_PROP, align 4
  %106 = call %struct.nlattr* @nla_nest_start_noflag(i32 %104, i32 %105)
  store %struct.nlattr* %106, %struct.nlattr** %9, align 8
  %107 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %179

110:                                              ; preds = %101
  %111 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %112 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TIPC_NLA_PROP_WIN, align 4
  %115 = load %struct.tipc_link*, %struct.tipc_link** %13, align 8
  %116 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @nla_put_u32(i32 %113, i32 %114, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %173

121:                                              ; preds = %110
  %122 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %123 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @TIPC_NLA_PROP_BROADCAST, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i64 @nla_put_u32(i32 %124, i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %173

130:                                              ; preds = %121
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @BCLINK_MODE_SEL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %137 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TIPC_NLA_PROP_BROADCAST_RATIO, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i64 @nla_put_u32(i32 %138, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %173

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %130
  %146 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %147 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %150 = call i32 @nla_nest_end(i32 %148, %struct.nlattr* %149)
  %151 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %152 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.tipc_link*, %struct.tipc_link** %13, align 8
  %155 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %154, i32 0, i32 1
  %156 = call i32 @__tipc_nl_add_bc_link_stat(i32 %153, i32* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %145
  br label %179

160:                                              ; preds = %145
  %161 = load %struct.net*, %struct.net** %4, align 8
  %162 = call i32 @tipc_bcast_unlock(%struct.net* %161)
  %163 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %164 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %167 = call i32 @nla_nest_end(i32 %165, %struct.nlattr* %166)
  %168 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %169 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @genlmsg_end(i32 %170, i8* %171)
  store i32 0, i32* %3, align 4
  br label %195

173:                                              ; preds = %143, %129, %120
  %174 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %175 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %178 = call i32 @nla_nest_cancel(i32 %176, %struct.nlattr* %177)
  br label %179

179:                                              ; preds = %173, %159, %109, %100, %92, %84, %73, %65
  %180 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %181 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %184 = call i32 @nla_nest_cancel(i32 %182, %struct.nlattr* %183)
  br label %185

185:                                              ; preds = %179, %57
  %186 = load %struct.net*, %struct.net** %4, align 8
  %187 = call i32 @tipc_bcast_unlock(%struct.net* %186)
  %188 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %5, align 8
  %189 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @genlmsg_cancel(i32 %190, i8* %191)
  %193 = load i32, i32* @EMSGSIZE, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %185, %160, %44, %26
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.tipc_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @tipc_bcast_get_broadcast_mode(%struct.net*) #1

declare dso_local i32 @tipc_bcast_get_broadcast_ratio(%struct.net*) #1

declare dso_local i32 @tipc_bcast_lock(%struct.net*) #1

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @tipc_bcast_unlock(%struct.net*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @nla_put_flag(i32, i32) #1

declare dso_local i64 @nla_put_string(i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @__tipc_nl_add_bc_link_stat(i32, i32*) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
