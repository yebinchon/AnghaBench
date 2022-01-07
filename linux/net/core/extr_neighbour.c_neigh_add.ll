; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ndmsg = type { i32, i32, i32, i64 }
%struct.neigh_table = type { i32 (%struct.net_device*, %struct.netlink_ext_ack*)*, i64 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i8* }
%struct.pneigh_entry = type { i32, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE_ISROUTER = common dso_local global i32 0, align 4
@NDA_MAX = common dso_local global i32 0, align 4
@nda_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Network address not specified\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid link address\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid network address\00", align 1
@NDA_PROTOCOL = common dso_local global i64 0, align 8
@NTF_PROXY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Device not specified\00", align 1
@NLM_F_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NTF_EXT_LEARNED = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_EXT_LEARNED = common dso_local global i32 0, align 4
@NTF_ROUTER = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ISROUTER = common dso_local global i32 0, align 4
@NTF_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @neigh_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_add(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.ndmsg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.neigh_table*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.neighbour*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.pneigh_entry*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %24 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %25 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE_ISROUTER, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.net* @sock_net(i32 %31)
  store %struct.net* %32, %struct.net** %9, align 8
  %33 = load i32, i32* @NDA_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %11, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  store %struct.net_device* null, %struct.net_device** %14, align 8
  store i8* null, i8** %18, align 8
  %38 = call i32 (...) @ASSERT_RTNL()
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %40 = load i32, i32* @NDA_MAX, align 4
  %41 = load i32, i32* @nda_policy, align 4
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %43 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %39, i32 24, %struct.nlattr** %37, i32 %40, i32 %41, %struct.netlink_ext_ack* %42)
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %19, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  br label %326

47:                                               ; preds = %3
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %19, align 4
  %50 = load i64, i64* @NDA_DST, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %56 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %326

57:                                               ; preds = %47
  %58 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %59 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %58)
  store %struct.ndmsg* %59, %struct.ndmsg** %10, align 8
  %60 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %61 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %57
  %65 = load %struct.net*, %struct.net** %9, align 8
  %66 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %67 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.net_device* @__dev_get_by_index(%struct.net* %65, i64 %68)
  store %struct.net_device* %69, %struct.net_device** %14, align 8
  %70 = load %struct.net_device*, %struct.net_device** %14, align 8
  %71 = icmp eq %struct.net_device* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %19, align 4
  br label %326

75:                                               ; preds = %64
  %76 = load i64, i64* @NDA_LLADDR, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i64, i64* @NDA_LLADDR, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i32 @nla_len(%struct.nlattr* %83)
  %85 = load %struct.net_device*, %struct.net_device** %14, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %91 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %326

92:                                               ; preds = %80, %75
  br label %93

93:                                               ; preds = %92, %57
  %94 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %95 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.neigh_table* @neigh_find_table(i32 %96)
  store %struct.neigh_table* %97, %struct.neigh_table** %13, align 8
  %98 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  %99 = icmp eq %struct.neigh_table* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @EAFNOSUPPORT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %328

103:                                              ; preds = %93
  %104 = load i64, i64* @NDA_DST, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i32 @nla_len(%struct.nlattr* %106)
  %108 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  %109 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %115 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %326

116:                                              ; preds = %103
  %117 = load i64, i64* @NDA_DST, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = call i32* @nla_data(%struct.nlattr* %119)
  %121 = bitcast i32* %120 to i8*
  store i8* %121, i8** %16, align 8
  %122 = load i64, i64* @NDA_LLADDR, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = icmp ne %struct.nlattr* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i64, i64* @NDA_LLADDR, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = call i32* @nla_data(%struct.nlattr* %129)
  br label %132

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %126
  %133 = phi i32* [ %130, %126 ], [ null, %131 ]
  %134 = bitcast i32* %133 to i8*
  store i8* %134, i8** %17, align 8
  %135 = load i64, i64* @NDA_PROTOCOL, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i64, i64* @NDA_PROTOCOL, align 8
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = call i8* @nla_get_u8(%struct.nlattr* %142)
  store i8* %143, i8** %18, align 8
  br label %144

144:                                              ; preds = %139, %132
  %145 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %146 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NTF_PROXY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %144
  %152 = load i32, i32* @ENOBUFS, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %19, align 4
  %154 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  %155 = load %struct.net*, %struct.net** %9, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.net_device*, %struct.net_device** %14, align 8
  %158 = call %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table* %154, %struct.net* %155, i8* %156, %struct.net_device* %157, i32 1)
  store %struct.pneigh_entry* %158, %struct.pneigh_entry** %21, align 8
  %159 = load %struct.pneigh_entry*, %struct.pneigh_entry** %21, align 8
  %160 = icmp ne %struct.pneigh_entry* %159, null
  br i1 %160, label %161, label %174

161:                                              ; preds = %151
  %162 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %163 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.pneigh_entry*, %struct.pneigh_entry** %21, align 8
  %166 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** %18, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = load i8*, i8** %18, align 8
  %171 = load %struct.pneigh_entry*, %struct.pneigh_entry** %21, align 8
  %172 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %169, %161
  store i32 0, i32* %19, align 4
  br label %174

174:                                              ; preds = %173, %151
  br label %326

175:                                              ; preds = %144
  %176 = load %struct.net_device*, %struct.net_device** %14, align 8
  %177 = icmp ne %struct.net_device* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %180 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %326

