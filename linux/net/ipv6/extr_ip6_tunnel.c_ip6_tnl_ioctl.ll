; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip6_tnl_parm = type { i32 }
%struct.__ip6_tnl_parm = type { i32 }
%struct.ip6_tnl = type { %struct.net_device*, i32, %struct.net* }
%struct.net = type { i32 }
%struct.ip6_tnl_net = type { %struct.net_device* }

@ip6_tnl_net_id = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ip6_tnl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tnl_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip6_tnl_parm, align 4
  %9 = alloca %struct.__ip6_tnl_parm, align 4
  %10 = alloca %struct.ip6_tnl*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.ip6_tnl_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %13)
  store %struct.ip6_tnl* %14, %struct.ip6_tnl** %10, align 8
  %15 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %16 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %15, i32 0, i32 2
  %17 = load %struct.net*, %struct.net** %16, align 8
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = load %struct.net*, %struct.net** %11, align 8
  %19 = load i32, i32* @ip6_tnl_net_id, align 4
  %20 = call %struct.ip6_tnl_net* @net_generic(%struct.net* %18, i32 %19)
  store %struct.ip6_tnl_net* %20, %struct.ip6_tnl_net** %12, align 8
  %21 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %22 = call i32 @memset(%struct.ip6_tnl_parm* %21, i32 0, i32 4)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %227 [
    i32 128, label %24
    i32 131, label %69
    i32 130, label %69
    i32 129, label %171
  ]

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %12, align 8
  %27 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = icmp eq %struct.net_device* %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @copy_from_user(%struct.ip6_tnl_parm* %8, i32 %34, i32 4)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %230

40:                                               ; preds = %30
  %41 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %42 = call i32 @ip6_tnl_parm_from_user(%struct.ip6_tnl_parm* %41, %struct.ip6_tnl_parm* %8)
  %43 = load %struct.net*, %struct.net** %11, align 8
  %44 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %45 = call %struct.ip6_tnl* @ip6_tnl_locate(%struct.net* %43, %struct.ip6_tnl_parm* %44, i32 0)
  store %struct.ip6_tnl* %45, %struct.ip6_tnl** %10, align 8
  %46 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %47 = call i32 @IS_ERR(%struct.ip6_tnl* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %50)
  store %struct.ip6_tnl* %51, %struct.ip6_tnl** %10, align 8
  br label %52

52:                                               ; preds = %49, %40
  br label %55

53:                                               ; preds = %24
  %54 = call i32 @memset(%struct.ip6_tnl_parm* %8, i32 0, i32 4)
  br label %55

