; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_ctrl_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_ctrl_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32, i32, i32, i32, i32, i32, %struct.genl_multicast_group*, i64, %struct.genl_ops*, i32, i32 }
%struct.genl_multicast_group = type { i32 }
%struct.genl_ops = type { i32, i32, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@genl_ctrl = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_NAME = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_ID = common dso_local global i32 0, align 4
@CTRL_ATTR_VERSION = common dso_local global i32 0, align 4
@CTRL_ATTR_HDRSIZE = common dso_local global i32 0, align 4
@CTRL_ATTR_MAXATTR = common dso_local global i32 0, align 4
@CTRL_ATTR_OPS = common dso_local global i32 0, align 4
@GENL_CMD_CAP_DUMP = common dso_local global i32 0, align 4
@GENL_CMD_CAP_DO = common dso_local global i32 0, align 4
@GENL_CMD_CAP_HASPOL = common dso_local global i32 0, align 4
@CTRL_ATTR_OP_ID = common dso_local global i32 0, align 4
@CTRL_ATTR_OP_FLAGS = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GROUPS = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GRP_ID = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GRP_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_family*, i32, i32, i32, %struct.sk_buff*, i32)* @ctrl_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_fill_info(%struct.genl_family* %0, i32 %1, i32 %2, i32 %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.genl_family*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.genl_ops*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.nlattr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.nlattr*, align 8
  %23 = alloca %struct.genl_multicast_group*, align 8
  store %struct.genl_family* %0, %struct.genl_family** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i8* @genlmsg_put(%struct.sk_buff* %24, i32 %25, i32 %26, i32* @genl_ctrl, i32 %27, i32 %28)
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %236

33:                                               ; preds = %6
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = load i32, i32* @CTRL_ATTR_FAMILY_NAME, align 4
  %36 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %37 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_put_string(%struct.sk_buff* %34, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %43 = load i32, i32* @CTRL_ATTR_FAMILY_ID, align 4
  %44 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %45 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @nla_put_u16(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = load i32, i32* @CTRL_ATTR_VERSION, align 4
  %52 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %53 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @nla_put_u32(%struct.sk_buff* %50, i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = load i32, i32* @CTRL_ATTR_HDRSIZE, align 4
  %60 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %61 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = load i32, i32* @CTRL_ATTR_MAXATTR, align 4
  %68 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %69 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @nla_put_u32(%struct.sk_buff* %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65, %57, %49, %41, %33
  br label %230

74:                                               ; preds = %65
  %75 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %76 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %163

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load i32, i32* @CTRL_ATTR_OPS, align 4
  %82 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %80, i32 %81)
  store %struct.nlattr* %82, %struct.nlattr** %15, align 8
  %83 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %84 = icmp eq %struct.nlattr* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %230

86:                                               ; preds = %79
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %156, %86
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %90 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %159

93:                                               ; preds = %87
  %94 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %95 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %94, i32 0, i32 8
  %96 = load %struct.genl_ops*, %struct.genl_ops** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %96, i64 %98
  store %struct.genl_ops* %99, %struct.genl_ops** %18, align 8
  %100 = load %struct.genl_ops*, %struct.genl_ops** %18, align 8
  %101 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %19, align 4
  %103 = load %struct.genl_ops*, %struct.genl_ops** %18, align 8
  %104 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %93
  %108 = load i32, i32* @GENL_CMD_CAP_DUMP, align 4
  %109 = load i32, i32* %19, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %107, %93
  %112 = load %struct.genl_ops*, %struct.genl_ops** %18, align 8
  %113 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @GENL_CMD_CAP_DO, align 4
  %118 = load i32, i32* %19, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %122 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @GENL_CMD_CAP_HASPOL, align 4
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  %133 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %130, i32 %132)
  store %struct.nlattr* %133, %struct.nlattr** %17, align 8
  %134 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %135 = icmp eq %struct.nlattr* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %230

137:                                              ; preds = %129
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load i32, i32* @CTRL_ATTR_OP_ID, align 4
  %140 = load %struct.genl_ops*, %struct.genl_ops** %18, align 8
  %141 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @nla_put_u32(%struct.sk_buff* %138, i32 %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %137
  %146 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %147 = load i32, i32* @CTRL_ATTR_OP_FLAGS, align 4
  %148 = load i32, i32* %19, align 4
  %149 = call i64 @nla_put_u32(%struct.sk_buff* %146, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145, %137
  br label %230

152:                                              ; preds = %145
  %153 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %155 = call i32 @nla_nest_end(%struct.sk_buff* %153, %struct.nlattr* %154)
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %87

159:                                              ; preds = %87
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %162 = call i32 @nla_nest_end(%struct.sk_buff* %160, %struct.nlattr* %161)
  br label %163

163:                                              ; preds = %159, %74
  %164 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %165 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %226

168:                                              ; preds = %163
  %169 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %170 = load i32, i32* @CTRL_ATTR_MCAST_GROUPS, align 4
  %171 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %169, i32 %170)
  store %struct.nlattr* %171, %struct.nlattr** %20, align 8
  %172 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %173 = icmp eq %struct.nlattr* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %230

175:                                              ; preds = %168
  store i32 0, i32* %21, align 4
  br label %176

176:                                              ; preds = %219, %175
  %177 = load i32, i32* %21, align 4
  %178 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %179 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %222

182:                                              ; preds = %176
  %183 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %184 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %183, i32 0, i32 6
  %185 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %184, align 8
  %186 = load i32, i32* %21, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %185, i64 %187
  store %struct.genl_multicast_group* %188, %struct.genl_multicast_group** %23, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %190 = load i32, i32* %21, align 4
  %191 = add nsw i32 %190, 1
  %192 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %189, i32 %191)
  store %struct.nlattr* %192, %struct.nlattr** %22, align 8
  %193 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %194 = icmp eq %struct.nlattr* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %182
  br label %230

196:                                              ; preds = %182
  %197 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %198 = load i32, i32* @CTRL_ATTR_MCAST_GRP_ID, align 4
  %199 = load %struct.genl_family*, %struct.genl_family** %8, align 8
  %200 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %21, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i64 @nla_put_u32(%struct.sk_buff* %197, i32 %198, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %196
  %207 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %208 = load i32, i32* @CTRL_ATTR_MCAST_GRP_NAME, align 4
  %209 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %23, align 8
  %210 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @nla_put_string(%struct.sk_buff* %207, i32 %208, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206, %196
  br label %230

215:                                              ; preds = %206
  %216 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %217 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %218 = call i32 @nla_nest_end(%struct.sk_buff* %216, %struct.nlattr* %217)
  br label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %21, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %21, align 4
  br label %176

222:                                              ; preds = %176
  %223 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %224 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %225 = call i32 @nla_nest_end(%struct.sk_buff* %223, %struct.nlattr* %224)
  br label %226

226:                                              ; preds = %222, %163
  %227 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %228 = load i8*, i8** %14, align 8
  %229 = call i32 @genlmsg_end(%struct.sk_buff* %227, i8* %228)
  store i32 0, i32* %7, align 4
  br label %236

230:                                              ; preds = %214, %195, %174, %151, %136, %85, %73
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = call i32 @genlmsg_cancel(%struct.sk_buff* %231, i8* %232)
  %234 = load i32, i32* @EMSGSIZE, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %230, %226, %32
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
