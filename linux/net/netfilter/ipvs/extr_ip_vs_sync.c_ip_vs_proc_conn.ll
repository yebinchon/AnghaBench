; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_conn_param = type { i32, i32, i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_sync_conn_options = type { i32, i32 }
%struct.ip_vs_dest = type { i32, i32 }
%struct.ip_vs_conn = type { i64, i32, i32, i32, i64, i32, i32, i32, i32, %struct.ip_vs_dest*, i32, i32 }
%struct.ip_vs_proto_data = type { i64* }

@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_BACKUP_UPD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"BACKUP, add new conn. failed\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ip_vs_conn_param*, i32, i32, i32, i32, %union.nf_inet_addr*, i64, i64, i32, %struct.ip_vs_sync_conn_options*)* @ip_vs_proc_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_proc_conn(%struct.netns_ipvs* %0, %struct.ip_vs_conn_param* %1, i32 %2, i32 %3, i32 %4, i32 %5, %union.nf_inet_addr* %6, i64 %7, i64 %8, i32 %9, %struct.ip_vs_sync_conn_options* %10) #0 {
  %12 = alloca %struct.netns_ipvs*, align 8
  %13 = alloca %struct.ip_vs_conn_param*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.nf_inet_addr*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ip_vs_sync_conn_options*, align 8
  %23 = alloca %struct.ip_vs_dest*, align 8
  %24 = alloca %struct.ip_vs_conn*, align 8
  %25 = alloca %struct.ip_vs_proto_data*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %12, align 8
  store %struct.ip_vs_conn_param* %1, %struct.ip_vs_conn_param** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %union.nf_inet_addr* %6, %union.nf_inet_addr** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store %struct.ip_vs_sync_conn_options* %10, %struct.ip_vs_sync_conn_options** %22, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %11
  %31 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %32 = call %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param* %31)
  store %struct.ip_vs_conn* %32, %struct.ip_vs_conn** %24, align 8
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %34 = icmp ne %struct.ip_vs_conn* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %37 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %19, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %43 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %46 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %45, i32 0, i32 10
  %47 = load %union.nf_inet_addr*, %union.nf_inet_addr** %18, align 8
  %48 = call i32 @ip_vs_addr_equal(i32 %44, i32* %46, %union.nf_inet_addr* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %41, %35
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %57 = call i32 @ip_vs_conn_expire_now(%struct.ip_vs_conn* %56)
  %58 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %59 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %58)
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %24, align 8
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %62 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %61)
  %63 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %64 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @kfree(i32 %65)
  br label %272

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %41, %30
  br label %72

69:                                               ; preds = %11
  %70 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %71 = call %struct.ip_vs_conn* @ip_vs_ct_in_get(%struct.ip_vs_conn_param* %70)
  store %struct.ip_vs_conn* %71, %struct.ip_vs_conn** %24, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %74 = icmp ne %struct.ip_vs_conn* %73, null
  br i1 %74, label %75, label %146

75:                                               ; preds = %72
  %76 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %77 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @kfree(i32 %78)
  %80 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %81 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %80, i32 0, i32 9
  %82 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %81, align 8
  store %struct.ip_vs_dest* %82, %struct.ip_vs_dest** %23, align 8
  %83 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %84 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %83, i32 0, i32 8
  %85 = call i32 @spin_lock_bh(i32* %84)
  %86 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %87 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = xor i32 %88, %89
  %91 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %75
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %122, label %99

99:                                               ; preds = %94
  %100 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %101 = icmp ne %struct.ip_vs_dest* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %109 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %108, i32 0, i32 1
  %110 = call i32 @atomic_dec(i32* %109)
  %111 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %112 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %111, i32 0, i32 0
  %113 = call i32 @atomic_inc(i32* %112)
  br label %121

114:                                              ; preds = %102
  %115 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %116 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %115, i32 0, i32 1
  %117 = call i32 @atomic_inc(i32* %116)
  %118 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %119 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %118, i32 0, i32 0
  %120 = call i32 @atomic_dec(i32* %119)
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %99, %94, %75
  %123 = load i32, i32* @IP_VS_CONN_F_BACKUP_UPD_MASK, align 4
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %127 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IP_VS_CONN_F_BACKUP_UPD_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = load i32, i32* %14, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %136 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %138 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %137, i32 0, i32 8
  %139 = call i32 @spin_unlock_bh(i32* %138)
  %140 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %141 = icmp ne %struct.ip_vs_dest* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %122
  %143 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %144 = call i32 @ip_vs_try_bind_dest(%struct.ip_vs_conn* %143)
  br label %145

145:                                              ; preds = %142, %122
  br label %191

