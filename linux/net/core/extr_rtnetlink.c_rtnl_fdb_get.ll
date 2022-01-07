; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_fdb_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_fdb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device.0*, i32*, i32, i32, i32, %struct.netlink_ext_ack*)* }
%struct.nlattr = type { i32 }
%struct.net_device.0 = type opaque
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NDA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Missing lookup address for fdb get request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown device ifindex\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Master and device are mutually exclusive\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid master ifindex\00", align 1
@NTF_MASTER = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Device is not a bridge port\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Master of device not found\00", align 1
@NTF_SELF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Missing NTF_SELF\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"No device specified\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Fdb get operation not supported by device\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_fdb_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_fdb_get(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device_ops*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  %23 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  store %struct.net_device_ops* null, %struct.net_device_ops** %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.net* @sock_net(i32 %26)
  store %struct.net* %27, %struct.net** %11, align 8
  %28 = load i32, i32* @NDA_MAX, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca %struct.nlattr*, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %35 = call i32 @valid_fdb_get_strict(%struct.nlmsghdr* %33, %struct.nlattr** %32, i32* %16, i32* %17, i32* %15, i32** %18, i32* %19, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %20, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

40:                                               ; preds = %3
  %41 = load i32*, i32** %18, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %45 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

48:                                               ; preds = %40
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.net*, %struct.net** %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call %struct.net_device* @__dev_get_by_index(%struct.net* %52, i32 %53)
  store %struct.net_device* %54, %struct.net_device** %8, align 8
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %63
  %67 = load %struct.net_device*, %struct.net_device** %8, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %71 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

74:                                               ; preds = %66
  %75 = load %struct.net*, %struct.net** %11, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call %struct.net_device* @__dev_get_by_index(%struct.net* %75, i32 %76)
  store %struct.net_device* %77, %struct.net_device** %9, align 8
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = icmp ne %struct.net_device* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %82 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

85:                                               ; preds = %74
  %86 = load %struct.net_device*, %struct.net_device** %9, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = load %struct.net_device_ops*, %struct.net_device_ops** %87, align 8
  store %struct.net_device_ops* %88, %struct.net_device_ops** %10, align 8
  br label %89

89:                                               ; preds = %85, %63
  %90 = load %struct.net_device*, %struct.net_device** %8, align 8
  %91 = icmp ne %struct.net_device* %90, null
  br i1 %91, label %92, label %141

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @NTF_MASTER, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %95, %92
  %101 = load %struct.net_device*, %struct.net_device** %8, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %109 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

112:                                              ; preds = %100
  %113 = load %struct.net_device*, %struct.net_device** %8, align 8
  %114 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %113)
  store %struct.net_device* %114, %struct.net_device** %9, align 8
  %115 = load %struct.net_device*, %struct.net_device** %9, align 8
  %116 = icmp ne %struct.net_device* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %119 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

122:                                              ; preds = %112
  %123 = load %struct.net_device*, %struct.net_device** %9, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = load %struct.net_device_ops*, %struct.net_device_ops** %124, align 8
  store %struct.net_device_ops* %125, %struct.net_device_ops** %10, align 8
  br label %140

126:                                              ; preds = %95
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @NTF_SELF, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %133 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

136:                                              ; preds = %126
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load %struct.net_device_ops*, %struct.net_device_ops** %138, align 8
  store %struct.net_device_ops* %139, %struct.net_device_ops** %10, align 8
  br label %140

140:                                              ; preds = %136, %122
  br label %141

141:                                              ; preds = %140, %89
  %142 = load %struct.net_device*, %struct.net_device** %9, align 8
  %143 = icmp ne %struct.net_device* %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %141
  %145 = load %struct.net_device*, %struct.net_device** %8, align 8
  %146 = icmp ne %struct.net_device* %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %149 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

152:                                              ; preds = %144, %141
  %153 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %154 = icmp ne %struct.net_device_ops* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %157 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %156, i32 0, i32 0
  %158 = load i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device.0*, i32*, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device.0*, i32*, i32, i32, i32, %struct.netlink_ext_ack*)** %157, align 8
  %159 = icmp ne i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device.0*, i32*, i32, i32, i32, %struct.netlink_ext_ack*)* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %155, %152
  %161 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %162 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32, i32* @EOPNOTSUPP, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

165:                                              ; preds = %155
  %166 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call %struct.sk_buff* @nlmsg_new(i32 %166, i32 %167)
  store %struct.sk_buff* %168, %struct.sk_buff** %14, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %170 = icmp ne %struct.sk_buff* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* @ENOBUFS, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

174:                                              ; preds = %165
  %175 = load %struct.net_device*, %struct.net_device** %9, align 8
  %176 = icmp ne %struct.net_device* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %178, %struct.net_device** %8, align 8
  br label %179

179:                                              ; preds = %177, %174
  %180 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %181 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %180, i32 0, i32 0
  %182 = load i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device.0*, i32*, i32, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device.0*, i32*, i32, i32, i32, %struct.netlink_ext_ack*)** %181, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %184 = load %struct.net_device*, %struct.net_device** %8, align 8
  %185 = bitcast %struct.net_device* %184 to %struct.net_device.0*
  %186 = load i32*, i32** %18, align 8
  %187 = load i32, i32* %19, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = call i32 @NETLINK_CB(%struct.sk_buff* %188)
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %189, i32* %190, align 4
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %194 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %197 = call i32 %182(%struct.sk_buff* %183, %struct.nlattr** %32, %struct.net_device.0* %185, i32* %186, i32 %187, i32 %192, i32 %195, %struct.netlink_ext_ack* %196)
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %20, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %179
  br label %210

201:                                              ; preds = %179
  %202 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %203 = load %struct.net*, %struct.net** %11, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = call i32 @NETLINK_CB(%struct.sk_buff* %204)
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %205, i32* %206, align 4
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @rtnl_unicast(%struct.sk_buff* %202, %struct.net* %203, i32 %208)
  store i32 %209, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

210:                                              ; preds = %200
  %211 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %212 = call i32 @kfree_skb(%struct.sk_buff* %211)
  %213 = load i32, i32* %20, align 4
  store i32 %213, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %214

214:                                              ; preds = %210, %201, %171, %160, %147, %131, %117, %107, %80, %69, %57, %43, %38
  %215 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @valid_fdb_get_strict(%struct.nlmsghdr*, %struct.nlattr**, i32*, i32*, i32*, i32**, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
