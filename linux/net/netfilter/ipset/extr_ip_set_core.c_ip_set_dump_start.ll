; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_dump_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_dump_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ip_set = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.ip_set*, %struct.sk_buff*)*, i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ip_set_net = type { i32, i32 }

@IPSET_INVALID_ID = common dso_local global i8* null, align 8
@NLM_F_MULTI = common dso_local global i32 0, align 4
@IPSET_CB_DUMP = common dso_local global i64 0, align 8
@NLM_F_ACK = common dso_local global i32 0, align 4
@IPSET_CB_INDEX = common dso_local global i64 0, align 8
@DUMP_ONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dump type, flag: %u %u index: %ld\0A\00", align 1
@ip_set_ref_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DUMP_ALL = common dso_local global i32 0, align 4
@IPSET_DUMP_LAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"List set: %s\0A\00", align 1
@IPSET_CB_ARG0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"reference set\0A\00", align 1
@IPSET_CMD_LIST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_CB_PROTO = common dso_local global i64 0, align 8
@IPSET_ATTR_SETNAME = common dso_local global i32 0, align 4
@IPSET_FLAG_LIST_SETNAME = common dso_local global i32 0, align 4
@IPSET_ATTR_TYPENAME = common dso_local global i32 0, align 4
@IPSET_ATTR_FAMILY = common dso_local global i32 0, align 4
@IPSET_ATTR_REVISION = common dso_local global i32 0, align 4
@IPSET_PROTOCOL_MIN = common dso_local global i32 0, align 4
@IPSET_ATTR_INDEX = common dso_local global i32 0, align 4
@IPSET_FLAG_LIST_HEADER = common dso_local global i32 0, align 4
@DUMP_LAST = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"release set %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"nlmsg_len: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @ip_set_dump_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_dump_start(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_set*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca %struct.ip_set_net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %18 = load i8*, i8** @IPSET_INVALID_ID, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %6, align 4
  store %struct.ip_set* null, %struct.ip_set** %8, align 8
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %9, align 8
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @NETLINK_CB(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @NLM_F_MULTI, align 4
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  store i32 %32, i32* %10, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sock_net(i32 %35)
  %37 = call %struct.ip_set_net* @ip_set_pernet(i32 %36)
  store %struct.ip_set_net* %37, %struct.ip_set_net** %12, align 8
  store i32 0, i32* %16, align 4
  %38 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %39 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @IPSET_CB_DUMP, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %31
  %46 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %47 = load %struct.ip_set_net*, %struct.ip_set_net** %12, align 8
  %48 = call i32 @dump_init(%struct.netlink_callback* %46, %struct.ip_set_net* %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %53 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.nlmsghdr* @nlmsg_hdr(i32 %54)
  store %struct.nlmsghdr* %55, %struct.nlmsghdr** %9, align 8
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %57 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NLM_F_ACK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %64 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @netlink_ack(i32 %65, %struct.nlmsghdr* %66, i32 %67, i32* null)
  br label %69

69:                                               ; preds = %62, %51
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %3, align 4
  br label %501

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71, %31
  %73 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %74 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @IPSET_CB_INDEX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ip_set_net*, %struct.ip_set_net** %12, align 8
  %80 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %477

84:                                               ; preds = %72
  %85 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %86 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @IPSET_CB_DUMP, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DUMP_TYPE(i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %93 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @IPSET_CB_DUMP, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @DUMP_FLAGS(i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @DUMP_ONE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %84
  %103 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %104 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @IPSET_CB_INDEX, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  br label %114

110:                                              ; preds = %84
  %111 = load %struct.ip_set_net*, %struct.ip_set_net** %12, align 8
  %112 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  br label %114

114:                                              ; preds = %110, %102
  %115 = phi i32 [ %109, %102 ], [ %113, %110 ]
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %408, %114
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %120 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @IPSET_CB_INDEX, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i32 %124)
  br label %126

126:                                              ; preds = %362, %116
  %127 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %128 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @IPSET_CB_INDEX, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %370

135:                                              ; preds = %126
  %136 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %137 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @IPSET_CB_INDEX, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %6, align 4
  %142 = call i32 @write_lock_bh(i32* @ip_set_ref_lock)
  %143 = load %struct.ip_set_net*, %struct.ip_set_net** %12, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call %struct.ip_set* @ip_set(%struct.ip_set_net* %143, i32 %144)
  store %struct.ip_set* %145, %struct.ip_set** %8, align 8
  %146 = load %struct.ip_set_net*, %struct.ip_set_net** %12, align 8
  %147 = getelementptr inbounds %struct.ip_set_net, %struct.ip_set_net* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %15, align 4
  %149 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %150 = icmp ne %struct.ip_set* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %135
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151, %135
  %155 = call i32 @write_unlock_bh(i32* @ip_set_ref_lock)
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @DUMP_ONE, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* @ENOENT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %16, align 4
  br label %477

162:                                              ; preds = %154
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 0, i32* %16, align 4
  br label %477

166:                                              ; preds = %162
  br label %362

167:                                              ; preds = %151
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @DUMP_ONE, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %167
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @DUMP_ALL, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %177 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %176, i32 0, i32 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IPSET_DUMP_LAST, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = icmp eq i32 %175, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %171
  %189 = call i32 @write_unlock_bh(i32* @ip_set_ref_lock)
  br label %362

190:                                              ; preds = %171, %167
  %191 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %192 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  %195 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %196 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @IPSET_CB_ARG0, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %190
  %203 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %204 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %205 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %190
  %209 = call i32 @write_unlock_bh(i32* @ip_set_ref_lock)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %212 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @NETLINK_CB(i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i64 %214, i64* %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %219 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %218, i32 0, i32 1
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @IPSET_CMD_LIST, align 4
  %225 = call %struct.nlmsghdr* @start_msg(%struct.sk_buff* %210, i64 %217, i32 %222, i32 %223, i32 %224)
  store %struct.nlmsghdr* %225, %struct.nlmsghdr** %9, align 8
  %226 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %227 = icmp ne %struct.nlmsghdr* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %208
  %229 = load i32, i32* @EMSGSIZE, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %16, align 4
  br label %434

231:                                              ; preds = %208
  %232 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %233 = load i32, i32* @IPSET_ATTR_PROTOCOL, align 4
  %234 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %235 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @IPSET_CB_PROTO, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @nla_put_u8(%struct.sk_buff* %232, i32 %233, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %231
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = load i32, i32* @IPSET_ATTR_SETNAME, align 4
  %245 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %246 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @nla_put_string(%struct.sk_buff* %243, i32 %244, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %242, %231
  br label %410

251:                                              ; preds = %242
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* @IPSET_FLAG_LIST_SETNAME, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %413

257:                                              ; preds = %251
  %258 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %259 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @IPSET_CB_ARG0, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  switch i32 %263, label %343 [
    i32 0, label %264
  ]

264:                                              ; preds = %257
  %265 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %266 = load i32, i32* @IPSET_ATTR_TYPENAME, align 4
  %267 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %268 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %267, i32 0, i32 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @nla_put_string(%struct.sk_buff* %265, i32 %266, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %290, label %274

274:                                              ; preds = %264
  %275 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %276 = load i32, i32* @IPSET_ATTR_FAMILY, align 4
  %277 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %278 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i64 @nla_put_u8(%struct.sk_buff* %275, i32 %276, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %274
  %283 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %284 = load i32, i32* @IPSET_ATTR_REVISION, align 4
  %285 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %286 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i64 @nla_put_u8(%struct.sk_buff* %283, i32 %284, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %282, %274, %264
  br label %410

291:                                              ; preds = %282
  %292 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %293 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @IPSET_CB_PROTO, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @IPSET_PROTOCOL_MIN, align 4
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %291
  %301 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %302 = load i32, i32* @IPSET_ATTR_INDEX, align 4
  %303 = load i32, i32* %6, align 4
  %304 = call i32 @htons(i32 %303)
  %305 = call i32 @nla_put_net16(%struct.sk_buff* %301, i32 %302, i32 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %300
  br label %410

308:                                              ; preds = %300, %291
  %309 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %310 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %309, i32 0, i32 3
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 0
  %313 = load i32 (%struct.ip_set*, %struct.sk_buff*)*, i32 (%struct.ip_set*, %struct.sk_buff*)** %312, align 8
  %314 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %315 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %316 = call i32 %313(%struct.ip_set* %314, %struct.sk_buff* %315)
  store i32 %316, i32* %16, align 4
  %317 = load i32, i32* %16, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %308
  br label %434

320:                                              ; preds = %308
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* @IPSET_FLAG_LIST_HEADER, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %320
  br label %413

326:                                              ; preds = %320
  %327 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %328 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %327, i32 0, i32 3
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 2
  %331 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %330, align 8
  %332 = icmp ne i32 (%struct.ip_set*, %struct.netlink_callback*, i32)* %331, null
  br i1 %332, label %333, label %342

333:                                              ; preds = %326
  %334 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %335 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %334, i32 0, i32 3
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 2
  %338 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %337, align 8
  %339 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %340 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %341 = call i32 %338(%struct.ip_set* %339, %struct.netlink_callback* %340, i32 1)
  br label %342

342:                                              ; preds = %333, %326
  br label %343

343:                                              ; preds = %257, %342
  %344 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %345 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %344, i32 0, i32 3
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 1
  %348 = load i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)** %347, align 8
  %349 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %350 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %351 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %352 = call i32 %348(%struct.ip_set* %349, %struct.sk_buff* %350, %struct.netlink_callback* %351)
  store i32 %352, i32* %16, align 4
  %353 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %354 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = load i64, i64* @IPSET_CB_ARG0, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %343
  br label %413

361:                                              ; preds = %343
  br label %434

362:                                              ; preds = %188, %166
  %363 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %364 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = load i64, i64* @IPSET_CB_INDEX, align 8
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 4
  br label %126

370:                                              ; preds = %126
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* @DUMP_ALL, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %409

374:                                              ; preds = %370
  %375 = load i32, i32* @DUMP_LAST, align 4
  store i32 %375, i32* %13, align 4
  %376 = load i32, i32* %13, align 4
  %377 = load i32, i32* %14, align 4
  %378 = shl i32 %377, 16
  %379 = or i32 %376, %378
  %380 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %381 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = load i64, i64* @IPSET_CB_DUMP, align 8
  %384 = getelementptr inbounds i32, i32* %382, i64 %383
  store i32 %379, i32* %384, align 4
  %385 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %386 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = load i64, i64* @IPSET_CB_INDEX, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  store i32 0, i32* %389, align 4
  %390 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %391 = icmp ne %struct.ip_set* %390, null
  br i1 %391, label %392, label %408

392:                                              ; preds = %374
  %393 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %394 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %393, i32 0, i32 3
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 2
  %397 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %396, align 8
  %398 = icmp ne i32 (%struct.ip_set*, %struct.netlink_callback*, i32)* %397, null
  br i1 %398, label %399, label %408

399:                                              ; preds = %392
  %400 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %401 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %400, i32 0, i32 3
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 2
  %404 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %403, align 8
  %405 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %406 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %407 = call i32 %404(%struct.ip_set* %405, %struct.netlink_callback* %406, i32 0)
  br label %408

408:                                              ; preds = %399, %392, %374
  br label %116

409:                                              ; preds = %370
  br label %477

410:                                              ; preds = %307, %290, %250
  %411 = load i32, i32* @EFAULT, align 4
  %412 = sub nsw i32 0, %411
  store i32 %412, i32* %16, align 4
  br label %413

413:                                              ; preds = %410, %360, %325, %256
  %414 = load i32, i32* %13, align 4
  %415 = load i32, i32* @DUMP_ONE, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %425

417:                                              ; preds = %413
  %418 = load i8*, i8** @IPSET_INVALID_ID, align 8
  %419 = ptrtoint i8* %418 to i32
  %420 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %421 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = load i64, i64* @IPSET_CB_INDEX, align 8
  %424 = getelementptr inbounds i32, i32* %422, i64 %423
  store i32 %419, i32* %424, align 4
  br label %433

425:                                              ; preds = %413
  %426 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %427 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = load i64, i64* @IPSET_CB_INDEX, align 8
  %430 = getelementptr inbounds i32, i32* %428, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %430, align 4
  br label %433

433:                                              ; preds = %425, %417
  br label %434

434:                                              ; preds = %433, %361, %319, %228
  %435 = load i32, i32* %16, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %445, label %437

437:                                              ; preds = %434
  %438 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %439 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %438, i32 0, i32 0
  %440 = load i32*, i32** %439, align 8
  %441 = load i64, i64* @IPSET_CB_ARG0, align 8
  %442 = getelementptr inbounds i32, i32* %440, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %476, label %445

445:                                              ; preds = %437, %434
  %446 = load %struct.ip_set_net*, %struct.ip_set_net** %12, align 8
  %447 = load i32, i32* %6, align 4
  %448 = call %struct.ip_set* @ip_set_ref_netlink(%struct.ip_set_net* %446, i32 %447)
  store %struct.ip_set* %448, %struct.ip_set** %8, align 8
  %449 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %450 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %449, i32 0, i32 3
  %451 = load %struct.TYPE_7__*, %struct.TYPE_7__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 2
  %453 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %452, align 8
  %454 = icmp ne i32 (%struct.ip_set*, %struct.netlink_callback*, i32)* %453, null
  br i1 %454, label %455, label %464

455:                                              ; preds = %445
  %456 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %457 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %456, i32 0, i32 3
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 2
  %460 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %459, align 8
  %461 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %462 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %463 = call i32 %460(%struct.ip_set* %461, %struct.netlink_callback* %462, i32 0)
  br label %464

464:                                              ; preds = %455, %445
  %465 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %466 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %467)
  %469 = load %struct.ip_set*, %struct.ip_set** %8, align 8
  %470 = call i32 @__ip_set_put_netlink(%struct.ip_set* %469)
  %471 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %472 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %471, i32 0, i32 0
  %473 = load i32*, i32** %472, align 8
  %474 = load i64, i64* @IPSET_CB_ARG0, align 8
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  store i32 0, i32* %475, align 4
  br label %476

476:                                              ; preds = %464, %437
  br label %477

477:                                              ; preds = %476, %409, %165, %159, %83
  %478 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %479 = icmp ne %struct.nlmsghdr* %478, null
  br i1 %479, label %480, label %490

480:                                              ; preds = %477
  %481 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %482 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %483 = call i32 @nlmsg_end(%struct.sk_buff* %481, %struct.nlmsghdr* %482)
  %484 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %485 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %486)
  %488 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %489 = call i32 @dump_attrs(%struct.nlmsghdr* %488)
  br label %490

490:                                              ; preds = %480, %477
  %491 = load i32, i32* %16, align 4
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  %494 = load i32, i32* %16, align 4
  br label %499

495:                                              ; preds = %490
  %496 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %497 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  br label %499

499:                                              ; preds = %495, %493
  %500 = phi i32 [ %494, %493 ], [ %498, %495 ]
  store i32 %500, i32* %3, align 4
  br label %501

501:                                              ; preds = %499, %69
  %502 = load i32, i32* %3, align 4
  ret i32 %502
}

declare dso_local i64 @NETLINK_CB(i32) #1

declare dso_local %struct.ip_set_net* @ip_set_pernet(i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @dump_init(%struct.netlink_callback*, %struct.ip_set_net*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(i32) #1

declare dso_local i32 @netlink_ack(i32, %struct.nlmsghdr*, i32, i32*) #1

declare dso_local i32 @DUMP_TYPE(i32) #1

declare dso_local i32 @DUMP_FLAGS(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.ip_set* @ip_set(%struct.ip_set_net*, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local %struct.nlmsghdr* @start_msg(%struct.sk_buff*, i64, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_net16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.ip_set* @ip_set_ref_netlink(%struct.ip_set_net*, i32) #1

declare dso_local i32 @__ip_set_put_netlink(%struct.ip_set*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @dump_attrs(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
