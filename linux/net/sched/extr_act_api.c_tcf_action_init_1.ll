; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_init_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_init_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_ops = type { i32 (%struct.net.0*, %struct.nlattr.1*, %struct.nlattr.1*, %struct.tc_action.2**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack.3*)*, i32 }
%struct.net.0 = type opaque
%struct.nlattr.1 = type opaque
%struct.tc_action.2 = type opaque
%struct.netlink_ext_ack.3 = type opaque
%struct.tc_cookie = type { %struct.tc_cookie* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@TCA_ACT_MAX = common dso_local global i32 0, align 4
@tcf_action_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"TC action kind must be specified\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TC action name too long\00", align 1
@TCA_ACT_COOKIE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"No memory to generate TC cookie\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to load TC action module\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@TCA_ACT_OPTIONS = common dso_local global i64 0, align 8
@ACT_P_CREATED = common dso_local global i32 0, align 4
@TC_ACT_GOTO_CHAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"can't use goto chain with NULL chain\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tc_action* @tcf_action_init_1(%struct.net* %0, %struct.tcf_proto* %1, %struct.nlattr* %2, %struct.nlattr* %3, i8* %4, i32 %5, i32 %6, i32 %7, %struct.netlink_ext_ack* %8) #0 {
  %10 = alloca %struct.tc_action*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.tcf_proto*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.netlink_ext_ack*, align 8
  %20 = alloca %struct.tc_action*, align 8
  %21 = alloca %struct.tc_action_ops*, align 8
  %22 = alloca %struct.tc_cookie*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.nlattr*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.nlattr* %3, %struct.nlattr** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  store %struct.tc_cookie* null, %struct.tc_cookie** %22, align 8
  %29 = load i32, i32* @IFNAMSIZ, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  %33 = load i32, i32* @TCA_ACT_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %25, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %84

39:                                               ; preds = %9
  %40 = load i32, i32* @TCA_ACT_MAX, align 4
  %41 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %42 = load i32, i32* @tcf_action_policy, align 4
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %44 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %36, i32 %40, %struct.nlattr* %41, i32 %42, %struct.netlink_ext_ack* %43)
  store i32 %44, i32* %27, align 4
  %45 = load i32, i32* %27, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %201

48:                                               ; preds = %39
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %27, align 4
  %51 = load i64, i64* @TCA_ACT_KIND, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  store %struct.nlattr* %53, %struct.nlattr** %26, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %58 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %201

59:                                               ; preds = %48
  %60 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %61 = load i32, i32* @IFNAMSIZ, align 4
  %62 = call i32 @nla_strlcpy(i8* %32, %struct.nlattr* %60, i32 %61)
  %63 = load i32, i32* @IFNAMSIZ, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %67 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %201

68:                                               ; preds = %59
  %69 = load i64, i64* @TCA_ACT_COOKIE, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp ne %struct.nlattr* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = call %struct.tc_cookie* @nla_memdup_cookie(%struct.nlattr** %36)
  store %struct.tc_cookie* %74, %struct.tc_cookie** %22, align 8
  %75 = load %struct.tc_cookie*, %struct.tc_cookie** %22, align 8
  %76 = icmp ne %struct.tc_cookie* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %79 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %27, align 4
  br label %201

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %68
  br label %96

84:                                               ; preds = %9
  %85 = load i8*, i8** %15, align 8
  %86 = load i32, i32* @IFNAMSIZ, align 4
  %87 = call i32 @strlcpy(i8* %32, i8* %85, i32 %86)
  %88 = load i32, i32* @IFNAMSIZ, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %92 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %27, align 4
  br label %201

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %83
  %97 = call %struct.tc_action_ops* @tc_lookup_action_n(i8* %32)
  store %struct.tc_action_ops* %97, %struct.tc_action_ops** %21, align 8
  %98 = load %struct.tc_action_ops*, %struct.tc_action_ops** %21, align 8
  %99 = icmp eq %struct.tc_action_ops* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %102 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %27, align 4
  br label %201

105:                                              ; preds = %96
  %106 = load i8*, i8** %15, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load %struct.tc_action_ops*, %struct.tc_action_ops** %21, align 8
  %110 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %109, i32 0, i32 0
  %111 = load i32 (%struct.net.0*, %struct.nlattr.1*, %struct.nlattr.1*, %struct.tc_action.2**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack.3*)*, i32 (%struct.net.0*, %struct.nlattr.1*, %struct.nlattr.1*, %struct.tc_action.2**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack.3*)** %110, align 8
  %112 = load %struct.net*, %struct.net** %11, align 8
  %113 = bitcast %struct.net* %112 to %struct.net.0*
  %114 = load i64, i64* @TCA_ACT_OPTIONS, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = bitcast %struct.nlattr* %116 to %struct.nlattr.1*
  %118 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %119 = bitcast %struct.nlattr* %118 to %struct.nlattr.1*
  %120 = bitcast %struct.tc_action** %20 to %struct.tc_action.2**
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %125 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %126 = bitcast %struct.netlink_ext_ack* %125 to %struct.netlink_ext_ack.3*
  %127 = call i32 %111(%struct.net.0* %113, %struct.nlattr.1* %117, %struct.nlattr.1* %119, %struct.tc_action.2** %120, i32 %121, i32 %122, i32 %123, %struct.tcf_proto* %124, %struct.netlink_ext_ack.3* %126)
  store i32 %127, i32* %27, align 4
  br label %146

