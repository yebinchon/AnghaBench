; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c___tipc_nl_add_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c___tipc_nl_add_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_nl_msg = type { i32, i32, i32 }
%struct.tipc_link = type { %struct.TYPE_2__, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nlattr = type { i32 }

@tipc_genl_family = common dso_local global i32 0, align 4
@TIPC_NL_LINK_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TIPC_NLA_LINK = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_NAME = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_DEST = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_MTU = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_RX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_TX = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_UP = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_ACTIVE = common dso_local global i32 0, align 4
@TIPC_NLA_LINK_PROP = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_PRIO = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_TOL = common dso_local global i32 0, align 4
@TIPC_NLA_PROP_WIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tipc_nl_add_link(%struct.net* %0, %struct.tipc_nl_msg* %1, %struct.tipc_link* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tipc_nl_msg*, align 8
  %8 = alloca %struct.tipc_link*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.tipc_nl_msg* %1, %struct.tipc_nl_msg** %7, align 8
  store %struct.tipc_link* %2, %struct.tipc_link** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = call i32 @tipc_own_addr(%struct.net* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %18 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %21 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %24 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @TIPC_NL_LINK_GET, align 4
  %28 = call i8* @genlmsg_put(i32 %19, i32 %22, i32 %25, i32* @tipc_genl_family, i32 %26, i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %225

34:                                               ; preds = %4
  %35 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %36 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TIPC_NLA_LINK, align 4
  %39 = call %struct.nlattr* @nla_nest_start_noflag(i32 %37, i32 %38)
  store %struct.nlattr* %39, %struct.nlattr** %11, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %217

43:                                               ; preds = %34
  %44 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %45 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TIPC_NLA_LINK_NAME, align 4
  %48 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %49 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_string(i32 %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %211

54:                                               ; preds = %43
  %55 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %56 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TIPC_NLA_LINK_DEST, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @tipc_cluster_mask(i32 %59)
  %61 = call i64 @nla_put_u32(i32 %57, i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %211

64:                                               ; preds = %54
  %65 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %66 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TIPC_NLA_LINK_MTU, align 4
  %69 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %70 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @nla_put_u32(i32 %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %211

75:                                               ; preds = %64
  %76 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %77 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TIPC_NLA_LINK_RX, align 4
  %80 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %81 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @nla_put_u32(i32 %78, i32 %79, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %211

87:                                               ; preds = %75
  %88 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %89 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TIPC_NLA_LINK_TX, align 4
  %92 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %93 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @nla_put_u32(i32 %90, i32 %91, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %211

99:                                               ; preds = %87
  %100 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %101 = call i64 @tipc_link_is_up(%struct.tipc_link* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %105 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TIPC_NLA_LINK_UP, align 4
  %108 = call i64 @nla_put_flag(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %211

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %99
  %113 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %114 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %119 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TIPC_NLA_LINK_ACTIVE, align 4
  %122 = call i64 @nla_put_flag(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %211

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %112
  %127 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %128 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @TIPC_NLA_LINK_PROP, align 4
  %131 = call %struct.nlattr* @nla_nest_start_noflag(i32 %129, i32 %130)
  store %struct.nlattr* %131, %struct.nlattr** %12, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %133 = icmp ne %struct.nlattr* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %211

135:                                              ; preds = %126
  %136 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %137 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TIPC_NLA_PROP_PRIO, align 4
  %140 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %141 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @nla_put_u32(i32 %138, i32 %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %205

146:                                              ; preds = %135
  %147 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %148 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @TIPC_NLA_PROP_TOL, align 4
  %151 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %152 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @nla_put_u32(i32 %149, i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %205

157:                                              ; preds = %146
  %158 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %159 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TIPC_NLA_PROP_WIN, align 4
  %162 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %163 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @nla_put_u32(i32 %160, i32 %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %205

168:                                              ; preds = %157
  %169 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %170 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @TIPC_NLA_PROP_PRIO, align 4
  %173 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %174 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @nla_put_u32(i32 %171, i32 %172, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %205

179:                                              ; preds = %168
  %180 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %181 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %184 = call i32 @nla_nest_end(i32 %182, %struct.nlattr* %183)
  %185 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %186 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.tipc_link*, %struct.tipc_link** %8, align 8
  %189 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %188, i32 0, i32 0
  %190 = call i32 @__tipc_nl_add_stats(i32 %187, %struct.TYPE_2__* %189)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %179
  br label %211

194:                                              ; preds = %179
  %195 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %196 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %199 = call i32 @nla_nest_end(i32 %197, %struct.nlattr* %198)
  %200 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %201 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %13, align 8
  %204 = call i32 @genlmsg_end(i32 %202, i8* %203)
  store i32 0, i32* %5, align 4
  br label %225

205:                                              ; preds = %178, %167, %156, %145
  %206 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %207 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %210 = call i32 @nla_nest_cancel(i32 %208, %struct.nlattr* %209)
  br label %211

211:                                              ; preds = %205, %193, %134, %124, %110, %98, %86, %74, %63, %53
  %212 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %213 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %216 = call i32 @nla_nest_cancel(i32 %214, %struct.nlattr* %215)
  br label %217

217:                                              ; preds = %211, %42
  %218 = load %struct.tipc_nl_msg*, %struct.tipc_nl_msg** %7, align 8
  %219 = getelementptr inbounds %struct.tipc_nl_msg, %struct.tipc_nl_msg* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i8*, i8** %13, align 8
  %222 = call i32 @genlmsg_cancel(i32 %220, i8* %221)
  %223 = load i32, i32* @EMSGSIZE, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %217, %194, %31
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(i32, i32) #1

declare dso_local i64 @nla_put_string(i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(i32, i32, i32) #1

declare dso_local i32 @tipc_cluster_mask(i32) #1

declare dso_local i64 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i64 @nla_put_flag(i32, i32) #1

declare dso_local i32 @nla_nest_end(i32, %struct.nlattr*) #1

declare dso_local i32 @__tipc_nl_add_stats(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @nla_nest_cancel(i32, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