181:                                              ; preds = %175
  %182 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  %183 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %182, i32 0, i32 0
  %184 = load i32 (%struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.netlink_ext_ack*)** %183, align 8
  %185 = icmp ne i32 (%struct.net_device*, %struct.netlink_ext_ack*)* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  %188 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %187, i32 0, i32 0
  %189 = load i32 (%struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.netlink_ext_ack*)** %188, align 8
  %190 = load %struct.net_device*, %struct.net_device** %14, align 8
  %191 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %192 = call i32 %189(%struct.net_device* %190, %struct.netlink_ext_ack* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %19, align 4
  br label %326

197:                                              ; preds = %186, %181
  %198 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  %199 = load i8*, i8** %16, align 8
  %200 = load %struct.net_device*, %struct.net_device** %14, align 8
  %201 = call %struct.neighbour* @neigh_lookup(%struct.neigh_table* %198, i8* %199, %struct.net_device* %200)
  store %struct.neighbour* %201, %struct.neighbour** %15, align 8
  %202 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %203 = icmp eq %struct.neighbour* %202, null
  br i1 %203, label %204, label %243

204:                                              ; preds = %197
  %205 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %206 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @NLM_F_CREATE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* @ENOENT, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %19, align 4
  br label %326

214:                                              ; preds = %204
  %215 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %216 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @NUD_PERMANENT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %214
  %222 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %223 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @NTF_EXT_LEARNED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br label %228

228:                                              ; preds = %221, %214
  %229 = phi i1 [ true, %214 ], [ %227, %221 ]
  %230 = zext i1 %229 to i32
  store i32 %230, i32* %22, align 4
  %231 = load %struct.neigh_table*, %struct.neigh_table** %13, align 8
  %232 = load i8*, i8** %16, align 8
  %233 = load %struct.net_device*, %struct.net_device** %14, align 8
  %234 = load i32, i32* %22, align 4
  %235 = call %struct.neighbour* @___neigh_create(%struct.neigh_table* %231, i8* %232, %struct.net_device* %233, i32 %234, i32 1)
  store %struct.neighbour* %235, %struct.neighbour** %15, align 8
  %236 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %237 = call i64 @IS_ERR(%struct.neighbour* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %228
  %240 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %241 = call i32 @PTR_ERR(%struct.neighbour* %240)
  store i32 %241, i32* %19, align 4
  br label %326

242:                                              ; preds = %228
  br label %270

243:                                              ; preds = %197
  %244 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %245 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @NLM_F_EXCL, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load i32, i32* @EEXIST, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %19, align 4
  %253 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %254 = call i32 @neigh_release(%struct.neighbour* %253)
  br label %326

255:                                              ; preds = %243
  %256 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %257 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @NLM_F_REPLACE, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %255
  %263 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %264 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE_ISROUTER, align 4
  %265 = or i32 %263, %264
  %266 = xor i32 %265, -1
  %267 = load i32, i32* %8, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %8, align 4
  br label %269

269:                                              ; preds = %262, %255
  br label %270

270:                                              ; preds = %269, %242
  %271 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %272 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @NTF_EXT_LEARNED, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load i32, i32* @NEIGH_UPDATE_F_EXT_LEARNED, align 4
  %279 = load i32, i32* %8, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %8, align 4
  br label %281

281:                                              ; preds = %277, %270
  %282 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %283 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @NTF_ROUTER, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = load i32, i32* @NEIGH_UPDATE_F_ISROUTER, align 4
  %290 = load i32, i32* %8, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %8, align 4
  br label %292

292:                                              ; preds = %288, %281
  %293 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %294 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @NTF_USE, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %292
  %300 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %301 = call i32 @neigh_event_send(%struct.neighbour* %300, i32* null)
  store i32 0, i32* %19, align 4
  br label %316

302:                                              ; preds = %292
  %303 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %304 = load i8*, i8** %17, align 8
  %305 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %306 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %8, align 4
  %309 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %310 = call i32 @NETLINK_CB(%struct.sk_buff* %309)
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %310, i32* %311, align 4
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %315 = call i32 @__neigh_update(%struct.neighbour* %303, i8* %304, i32 %307, i32 %308, i32 %313, %struct.netlink_ext_ack* %314)
  store i32 %315, i32* %19, align 4
  br label %316

316:                                              ; preds = %302, %299
  %317 = load i8*, i8** %18, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = load i8*, i8** %18, align 8
  %321 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %322 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %321, i32 0, i32 0
  store i8* %320, i8** %322, align 8
  br label %323

323:                                              ; preds = %319, %316
  %324 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %325 = call i32 @neigh_release(%struct.neighbour* %324)
  br label %326

326:                                              ; preds = %323, %250, %239, %211, %194, %178, %174, %113, %89, %72, %54, %46
  %327 = load i32, i32* %19, align 4
  store i32 %327, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %328

328:                                              ; preds = %326, %100
  %329 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %329)
  %330 = load i32, i32* %4, align 4
  ret i32 %330
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.neigh_table* @neigh_find_table(i32) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table*, %struct.net*, i8*, %struct.net_device*, i32) #1

declare dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table*, i8*, %struct.net_device*) #1

declare dso_local %struct.neighbour* @___neigh_create(%struct.neigh_table*, i8*, %struct.net_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @__neigh_update(%struct.neighbour*, i8*, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
