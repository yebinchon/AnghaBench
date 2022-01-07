; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_info_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32, i64, i32, i32, %struct.TYPE_10__, %struct.fib6_nh*, %struct.nexthop*, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, %struct.fib6_table*, %struct.dst_metrics* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.fib6_nh = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nexthop = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fib6_table = type { i32 }
%struct.dst_metrics = type { i32 }
%struct.fib6_config = type { i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.net* }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTF_PCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Userspace can not set RTF_PCPU\00", align 1
@RTF_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Userspace can not set RTF_CACHE\00", align 1
@RTN_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid route type\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid prefix length\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid source address length\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"Specifying source address requires IPV6_SUBTREES to be enabled\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Nexthop id does not exist\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"NLM_F_CREATE should be specified when creating new route\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dst_default_metrics = common dso_local global i32 0, align 4
@RTF_ADDRCONF = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RTPROT_UNSPEC = common dso_local global i64 0, align 8
@RTPROT_BOOT = common dso_local global i64 0, align 8
@RTN_UNICAST = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Nexthop has been deleted\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Nexthops can not be used with source routing\00", align 1
@RTF_REJECT = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Invalid source address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_info* (%struct.fib6_config*, i32, %struct.netlink_ext_ack*)* @ip6_route_info_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_info* @ip6_route_info_create(%struct.fib6_config* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.fib6_info*, align 8
  %5 = alloca %struct.fib6_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.fib6_info*, align 8
  %10 = alloca %struct.nexthop*, align 8
  %11 = alloca %struct.fib6_table*, align 8
  %12 = alloca %struct.fib6_nh*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  store %struct.fib6_config* %0, %struct.fib6_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %17 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.net*, %struct.net** %18, align 8
  store %struct.net* %19, %struct.net** %8, align 8
  store %struct.fib6_info* null, %struct.fib6_info** %9, align 8
  store %struct.nexthop* null, %struct.nexthop** %10, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %23 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RTF_PCPU, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %30 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %376

31:                                               ; preds = %3
  %32 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %33 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RTF_CACHE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %40 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %376

41:                                               ; preds = %31
  %42 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %43 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RTN_MAX, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %49 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %376

50:                                               ; preds = %41
  %51 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %52 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 128
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %57 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %376

58:                                               ; preds = %50
  %59 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %60 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 128
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %65 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %376

66:                                               ; preds = %58
  %67 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %68 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %73 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %72, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0))
  br label %376

74:                                               ; preds = %66
  %75 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %76 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %75, i32 0, i32 14
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load %struct.net*, %struct.net** %8, align 8
  %81 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %82 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %81, i32 0, i32 14
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.nexthop* @nexthop_find_by_id(%struct.net* %80, i32 %83)
  store %struct.nexthop* %84, %struct.nexthop** %10, align 8
  %85 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %86 = icmp ne %struct.nexthop* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %89 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %376

