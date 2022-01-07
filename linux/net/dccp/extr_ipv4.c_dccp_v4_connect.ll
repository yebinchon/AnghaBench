; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_ipv4.c_dccp_v4_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.inet_sock = type { i64, i64, i32, i64, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.flowi4 }
%struct.flowi4 = type { i64, i64 }
%struct.dccp_sock = type { i32, i32 }
%struct.rtable = type { i32, i32 }
%struct.ip_options_rcu = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }

@DCCP_ROLE_CLIENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_DCCP = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@DCCP_REQUESTING = common dso_local global i32 0, align 4
@dccp_death_row = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_v4_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.dccp_sock*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.flowi4*, align 8
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ip_options_rcu*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %8, align 8
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = call %struct.inet_sock* @inet_sk(%struct.sock* %21)
  store %struct.inet_sock* %22, %struct.inet_sock** %9, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %23)
  store %struct.dccp_sock* %24, %struct.dccp_sock** %10, align 8
  %25 = load i32, i32* @DCCP_ROLE_CLIENT, align 4
  %26 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %27 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 24
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %240

34:                                               ; preds = %3
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_INET, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EAFNOSUPPORT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %240

43:                                               ; preds = %34
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  store i64 %47, i64* %14, align 8
  %48 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %49 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = call i32 @lockdep_sock_is_held(%struct.sock* %51)
  %53 = call %struct.ip_options_rcu* @rcu_dereference_protected(i32 %50, i32 %52)
  store %struct.ip_options_rcu* %53, %struct.ip_options_rcu** %18, align 8
  %54 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %55 = icmp ne %struct.ip_options_rcu* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %43
  %57 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %58 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i64, i64* %13, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %240

68:                                               ; preds = %62
  %69 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %70 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  br label %73