146:                                              ; preds = %72
  %147 = call i32 (...) @rcu_read_lock()
  %148 = load %struct.netns_ipvs*, %struct.netns_ipvs** %12, align 8
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load %union.nf_inet_addr*, %union.nf_inet_addr** %18, align 8
  %152 = load i64, i64* %19, align 8
  %153 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %154 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %157 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call %struct.ip_vs_dest* @ip_vs_find_dest(%struct.netns_ipvs* %148, i32 %149, i32 %150, %union.nf_inet_addr* %151, i64 %152, i32 %155, i32 %158, i32 %159, i32 %160, i32 %161)
  store %struct.ip_vs_dest* %162, %struct.ip_vs_dest** %23, align 8
  %163 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load %union.nf_inet_addr*, %union.nf_inet_addr** %18, align 8
  %166 = load i64, i64* %19, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %23, align 8
  %169 = load i32, i32* %21, align 4
  %170 = call %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param* %163, i32 %164, %union.nf_inet_addr* %165, i64 %166, i32 %167, %struct.ip_vs_dest* %168, i32 %169)
  store %struct.ip_vs_conn* %170, %struct.ip_vs_conn** %24, align 8
  %171 = call i32 (...) @rcu_read_unlock()
  %172 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %173 = icmp ne %struct.ip_vs_conn* %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %146
  %175 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %176 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @kfree(i32 %177)
  %179 = call i32 @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %272

180:                                              ; preds = %146
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %187 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @kfree(i32 %188)
  br label %190

190:                                              ; preds = %185, %180
  br label %191

191:                                              ; preds = %190, %145
  %192 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %22, align 8
  %193 = icmp ne %struct.ip_vs_sync_conn_options* %192, null
  br i1 %193, label %194, label %205

194:                                              ; preds = %191
  %195 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %22, align 8
  %196 = getelementptr inbounds %struct.ip_vs_sync_conn_options, %struct.ip_vs_sync_conn_options* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %199 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 8
  %200 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %22, align 8
  %201 = getelementptr inbounds %struct.ip_vs_sync_conn_options, %struct.ip_vs_sync_conn_options* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %204 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %194, %191
  %206 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %207 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %206, i32 0, i32 5
  %208 = load %struct.netns_ipvs*, %struct.netns_ipvs** %12, align 8
  %209 = call i32 @sysctl_sync_threshold(%struct.netns_ipvs* %208)
  %210 = call i32 @atomic_set(i32* %207, i32 %209)
  %211 = load i32, i32* %15, align 4
  %212 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %213 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  %214 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %215 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %218 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 8
  %219 = load i64, i64* %20, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %205
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %224 = load i64, i64* @HZ, align 8
  %225 = udiv i64 %223, %224
  %226 = icmp ugt i64 %222, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %229 = load i64, i64* @HZ, align 8
  %230 = udiv i64 %228, %229
  store i64 %230, i64* %20, align 8
  br label %231

231:                                              ; preds = %227, %221
  %232 = load i64, i64* %20, align 8
  %233 = load i64, i64* @HZ, align 8
  %234 = mul i64 %232, %233
  %235 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %236 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %235, i32 0, i32 4
  store i64 %234, i64* %236, align 8
  br label %269

237:                                              ; preds = %205
  %238 = load %struct.netns_ipvs*, %struct.netns_ipvs** %12, align 8
  %239 = load i32, i32* %16, align 4
  %240 = call %struct.ip_vs_proto_data* @ip_vs_proto_data_get(%struct.netns_ipvs* %238, i32 %239)
  store %struct.ip_vs_proto_data* %240, %struct.ip_vs_proto_data** %25, align 8
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %263, label %245

245:                                              ; preds = %237
  %246 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %25, align 8
  %247 = icmp ne %struct.ip_vs_proto_data* %246, null
  br i1 %247, label %248, label %263

248:                                              ; preds = %245
  %249 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %25, align 8
  %250 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = icmp ne i64* %251, null
  br i1 %252, label %253, label %263

253:                                              ; preds = %248
  %254 = load %struct.ip_vs_proto_data*, %struct.ip_vs_proto_data** %25, align 8
  %255 = getelementptr inbounds %struct.ip_vs_proto_data, %struct.ip_vs_proto_data* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %15, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %262 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %261, i32 0, i32 4
  store i64 %260, i64* %262, align 8
  br label %268

263:                                              ; preds = %248, %245, %237
  %264 = load i64, i64* @HZ, align 8
  %265 = mul i64 180, %264
  %266 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %267 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %266, i32 0, i32 4
  store i64 %265, i64* %267, align 8
  br label %268

268:                                              ; preds = %263, %253
  br label %269

269:                                              ; preds = %268, %231
  %270 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %24, align 8
  %271 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn* %270)
  br label %272

272:                                              ; preds = %269, %174, %60
  ret void
}

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param*) #1

declare dso_local i32 @ip_vs_addr_equal(i32, i32*, %union.nf_inet_addr*) #1

declare dso_local i32 @ip_vs_conn_expire_now(%struct.ip_vs_conn*) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_ct_in_get(%struct.ip_vs_conn_param*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ip_vs_try_bind_dest(%struct.ip_vs_conn*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_find_dest(%struct.netns_ipvs*, i32, i32, %union.nf_inet_addr*, i64, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param*, i32, %union.nf_inet_addr*, i64, i32, %struct.ip_vs_dest*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sysctl_sync_threshold(%struct.netns_ipvs*) #1

declare dso_local %struct.ip_vs_proto_data* @ip_vs_proto_data_get(%struct.netns_ipvs*, i32) #1

declare dso_local i32 @ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