90:                                               ; preds = %79
  %91 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %92 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %93 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %94 = call i32 @fib6_check_nexthop(%struct.nexthop* %91, %struct.fib6_config* %92, %struct.netlink_ext_ack* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %376

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %74
  %100 = load i32, i32* @ENOBUFS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %13, align 4
  %102 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %103 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %102, i32 0, i32 13
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = icmp ne %struct.TYPE_6__* %105, null
  br i1 %106, label %107, label %133

107:                                              ; preds = %99
  %108 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %109 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %108, i32 0, i32 13
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NLM_F_CREATE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %107
  %118 = load %struct.net*, %struct.net** %8, align 8
  %119 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %120 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.fib6_table* @fib6_get_table(%struct.net* %118, i32 %121)
  store %struct.fib6_table* %122, %struct.fib6_table** %11, align 8
  %123 = load %struct.fib6_table*, %struct.fib6_table** %11, align 8
  %124 = icmp ne %struct.fib6_table* %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %117
  %126 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %127 = load %struct.net*, %struct.net** %8, align 8
  %128 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %129 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.fib6_table* @fib6_new_table(%struct.net* %127, i32 %130)
  store %struct.fib6_table* %131, %struct.fib6_table** %11, align 8
  br label %132

132:                                              ; preds = %125, %117
  br label %139

133:                                              ; preds = %107, %99
  %134 = load %struct.net*, %struct.net** %8, align 8
  %135 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %136 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.fib6_table* @fib6_new_table(%struct.net* %134, i32 %137)
  store %struct.fib6_table* %138, %struct.fib6_table** %11, align 8
  br label %139

139:                                              ; preds = %133, %132
  %140 = load %struct.fib6_table*, %struct.fib6_table** %11, align 8
  %141 = icmp ne %struct.fib6_table* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  br label %376

143:                                              ; preds = %139
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %148 = icmp ne %struct.nexthop* %147, null
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call %struct.fib6_info* @fib6_info_alloc(i32 %146, i32 %150)
  store %struct.fib6_info* %151, %struct.fib6_info** %9, align 8
  %152 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %153 = icmp ne %struct.fib6_info* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %143
  br label %376

155:                                              ; preds = %143
  %156 = load %struct.net*, %struct.net** %8, align 8
  %157 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %158 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %161 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %164 = call %struct.dst_metrics* @ip_fib_metrics_init(%struct.net* %156, i32 %159, i32 %162, %struct.netlink_ext_ack* %163)
  %165 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %166 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %165, i32 0, i32 12
  store %struct.dst_metrics* %164, %struct.dst_metrics** %166, align 8
  %167 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %168 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %167, i32 0, i32 12
  %169 = load %struct.dst_metrics*, %struct.dst_metrics** %168, align 8
  %170 = call i64 @IS_ERR(%struct.dst_metrics* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %155
  %173 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %174 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %173, i32 0, i32 12
  %175 = load %struct.dst_metrics*, %struct.dst_metrics** %174, align 8
  %176 = call i32 @PTR_ERR(%struct.dst_metrics* %175)
  store i32 %176, i32* %13, align 4
  %177 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %178 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %177, i32 0, i32 12
  store %struct.dst_metrics* bitcast (i32* @dst_default_metrics to %struct.dst_metrics*), %struct.dst_metrics** %178, align 8
  br label %376

179:                                              ; preds = %155
  %180 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %181 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @RTF_ADDRCONF, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %188 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %179
  %190 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %191 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @RTF_EXPIRES, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %189
  %197 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %198 = load i64, i64* @jiffies, align 8
  %199 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %200 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %199, i32 0, i32 9
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @clock_t_to_jiffies(i32 %201)
  %203 = add nsw i64 %198, %202
  %204 = call i32 @fib6_set_expires(%struct.fib6_info* %197, i64 %203)
  br label %208

205:                                              ; preds = %189
  %206 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %207 = call i32 @fib6_clean_expires(%struct.fib6_info* %206)
  br label %208

208:                                              ; preds = %205, %196
  %209 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %210 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @RTPROT_UNSPEC, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i64, i64* @RTPROT_BOOT, align 8
  %216 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %217 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %216, i32 0, i32 4
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %214, %208
  %219 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %220 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %223 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  %224 = load %struct.fib6_table*, %struct.fib6_table** %11, align 8
  %225 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %226 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %225, i32 0, i32 11
  store %struct.fib6_table* %224, %struct.fib6_table** %226, align 8
  %227 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %228 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %231 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %230, i32 0, i32 10
  store i32 %229, i32* %231, align 4
  %232 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %233 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %218
  br label %240

237:                                              ; preds = %218
  %238 = load i32, i32* @RTN_UNICAST, align 4
  %239 = sext i32 %238 to i64
  br label %240

240:                                              ; preds = %237, %236
  %241 = phi i64 [ %234, %236 ], [ %239, %237 ]
  %242 = trunc i64 %241 to i32
  %243 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %244 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %243, i32 0, i32 9
  store i32 %242, i32* %244, align 8
  %245 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %246 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @RTF_GATEWAY, align 4
  %249 = xor i32 %248, -1
  %250 = and i32 %247, %249
  %251 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %252 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %254 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %253, i32 0, i32 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %257 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %256, i32 0, i32 6
  %258 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %259 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @ipv6_addr_prefix(i32* %255, i32* %257, i32 %260)
  %262 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %263 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %266 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %265, i32 0, i32 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %269 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %268, i32 0, i32 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 128
  br i1 %272, label %273, label %276

273:                                              ; preds = %240
  %274 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %275 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %274, i32 0, i32 3
  store i32 1, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %240
  %277 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %278 = icmp ne %struct.nexthop* %277, null
  br i1 %278, label %279, label %303

279:                                              ; preds = %276
  %280 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %281 = call i32 @nexthop_get(%struct.nexthop* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  %284 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %285 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %284, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %376

286:                                              ; preds = %279
  %287 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %288 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %287, i32 0, i32 7
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %286
  %293 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %294 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %293, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %376

295:                                              ; preds = %286
  %296 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %297 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %298 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %297, i32 0, i32 6
  store %struct.nexthop* %296, %struct.nexthop** %298, align 8
  %299 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %300 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %299, i32 0, i32 6
  %301 = load %struct.nexthop*, %struct.nexthop** %300, align 8
  %302 = call %struct.fib6_nh* @nexthop_fib6_nh(%struct.nexthop* %301)
  store %struct.fib6_nh* %302, %struct.fib6_nh** %12, align 8
  br label %340

303:                                              ; preds = %276
  %304 = load %struct.net*, %struct.net** %8, align 8
  %305 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %306 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %305, i32 0, i32 5
  %307 = load %struct.fib6_nh*, %struct.fib6_nh** %306, align 8
  %308 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %309 = load i32, i32* %6, align 4
  %310 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %311 = call i32 @fib6_nh_init(%struct.net* %304, %struct.fib6_nh* %307, %struct.fib6_config* %308, i32 %309, %struct.netlink_ext_ack* %310)
  store i32 %311, i32* %13, align 4
  %312 = load i32, i32* %13, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %303
  br label %376

315:                                              ; preds = %303
  %316 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %317 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %316, i32 0, i32 5
  %318 = load %struct.fib6_nh*, %struct.fib6_nh** %317, align 8
  store %struct.fib6_nh* %318, %struct.fib6_nh** %12, align 8
  %319 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %320 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %319, i32 0, i32 6
  %321 = call i32 @ipv6_addr_type(i32* %320)
  store i32 %321, i32* %14, align 4
  %322 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %323 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %326 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %325, i32 0, i32 5
  %327 = load %struct.fib6_nh*, %struct.fib6_nh** %326, align 8
  %328 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %327, i32 0, i32 0
  %329 = load %struct.net_device*, %struct.net_device** %328, align 8
  %330 = load i32, i32* %14, align 4
  %331 = call i64 @fib6_is_reject(i32 %324, %struct.net_device* %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %315
  %334 = load i32, i32* @RTF_REJECT, align 4
  %335 = load i32, i32* @RTF_NONEXTHOP, align 4
  %336 = or i32 %334, %335
  %337 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %338 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %337, i32 0, i32 2
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %333, %315
  br label %340

340:                                              ; preds = %339, %295
  %341 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %342 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %341, i32 0, i32 5
  %343 = call i32 @ipv6_addr_any(i32* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %370, label %345

345:                                              ; preds = %340
  %346 = load %struct.fib6_nh*, %struct.fib6_nh** %12, align 8
  %347 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %346, i32 0, i32 0
  %348 = load %struct.net_device*, %struct.net_device** %347, align 8
  store %struct.net_device* %348, %struct.net_device** %15, align 8
  %349 = load %struct.net*, %struct.net** %8, align 8
  %350 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %351 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %350, i32 0, i32 5
  %352 = load %struct.net_device*, %struct.net_device** %15, align 8
  %353 = call i32 @ipv6_chk_addr(%struct.net* %349, i32* %351, %struct.net_device* %352, i32 0)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %345
  %356 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %357 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %356, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %358 = load i32, i32* @EINVAL, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %13, align 4
  br label %376

360:                                              ; preds = %345
  %361 = load %struct.fib6_config*, %struct.fib6_config** %5, align 8
  %362 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %361, i32 0, i32 5
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %365 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %364, i32 0, i32 4
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 1
  store i32 %363, i32* %366, align 4
  %367 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %368 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  store i32 128, i32* %369, align 8
  br label %374

370:                                              ; preds = %340
  %371 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %372 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %371, i32 0, i32 4
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 0
  store i32 0, i32* %373, align 8
  br label %374

374:                                              ; preds = %370, %360
  %375 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  store %struct.fib6_info* %375, %struct.fib6_info** %4, align 8
  br label %381

376:                                              ; preds = %355, %314, %292, %283, %172, %154, %142, %97, %87, %71, %63, %55, %47, %38, %28
  %377 = load %struct.fib6_info*, %struct.fib6_info** %9, align 8
  %378 = call i32 @fib6_info_release(%struct.fib6_info* %377)
  %379 = load i32, i32* %13, align 4
  %380 = call %struct.fib6_info* @ERR_PTR(i32 %379)
  store %struct.fib6_info* %380, %struct.fib6_info** %4, align 8
  br label %381

381:                                              ; preds = %376, %374
  %382 = load %struct.fib6_info*, %struct.fib6_info** %4, align 8
  ret %struct.fib6_info* %382
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nexthop* @nexthop_find_by_id(%struct.net*, i32) #1

declare dso_local i32 @fib6_check_nexthop(%struct.nexthop*, %struct.fib6_config*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.fib6_table* @fib6_get_table(%struct.net*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.fib6_table* @fib6_new_table(%struct.net*, i32) #1

declare dso_local %struct.fib6_info* @fib6_info_alloc(i32, i32) #1

declare dso_local %struct.dst_metrics* @ip_fib_metrics_init(%struct.net*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.dst_metrics*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_metrics*) #1

declare dso_local i32 @fib6_set_expires(%struct.fib6_info*, i64) #1

declare dso_local i64 @clock_t_to_jiffies(i32) #1

declare dso_local i32 @fib6_clean_expires(%struct.fib6_info*) #1

declare dso_local i32 @ipv6_addr_prefix(i32*, i32*, i32) #1

declare dso_local i32 @nexthop_get(%struct.nexthop*) #1

declare dso_local %struct.fib6_nh* @nexthop_fib6_nh(%struct.nexthop*) #1

declare dso_local i32 @fib6_nh_init(%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i64 @fib6_is_reject(i32, %struct.net_device*, i32) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @ipv6_chk_addr(%struct.net*, i32*, %struct.net_device*, i32) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local %struct.fib6_info* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
