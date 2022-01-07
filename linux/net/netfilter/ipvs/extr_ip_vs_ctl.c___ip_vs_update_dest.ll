; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_update_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_update_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i64, i64, i32, i32, i32, %struct.netns_ipvs* }
%struct.netns_ipvs = type { i32 }
%struct.ip_vs_dest = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_dest_user_kern = type { i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.ip_vs_scheduler = type { i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.0*)*, i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.1*)* }
%struct.ip_vs_dest.0 = type opaque
%struct.ip_vs_dest.1 = type opaque

@IP_VS_CONN_F_DEST_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_MASQ = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NOOUTPUT = common dso_local global i32 0, align 4
@FTPPORT = common dso_local global i64 0, align 8
@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@IP_VS_DEST_F_OVERLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service*, %struct.ip_vs_dest*, %struct.ip_vs_dest_user_kern*, i32)* @__ip_vs_update_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_update_dest(%struct.ip_vs_service* %0, %struct.ip_vs_dest* %1, %struct.ip_vs_dest_user_kern* %2, i32 %3) #0 {
  %5 = alloca %struct.ip_vs_service*, align 8
  %6 = alloca %struct.ip_vs_dest*, align 8
  %7 = alloca %struct.ip_vs_dest_user_kern*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netns_ipvs*, align 8
  %10 = alloca %struct.ip_vs_service*, align 8
  %11 = alloca %struct.ip_vs_scheduler*, align 8
  %12 = alloca i32, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %5, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %6, align 8
  store %struct.ip_vs_dest_user_kern* %2, %struct.ip_vs_dest_user_kern** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %14 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %13, i32 0, i32 5
  %15 = load %struct.netns_ipvs*, %struct.netns_ipvs** %14, align 8
  store %struct.netns_ipvs* %15, %struct.netns_ipvs** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %4
  %19 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %20 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %23 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br label %26

26:                                               ; preds = %18, %4
  %27 = phi i1 [ false, %4 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %34 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %37 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.netns_ipvs*, %struct.netns_ipvs** %9, align 8
  %42 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %32, %26
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %50 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %45
  %54 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %55 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %54, i32 0, i32 13
  %56 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %57 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @atomic_set(i32* %55, i32 %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %62 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %61, i32 0, i32 12
  %63 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %64 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @atomic_set(i32* %62, i32 %65)
  %67 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %68 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IP_VS_CONN_F_DEST_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %76 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %81 = call i32 @IP_VS_DFWD_METHOD(%struct.ip_vs_dest* %80)
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %99, label %83

83:                                               ; preds = %60
  %84 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %85 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %88 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %93 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %96 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91, %83, %60
  %100 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %101 = call i32 @ip_vs_rs_unhash(%struct.ip_vs_dest* %100)
  br label %102

102:                                              ; preds = %99, %91
  %103 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %104 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %107 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %109 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %112 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %114 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %117 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %116, i32 0, i32 11
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @IP_VS_CONN_F_MASQ, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %102
  %124 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %137

127:                                              ; preds = %102
  %128 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %129 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FTPPORT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %135 = call i32 @ip_vs_register_conntrack(%struct.ip_vs_service* %134)
  br label %136

136:                                              ; preds = %133, %127
  br label %137

137:                                              ; preds = %136, %123
  %138 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %139 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %138, i32 0, i32 10
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @atomic_set(i32* %139, i32 %140)
  %142 = load %struct.netns_ipvs*, %struct.netns_ipvs** %9, align 8
  %143 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %144 = call i32 @ip_vs_rs_hash(%struct.netns_ipvs* %142, %struct.ip_vs_dest* %143)
  %145 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %146 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @rcu_dereference_protected(i32 %147, i32 1)
  %149 = bitcast i8* %148 to %struct.ip_vs_service*
  store %struct.ip_vs_service* %149, %struct.ip_vs_service** %10, align 8
  %150 = load %struct.ip_vs_service*, %struct.ip_vs_service** %10, align 8
  %151 = icmp ne %struct.ip_vs_service* %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %137
  %153 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %154 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %155 = call i32 @__ip_vs_bind_svc(%struct.ip_vs_dest* %153, %struct.ip_vs_service* %154)
  br label %170

156:                                              ; preds = %137
  %157 = load %struct.ip_vs_service*, %struct.ip_vs_service** %10, align 8
  %158 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %159 = icmp ne %struct.ip_vs_service* %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %162 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %161, i32 0, i32 5
  %163 = call i32 @ip_vs_zero_stats(i32* %162)
  %164 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %165 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %166 = call i32 @__ip_vs_bind_svc(%struct.ip_vs_dest* %164, %struct.ip_vs_service* %165)
  %167 = load %struct.ip_vs_service*, %struct.ip_vs_service** %10, align 8
  %168 = call i32 @__ip_vs_svc_put(%struct.ip_vs_service* %167, i32 1)
  br label %169

169:                                              ; preds = %160, %156
  br label %170

170:                                              ; preds = %169, %152
  %171 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %172 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %173 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %177 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %170
  %181 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %182 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %185 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %183, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %180, %170
  %189 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %192 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %188, %180
  %196 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %197 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %200 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %199, i32 0, i32 3
  store i64 %198, i64* %200, align 8
  %201 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %202 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %205 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 4
  %206 = load %struct.ip_vs_dest_user_kern*, %struct.ip_vs_dest_user_kern** %7, align 8
  %207 = getelementptr inbounds %struct.ip_vs_dest_user_kern, %struct.ip_vs_dest_user_kern* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %210 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %212 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %211, i32 0, i32 6
  %213 = call i32 @spin_lock_bh(i32* %212)
  %214 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %215 = call i32 @__ip_vs_dst_cache_reset(%struct.ip_vs_dest* %214)
  %216 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %217 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %216, i32 0, i32 6
  %218 = call i32 @spin_unlock_bh(i32* %217)
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %258

221:                                              ; preds = %195
  %222 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %223 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %222, i32 0, i32 5
  %224 = load %struct.netns_ipvs*, %struct.netns_ipvs** %223, align 8
  %225 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %226 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %225, i32 0, i32 5
  %227 = call i32 @ip_vs_start_estimator(%struct.netns_ipvs* %224, i32* %226)
  %228 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %229 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %228, i32 0, i32 4
  %230 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %231 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %230, i32 0, i32 4
  %232 = call i32 @list_add_rcu(i32* %229, i32* %231)
  %233 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %234 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %238 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i8* @rcu_dereference_protected(i32 %239, i32 1)
  %241 = bitcast i8* %240 to %struct.ip_vs_scheduler*
  store %struct.ip_vs_scheduler* %241, %struct.ip_vs_scheduler** %11, align 8
  %242 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %11, align 8
  %243 = icmp ne %struct.ip_vs_scheduler* %242, null
  br i1 %243, label %244, label %257

244:                                              ; preds = %221
  %245 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %11, align 8
  %246 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %245, i32 0, i32 1
  %247 = load i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.1*)*, i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.1*)** %246, align 8
  %248 = icmp ne i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.1*)* %247, null
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %11, align 8
  %251 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %250, i32 0, i32 1
  %252 = load i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.1*)*, i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.1*)** %251, align 8
  %253 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %254 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %255 = bitcast %struct.ip_vs_dest* %254 to %struct.ip_vs_dest.1*
  %256 = call i32 %252(%struct.ip_vs_service* %253, %struct.ip_vs_dest.1* %255)
  br label %257