73:                                               ; preds = %68, %56, %43
  %74 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %75 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %12, align 8
  %80 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %81 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store %struct.flowi4* %84, %struct.flowi4** %15, align 8
  %85 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %88 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = call i32 @RT_CONN_FLAGS(%struct.sock* %90)
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IPPROTO_DCCP, align 4
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  %99 = call %struct.rtable* @ip_route_connect(%struct.flowi4* %85, i64 %86, i64 %89, i32 %91, i32 %94, i32 %95, i64 %96, i64 %97, %struct.sock* %98)
  store %struct.rtable* %99, %struct.rtable** %16, align 8
  %100 = load %struct.rtable*, %struct.rtable** %16, align 8
  %101 = call i64 @IS_ERR(%struct.rtable* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %73
  %104 = load %struct.rtable*, %struct.rtable** %16, align 8
  %105 = call i32 @PTR_ERR(%struct.rtable* %104)
  store i32 %105, i32* %4, align 4
  br label %240

106:                                              ; preds = %73
  %107 = load %struct.rtable*, %struct.rtable** %16, align 8
  %108 = getelementptr inbounds %struct.rtable, %struct.rtable* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RTCF_MULTICAST, align 4
  %111 = load i32, i32* @RTCF_BROADCAST, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load %struct.rtable*, %struct.rtable** %16, align 8
  %117 = call i32 @ip_rt_put(%struct.rtable* %116)
  %118 = load i32, i32* @ENETUNREACH, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %240

120:                                              ; preds = %106
  %121 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %122 = icmp eq %struct.ip_options_rcu* %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %125 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %123, %120
  %130 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %131 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %13, align 8
  br label %133

133:                                              ; preds = %129, %123
  %134 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %135 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %140 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %143 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %138, %133
  %145 = load %struct.sock*, %struct.sock** %5, align 8
  %146 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %147 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @sk_rcv_saddr_set(%struct.sock* %145, i64 %148)
  %150 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %154 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.sock*, %struct.sock** %5, align 8
  %156 = load i64, i64* %13, align 8
  %157 = call i32 @sk_daddr_set(%struct.sock* %155, i64 %156)
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = call %struct.TYPE_12__* @inet_csk(%struct.sock* %158)
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  %161 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %162 = icmp ne %struct.ip_options_rcu* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %144
  %164 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %18, align 8
  %165 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.sock*, %struct.sock** %5, align 8
  %169 = call %struct.TYPE_12__* @inet_csk(%struct.sock* %168)
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  br label %171

171:                                              ; preds = %163, %144
  %172 = load %struct.sock*, %struct.sock** %5, align 8
  %173 = load i32, i32* @DCCP_REQUESTING, align 4
  %174 = call i32 @dccp_set_state(%struct.sock* %172, i32 %173)
  %175 = load %struct.sock*, %struct.sock** %5, align 8
  %176 = call i32 @inet_hash_connect(i32* @dccp_death_row, %struct.sock* %175)
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %230

180:                                              ; preds = %171
  %181 = load %struct.flowi4*, %struct.flowi4** %15, align 8
  %182 = load %struct.rtable*, %struct.rtable** %16, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %186 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %189 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.sock*, %struct.sock** %5, align 8
  %192 = call %struct.rtable* @ip_route_newports(%struct.flowi4* %181, %struct.rtable* %182, i64 %183, i64 %184, i64 %187, i64 %190, %struct.sock* %191)
  store %struct.rtable* %192, %struct.rtable** %16, align 8
  %193 = load %struct.rtable*, %struct.rtable** %16, align 8
  %194 = call i64 @IS_ERR(%struct.rtable* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %180
  %197 = load %struct.rtable*, %struct.rtable** %16, align 8
  %198 = call i32 @PTR_ERR(%struct.rtable* %197)
  store i32 %198, i32* %17, align 4
  store %struct.rtable* null, %struct.rtable** %16, align 8
  br label %230

199:                                              ; preds = %180
  %200 = load %struct.sock*, %struct.sock** %5, align 8
  %201 = load %struct.rtable*, %struct.rtable** %16, align 8
  %202 = getelementptr inbounds %struct.rtable, %struct.rtable* %201, i32 0, i32 1
  %203 = call i32 @sk_setup_caps(%struct.sock* %200, i32* %202)
  %204 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %205 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %208 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %211 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %214 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @secure_dccp_sequence_number(i64 %206, i32 %209, i64 %212, i64 %215)
  %217 = load %struct.dccp_sock*, %struct.dccp_sock** %10, align 8
  %218 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 4
  %219 = call i32 (...) @prandom_u32()
  %220 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %221 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 8
  %222 = load %struct.sock*, %struct.sock** %5, align 8
  %223 = call i32 @dccp_connect(%struct.sock* %222)
  store i32 %223, i32* %17, align 4
  store %struct.rtable* null, %struct.rtable** %16, align 8
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %199
  br label %230

227:                                              ; preds = %199
  br label %228

228:                                              ; preds = %230, %227
  %229 = load i32, i32* %17, align 4
  store i32 %229, i32* %4, align 4
  br label %240

230:                                              ; preds = %226, %196, %179
  %231 = load %struct.sock*, %struct.sock** %5, align 8
  %232 = load i32, i32* @DCCP_CLOSED, align 4
  %233 = call i32 @dccp_set_state(%struct.sock* %231, i32 %232)
  %234 = load %struct.rtable*, %struct.rtable** %16, align 8
  %235 = call i32 @ip_rt_put(%struct.rtable* %234)
  %236 = load %struct.sock*, %struct.sock** %5, align 8
  %237 = getelementptr inbounds %struct.sock, %struct.sock* %236, i32 0, i32 0
  store i64 0, i64* %237, align 8
  %238 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %239 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %238, i32 0, i32 1
  store i64 0, i64* %239, align 8
  br label %228

240:                                              ; preds = %228, %115, %103, %65, %40, %31
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ip_options_rcu* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_sock_is_held(%struct.sock*) #1

declare dso_local %struct.rtable* @ip_route_connect(%struct.flowi4*, i64, i64, i32, i32, i32, i64, i64, %struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @sk_rcv_saddr_set(%struct.sock*, i64) #1

declare dso_local i32 @sk_daddr_set(%struct.sock*, i64) #1

declare dso_local %struct.TYPE_12__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_hash_connect(i32*, %struct.sock*) #1

declare dso_local %struct.rtable* @ip_route_newports(%struct.flowi4*, %struct.rtable*, i64, i64, i64, i64, %struct.sock*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, i32*) #1

declare dso_local i32 @secure_dccp_sequence_number(i64, i32, i64, i64) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @dccp_connect(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
