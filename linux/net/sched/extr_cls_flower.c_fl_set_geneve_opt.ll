; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_geneve_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_set_geneve_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.fl_flow_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.netlink_ext_ack = type { i32 }
%struct.geneve_opt = type { i32, i32, i32, i32, i64, i64, i64 }

@TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_OPTS_GENEVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Non-geneve option type for mask\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@geneve_opt_policy = common dso_local global i32 0, align 4
@TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE = common dso_local global i64 0, align 8
@TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Missing tunnel key geneve option class, type or data\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Tunnel key geneve option data is less than 4 bytes long\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Tunnel key geneve option data is not a multiple of 4 bytes long\00", align 1
@FLOW_DIS_TUN_OPTS_MAX = common dso_local global i32 0, align 4
@IP_TUNNEL_OPTS_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Tunnel options exceeds max size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.fl_flow_key*, i32, i32, %struct.netlink_ext_ack*)* @fl_set_geneve_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_set_geneve_opt(%struct.nlattr* %0, %struct.fl_flow_key* %1, i32 %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.fl_flow_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.geneve_opt*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.fl_flow_key* %1, %struct.fl_flow_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %22 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  store %struct.nlattr* null, %struct.nlattr** %14, align 8
  store %struct.nlattr* null, %struct.nlattr** %15, align 8
  store %struct.nlattr* null, %struct.nlattr** %16, align 8
  store i32 0, i32* %19, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 40
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 40
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %19, align 4
  br label %35

35:                                               ; preds = %30, %5
  %36 = load %struct.fl_flow_key*, %struct.fl_flow_key** %8, align 8
  %37 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.fl_flow_key*, %struct.fl_flow_key** %8, align 8
  %41 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = bitcast i32* %44 to %struct.geneve_opt*
  store %struct.geneve_opt* %45, %struct.geneve_opt** %17, align 8
  %46 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @memset(%struct.geneve_opt* %46, i32 255, i32 %47)
  %49 = load i32, i32* %19, align 4
  %50 = sdiv i32 %49, 4
  %51 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %52 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %54 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %56 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %58 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %35
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 40, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

66:                                               ; preds = %35
  %67 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %68 = call i64 @nla_type(%struct.nlattr* %67)
  %69 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPTS_GENEVE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %73 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

76:                                               ; preds = %66
  %77 = load i32, i32* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX, align 4
  %78 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %79 = load i32, i32* @geneve_opt_policy, align 4
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %81 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %26, i32 %77, %struct.nlattr* %78, i32 %79, %struct.netlink_ext_ack* %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

86:                                               ; preds = %76
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA, align 8
  %101 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %100
  %102 = load %struct.nlattr*, %struct.nlattr** %101, align 8
  %103 = icmp ne %struct.nlattr* %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %99, %94, %89
  %105 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %106 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %105, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

109:                                              ; preds = %99, %86
  %110 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA, align 8
  %111 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %110
  %112 = load %struct.nlattr*, %struct.nlattr** %111, align 8
  %113 = icmp ne %struct.nlattr* %112, null
  br i1 %113, label %114, label %174

114:                                              ; preds = %109
  %115 = load %struct.fl_flow_key*, %struct.fl_flow_key** %8, align 8
  %116 = getelementptr inbounds %struct.fl_flow_key, %struct.fl_flow_key* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %21, align 4
  %120 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  store %struct.nlattr* %122, %struct.nlattr** %16, align 8
  %123 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %124 = call i32 @nla_len(%struct.nlattr* %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %129 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %128, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @ERANGE, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

132:                                              ; preds = %114
  %133 = load i32, i32* %19, align 4
  %134 = srem i32 %133, 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %138 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %137, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* @ERANGE, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

141:                                              ; preds = %132
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 40, %143
  %145 = load i32, i32* %21, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* @FLOW_DIS_TUN_OPTS_MAX, align 4
  %150 = load i32, i32* @IP_TUNNEL_OPTS_MAX, align 4
  %151 = icmp ne i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @BUILD_BUG_ON(i32 %152)
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* @FLOW_DIS_TUN_OPTS_MAX, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %141
  %158 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %159 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i32, i32* @ERANGE, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

162:                                              ; preds = %141
  %163 = load i32, i32* %19, align 4
  %164 = sdiv i32 %163, 4
  %165 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %166 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %168 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %171 = call i32 @nla_data(%struct.nlattr* %170)
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @memcpy(i32 %169, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %162, %109
  %175 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS, align 8
  %176 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %175
  %177 = load %struct.nlattr*, %struct.nlattr** %176, align 8
  %178 = icmp ne %struct.nlattr* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_CLASS, align 8
  %181 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %180
  %182 = load %struct.nlattr*, %struct.nlattr** %181, align 8
  store %struct.nlattr* %182, %struct.nlattr** %14, align 8
  %183 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %184 = call i32 @nla_get_be16(%struct.nlattr* %183)
  %185 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %186 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %179, %174
  %188 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE, align 8
  %189 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %188
  %190 = load %struct.nlattr*, %struct.nlattr** %189, align 8
  %191 = icmp ne %struct.nlattr* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load i64, i64* @TCA_FLOWER_KEY_ENC_OPT_GENEVE_TYPE, align 8
  %194 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %193
  %195 = load %struct.nlattr*, %struct.nlattr** %194, align 8
  store %struct.nlattr* %195, %struct.nlattr** %15, align 8
  %196 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %197 = call i32 @nla_get_u8(%struct.nlattr* %196)
  %198 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %199 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %192, %187
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = add i64 40, %202
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %205

205:                                              ; preds = %200, %157, %136, %127, %104, %84, %71, %61
  %206 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.geneve_opt*, i32, i32) #2

declare dso_local i64 @nla_type(%struct.nlattr*) #2

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