257:                                              ; preds = %249, %244, %221
  br label %280

258:                                              ; preds = %195
  %259 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %260 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @rcu_dereference_protected(i32 %261, i32 1)
  %263 = bitcast i8* %262 to %struct.ip_vs_scheduler*
  store %struct.ip_vs_scheduler* %263, %struct.ip_vs_scheduler** %11, align 8
  %264 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %11, align 8
  %265 = icmp ne %struct.ip_vs_scheduler* %264, null
  br i1 %265, label %266, label %279

266:                                              ; preds = %258
  %267 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %11, align 8
  %268 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %267, i32 0, i32 0
  %269 = load i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.0*)*, i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.0*)** %268, align 8
  %270 = icmp ne i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.0*)* %269, null
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %11, align 8
  %273 = getelementptr inbounds %struct.ip_vs_scheduler, %struct.ip_vs_scheduler* %272, i32 0, i32 0
  %274 = load i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.0*)*, i32 (%struct.ip_vs_service*, %struct.ip_vs_dest.0*)** %273, align 8
  %275 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %276 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %277 = bitcast %struct.ip_vs_dest* %276 to %struct.ip_vs_dest.0*
  %278 = call i32 %274(%struct.ip_vs_service* %275, %struct.ip_vs_dest.0* %277)
  br label %279

279:                                              ; preds = %271, %266, %258
  br label %280

280:                                              ; preds = %279, %257
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @IP_VS_DFWD_METHOD(%struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_rs_unhash(%struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_register_conntrack(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_rs_hash(%struct.netns_ipvs*, %struct.ip_vs_dest*) #1

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @__ip_vs_bind_svc(%struct.ip_vs_dest*, %struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_zero_stats(i32*) #1

declare dso_local i32 @__ip_vs_svc_put(%struct.ip_vs_service*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__ip_vs_dst_cache_reset(%struct.ip_vs_dest*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ip_vs_start_estimator(%struct.netns_ipvs*, i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
