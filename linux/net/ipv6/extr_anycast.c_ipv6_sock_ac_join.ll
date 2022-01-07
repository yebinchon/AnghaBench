; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_sock_ac_join.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_anycast.c_ipv6_sock_ac_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6_pinfo = type { %struct.ipv6_ac_socklist* }
%struct.ipv6_ac_socklist = type { %struct.ipv6_ac_socklist*, i32, %struct.in6_addr }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rt6_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.net_device* }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFA_F_TENTATIVE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6_sock_ac_join(%struct.sock* %0, i32 %1, %struct.in6_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca %struct.ipv6_pinfo*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  %11 = alloca %struct.ipv6_ac_socklist*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rt6_info*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %16)
  store %struct.ipv6_pinfo* %17, %struct.ipv6_pinfo** %8, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.net* @sock_net(%struct.sock* %18)
  store %struct.net* %19, %struct.net** %12, align 8
  %20 = load %struct.net*, %struct.net** %12, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = call i32 (...) @ASSERT_RTNL()
  %30 = load %struct.net*, %struct.net** %12, align 8
  %31 = getelementptr inbounds %struct.net, %struct.net* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CAP_NET_ADMIN, align 4
  %34 = call i32 @ns_capable(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %184

39:                                               ; preds = %3
  %40 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %41 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %184

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.net*, %struct.net** %12, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.net_device* @__dev_get_by_index(%struct.net* %50, i32 %51)
  store %struct.net_device* %52, %struct.net_device** %9, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.net*, %struct.net** %12, align 8
  %55 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %56 = load %struct.net_device*, %struct.net_device** %9, align 8
  %57 = load i32, i32* @IFA_F_TENTATIVE, align 4
  %58 = call i64 @ipv6_chk_addr_and_flags(%struct.net* %54, %struct.in6_addr* %55, %struct.net_device* %56, i32 1, i32 0, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %184

63:                                               ; preds = %53
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.ipv6_ac_socklist* @sock_kmalloc(%struct.sock* %64, i32 16, i32 %65)
  store %struct.ipv6_ac_socklist* %66, %struct.ipv6_ac_socklist** %11, align 8
  %67 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %68 = icmp ne %struct.ipv6_ac_socklist* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %184

72:                                               ; preds = %63
  %73 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %74 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %73, i32 0, i32 0
  store %struct.ipv6_ac_socklist* null, %struct.ipv6_ac_socklist** %74, align 8
  %75 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %76 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %75, i32 0, i32 2
  %77 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %78 = bitcast %struct.in6_addr* %76 to i8*
  %79 = bitcast %struct.in6_addr* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %72
  %83 = load %struct.net*, %struct.net** %12, align 8
  %84 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %85 = call %struct.rt6_info* @rt6_lookup(%struct.net* %83, %struct.in6_addr* %84, i32* null, i32 0, i32* null, i32 0)
  store %struct.rt6_info* %85, %struct.rt6_info** %15, align 8
  %86 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %87 = icmp ne %struct.rt6_info* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %90 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.net_device*, %struct.net_device** %91, align 8
  store %struct.net_device* %92, %struct.net_device** %9, align 8
  %93 = load %struct.rt6_info*, %struct.rt6_info** %15, align 8
  %94 = call i32 @ip6_rt_put(%struct.rt6_info* %93)
  br label %109

95:                                               ; preds = %82
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @EADDRNOTAVAIL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %14, align 4
  br label %175

101:                                              ; preds = %95
  %102 = load %struct.net*, %struct.net** %12, align 8
  %103 = load i32, i32* @IFF_UP, align 4
  %104 = load i32, i32* @IFF_UP, align 4
  %105 = load i32, i32* @IFF_LOOPBACK, align 4
  %106 = or i32 %104, %105
  %107 = call %struct.net_device* @__dev_get_by_flags(%struct.net* %102, i32 %103, i32 %106)
  store %struct.net_device* %107, %struct.net_device** %9, align 8
  br label %108

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %72
  %111 = load %struct.net_device*, %struct.net_device** %9, align 8
  %112 = icmp ne %struct.net_device* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %14, align 4
  br label %175

116:                                              ; preds = %110
  %117 = load %struct.net_device*, %struct.net_device** %9, align 8
  %118 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %117)
  store %struct.inet6_dev* %118, %struct.inet6_dev** %10, align 8
  %119 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %120 = icmp ne %struct.inet6_dev* %119, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @ENODEV, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EADDRNOTAVAIL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %127, %124
  br label %175

131:                                              ; preds = %116
  %132 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %133 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %13, align 4
  %139 = load %struct.net_device*, %struct.net_device** %9, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %143 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %145 = load %struct.net_device*, %struct.net_device** %9, align 8
  %146 = call i32 @ipv6_chk_prefix(%struct.in6_addr* %144, %struct.net_device* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %131
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @EADDRNOTAVAIL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %14, align 4
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %175

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %131
  %160 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %161 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %162 = call i32 @__ipv6_dev_ac_inc(%struct.inet6_dev* %160, %struct.in6_addr* %161)
  store i32 %162, i32* %14, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %159
  %166 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %167 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %166, i32 0, i32 0
  %168 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %167, align 8
  %169 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %170 = getelementptr inbounds %struct.ipv6_ac_socklist, %struct.ipv6_ac_socklist* %169, i32 0, i32 0
  store %struct.ipv6_ac_socklist* %168, %struct.ipv6_ac_socklist** %170, align 8
  %171 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %172 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %8, align 8
  %173 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %172, i32 0, i32 0
  store %struct.ipv6_ac_socklist* %171, %struct.ipv6_ac_socklist** %173, align 8
  store %struct.ipv6_ac_socklist* null, %struct.ipv6_ac_socklist** %11, align 8
  br label %174

174:                                              ; preds = %165, %159
  br label %175

175:                                              ; preds = %174, %157, %130, %113, %98
  %176 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %177 = icmp ne %struct.ipv6_ac_socklist* %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.sock*, %struct.sock** %5, align 8
  %180 = load %struct.ipv6_ac_socklist*, %struct.ipv6_ac_socklist** %11, align 8
  %181 = call i32 @sock_kfree_s(%struct.sock* %179, %struct.ipv6_ac_socklist* %180, i32 16)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %69, %60, %43, %36
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i64 @ipv6_chk_addr_and_flags(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32, i32, i32) #1

declare dso_local %struct.ipv6_ac_socklist* @sock_kmalloc(%struct.sock*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.rt6_info* @rt6_lookup(%struct.net*, %struct.in6_addr*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

declare dso_local %struct.net_device* @__dev_get_by_flags(%struct.net*, i32, i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @ipv6_chk_prefix(%struct.in6_addr*, %struct.net_device*) #1

declare dso_local i32 @__ipv6_dev_ac_inc(%struct.inet6_dev*, %struct.in6_addr*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.ipv6_ac_socklist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