128:                                              ; preds = %105
  %129 = load %struct.tc_action_ops*, %struct.tc_action_ops** %21, align 8
  %130 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %129, i32 0, i32 0
  %131 = load i32 (%struct.net.0*, %struct.nlattr.1*, %struct.nlattr.1*, %struct.tc_action.2**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack.3*)*, i32 (%struct.net.0*, %struct.nlattr.1*, %struct.nlattr.1*, %struct.tc_action.2**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack.3*)** %130, align 8
  %132 = load %struct.net*, %struct.net** %11, align 8
  %133 = bitcast %struct.net* %132 to %struct.net.0*
  %134 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %135 = bitcast %struct.nlattr* %134 to %struct.nlattr.1*
  %136 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %137 = bitcast %struct.nlattr* %136 to %struct.nlattr.1*
  %138 = bitcast %struct.tc_action** %20 to %struct.tc_action.2**
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.tcf_proto*, %struct.tcf_proto** %12, align 8
  %143 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %144 = bitcast %struct.netlink_ext_ack* %143 to %struct.netlink_ext_ack.3*
  %145 = call i32 %131(%struct.net.0* %133, %struct.nlattr.1* %135, %struct.nlattr.1* %137, %struct.tc_action.2** %138, i32 %139, i32 %140, i32 %141, %struct.tcf_proto* %142, %struct.netlink_ext_ack.3* %144)
  store i32 %145, i32* %27, align 4
  br label %146

146:                                              ; preds = %128, %108
  %147 = load i32, i32* %27, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %196

150:                                              ; preds = %146
  %151 = load i8*, i8** %15, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %150
  %154 = load i64, i64* @TCA_ACT_COOKIE, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.tc_action*, %struct.tc_action** %20, align 8
  %160 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %159, i32 0, i32 2
  %161 = load %struct.tc_cookie*, %struct.tc_cookie** %22, align 8
  %162 = call i32 @tcf_set_action_cookie(i32* %160, %struct.tc_cookie* %161)
  br label %163

163:                                              ; preds = %158, %153, %150
  %164 = load i32, i32* %27, align 4
  %165 = load i32, i32* @ACT_P_CREATED, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.tc_action_ops*, %struct.tc_action_ops** %21, align 8
  %169 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @module_put(i32 %170)
  br label %172

172:                                              ; preds = %167, %163
  %173 = load %struct.tc_action*, %struct.tc_action** %20, align 8
  %174 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @TC_ACT_GOTO_CHAIN, align 4
  %177 = call i64 @TC_ACT_EXT_CMP(i32 %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %172
  %180 = load %struct.tc_action*, %struct.tc_action** %20, align 8
  %181 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @rcu_access_pointer(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %179
  %186 = load %struct.tc_action*, %struct.tc_action** %20, align 8
  %187 = load i32, i32* %17, align 4
  %188 = call i32 @tcf_action_destroy_1(%struct.tc_action* %186, i32 %187)
  %189 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %190 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  %193 = call %struct.tc_action* @ERR_PTR(i32 %192)
  store %struct.tc_action* %193, %struct.tc_action** %10, align 8
  store i32 1, i32* %28, align 4
  br label %214

194:                                              ; preds = %179, %172
  %195 = load %struct.tc_action*, %struct.tc_action** %20, align 8
  store %struct.tc_action* %195, %struct.tc_action** %10, align 8
  store i32 1, i32* %28, align 4
  br label %214

196:                                              ; preds = %149
  %197 = load %struct.tc_action_ops*, %struct.tc_action_ops** %21, align 8
  %198 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @module_put(i32 %199)
  br label %201

201:                                              ; preds = %196, %100, %90, %77, %65, %56, %47
  %202 = load %struct.tc_cookie*, %struct.tc_cookie** %22, align 8
  %203 = icmp ne %struct.tc_cookie* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load %struct.tc_cookie*, %struct.tc_cookie** %22, align 8
  %206 = getelementptr inbounds %struct.tc_cookie, %struct.tc_cookie* %205, i32 0, i32 0
  %207 = load %struct.tc_cookie*, %struct.tc_cookie** %206, align 8
  %208 = call i32 @kfree(%struct.tc_cookie* %207)
  %209 = load %struct.tc_cookie*, %struct.tc_cookie** %22, align 8
  %210 = call i32 @kfree(%struct.tc_cookie* %209)
  br label %211

211:                                              ; preds = %204, %201
  %212 = load i32, i32* %27, align 4
  %213 = call %struct.tc_action* @ERR_PTR(i32 %212)
  store %struct.tc_action* %213, %struct.tc_action** %10, align 8
  store i32 1, i32* %28, align 4
  br label %214

214:                                              ; preds = %211, %194, %185
  %215 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  ret %struct.tc_action* %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #2

declare dso_local %struct.tc_cookie* @nla_memdup_cookie(%struct.nlattr**) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local %struct.tc_action_ops* @tc_lookup_action_n(i8*) #2

declare dso_local i32 @tcf_set_action_cookie(i32*, %struct.tc_cookie*) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local i64 @TC_ACT_EXT_CMP(i32, i32) #2

declare dso_local i32 @rcu_access_pointer(i32) #2

declare dso_local i32 @tcf_action_destroy_1(%struct.tc_action*, i32) #2

declare dso_local %struct.tc_action* @ERR_PTR(i32) #2

declare dso_local i32 @kfree(%struct.tc_cookie*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