55:                                               ; preds = %53, %52
  %56 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %57 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %56, i32 0, i32 1
  %58 = call i32 @ip6_tnl_parm_to_user(%struct.ip6_tnl_parm* %8, i32* %57)
  %59 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %60 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @copy_to_user(i32 %62, %struct.ip6_tnl_parm* %8, i32 4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %55
  br label %230

69:                                               ; preds = %3, %3
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.net*, %struct.net** %11, align 8
  %73 = getelementptr inbounds %struct.net, %struct.net* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CAP_NET_ADMIN, align 4
  %76 = call i32 @ns_capable(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %230

79:                                               ; preds = %69
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @copy_from_user(%struct.ip6_tnl_parm* %8, i32 %85, i32 4)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %230

89:                                               ; preds = %79
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  %92 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %8, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IPPROTO_IPV6, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IPPROTO_IPIP, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ip6_tnl_parm, %struct.ip6_tnl_parm* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %230

106:                                              ; preds = %101, %96, %89
  %107 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %108 = call i32 @ip6_tnl_parm_from_user(%struct.ip6_tnl_parm* %107, %struct.ip6_tnl_parm* %8)
  %109 = load %struct.net*, %struct.net** %11, align 8
  %110 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 131
  %113 = zext i1 %112 to i32
  %114 = call %struct.ip6_tnl* @ip6_tnl_locate(%struct.net* %109, %struct.ip6_tnl_parm* %110, i32 %113)
  store %struct.ip6_tnl* %114, %struct.ip6_tnl** %10, align 8
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 130
  br i1 %116, label %117, label %149

117:                                              ; preds = %106
  %118 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %119 = call i32 @IS_ERR(%struct.ip6_tnl* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %117
  %122 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %123 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %122, i32 0, i32 0
  %124 = load %struct.net_device*, %struct.net_device** %123, align 8
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = icmp ne %struct.net_device* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EEXIST, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  br label %230

130:                                              ; preds = %121
  br label %134

131:                                              ; preds = %117
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %132)
  store %struct.ip6_tnl* %133, %struct.ip6_tnl** %10, align 8
  br label %134

134:                                              ; preds = %131, %130
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %12, align 8
  %137 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %136, i32 0, i32 0
  %138 = load %struct.net_device*, %struct.net_device** %137, align 8
  %139 = icmp eq %struct.net_device* %135, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %142 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %143 = call i32 @ip6_tnl0_update(%struct.ip6_tnl* %141, %struct.ip6_tnl_parm* %142)
  store i32 %143, i32* %7, align 4
  br label %148

144:                                              ; preds = %134
  %145 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %146 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %147 = call i32 @ip6_tnl_update(%struct.ip6_tnl* %145, %struct.ip6_tnl_parm* %146)
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %106
  %150 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %151 = call i32 @IS_ERR(%struct.ip6_tnl* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %167, label %153

153:                                              ; preds = %149
  store i32 0, i32* %7, align 4
  %154 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %155 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %154, i32 0, i32 1
  %156 = call i32 @ip6_tnl_parm_to_user(%struct.ip6_tnl_parm* %8, i32* %155)
  %157 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %158 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @copy_to_user(i32 %160, %struct.ip6_tnl_parm* %8, i32 4)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %153
  %164 = load i32, i32* @EFAULT, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %163, %153
  br label %170

167:                                              ; preds = %149
  %168 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %169 = call i32 @PTR_ERR(%struct.ip6_tnl* %168)
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %167, %166
  br label %230

171:                                              ; preds = %3
  %172 = load i32, i32* @EPERM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %7, align 4
  %174 = load %struct.net*, %struct.net** %11, align 8
  %175 = getelementptr inbounds %struct.net, %struct.net* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CAP_NET_ADMIN, align 4
  %178 = call i32 @ns_capable(i32 %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %171
  br label %230

181:                                              ; preds = %171
  %182 = load %struct.net_device*, %struct.net_device** %4, align 8
  %183 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %12, align 8
  %184 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %183, i32 0, i32 0
  %185 = load %struct.net_device*, %struct.net_device** %184, align 8
  %186 = icmp eq %struct.net_device* %182, %185
  br i1 %186, label %187, label %224

187:                                              ; preds = %181
  %188 = load i32, i32* @EFAULT, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %7, align 4
  %190 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %191 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @copy_from_user(%struct.ip6_tnl_parm* %8, i32 %193, i32 4)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %187
  br label %230

197:                                              ; preds = %187
  %198 = load i32, i32* @ENOENT, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %7, align 4
  %200 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %201 = call i32 @ip6_tnl_parm_from_user(%struct.ip6_tnl_parm* %200, %struct.ip6_tnl_parm* %8)
  %202 = load %struct.net*, %struct.net** %11, align 8
  %203 = bitcast %struct.__ip6_tnl_parm* %9 to %struct.ip6_tnl_parm*
  %204 = call %struct.ip6_tnl* @ip6_tnl_locate(%struct.net* %202, %struct.ip6_tnl_parm* %203, i32 0)
  store %struct.ip6_tnl* %204, %struct.ip6_tnl** %10, align 8
  %205 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %206 = call i32 @IS_ERR(%struct.ip6_tnl* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %197
  br label %230

209:                                              ; preds = %197
  %210 = load i32, i32* @EPERM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %7, align 4
  %212 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %213 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %212, i32 0, i32 0
  %214 = load %struct.net_device*, %struct.net_device** %213, align 8
  %215 = load %struct.ip6_tnl_net*, %struct.ip6_tnl_net** %12, align 8
  %216 = getelementptr inbounds %struct.ip6_tnl_net, %struct.ip6_tnl_net* %215, i32 0, i32 0
  %217 = load %struct.net_device*, %struct.net_device** %216, align 8
  %218 = icmp eq %struct.net_device* %214, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %230

220:                                              ; preds = %209
  %221 = load %struct.ip6_tnl*, %struct.ip6_tnl** %10, align 8
  %222 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %221, i32 0, i32 0
  %223 = load %struct.net_device*, %struct.net_device** %222, align 8
  store %struct.net_device* %223, %struct.net_device** %4, align 8
  br label %224

224:                                              ; preds = %220, %181
  store i32 0, i32* %7, align 4
  %225 = load %struct.net_device*, %struct.net_device** %4, align 8
  %226 = call i32 @unregister_netdevice(%struct.net_device* %225)
  br label %230

227:                                              ; preds = %3
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %227, %224, %219, %208, %196, %180, %170, %127, %105, %88, %78, %68, %37
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip6_tnl_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @memset(%struct.ip6_tnl_parm*, i32, i32) #1

declare dso_local i32 @copy_from_user(%struct.ip6_tnl_parm*, i32, i32) #1

declare dso_local i32 @ip6_tnl_parm_from_user(%struct.ip6_tnl_parm*, %struct.ip6_tnl_parm*) #1

declare dso_local %struct.ip6_tnl* @ip6_tnl_locate(%struct.net*, %struct.ip6_tnl_parm*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ip6_tnl*) #1

declare dso_local i32 @ip6_tnl_parm_to_user(%struct.ip6_tnl_parm*, i32*) #1

declare dso_local i32 @copy_to_user(i32, %struct.ip6_tnl_parm*, i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @ip6_tnl0_update(%struct.ip6_tnl*, %struct.ip6_tnl_parm*) #1

declare dso_local i32 @ip6_tnl_update(%struct.ip6_tnl*, %struct.ip6_tnl_parm*) #1

declare dso_local i32 @PTR_ERR(%struct.ip6_tnl*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
