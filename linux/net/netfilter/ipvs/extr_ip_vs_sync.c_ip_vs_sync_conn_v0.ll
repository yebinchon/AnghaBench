; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn_v0.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32, i32, %struct.ipvs_master_sync_state* }
%struct.ipvs_master_sync_state = type { %struct.ip_vs_sync_buff* }
%struct.ip_vs_sync_buff = type { i64, i64, i64 }
%struct.ip_vs_conn = type { i64, i32, i32, i32, %struct.ip_vs_conn*, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ip_vs_sync_mesg_v0 = type { i8*, i32 }
%struct.ip_vs_sync_conn_v0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ip_vs_sync_conn_options = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SEQ_MASK = common dso_local global i32 0, align 4
@FULL_CONN_SIZE = common dso_local global i32 0, align 4
@SIMPLE_CONN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ip_vs_sync_buff_create failed.\0A\00", align 1
@IP_VS_CONN_F_HASHED = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, %struct.ip_vs_conn*, i32)* @ip_vs_sync_conn_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_sync_conn_v0(%struct.netns_ipvs* %0, %struct.ip_vs_conn* %1, i32 %2) #0 {
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_sync_mesg_v0*, align 8
  %8 = alloca %struct.ip_vs_sync_conn_v0*, align 8
  %9 = alloca %struct.ip_vs_sync_buff*, align 8
  %10 = alloca %struct.ipvs_master_sync_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_vs_sync_conn_options*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %15 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %249

23:                                               ; preds = %3
  %24 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %25 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %249

31:                                               ; preds = %23
  %32 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ip_vs_sync_conn_needed(%struct.netns_ipvs* %32, %struct.ip_vs_conn* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %249

38:                                               ; preds = %31
  %39 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %40 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %43 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %50 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_bh(i32* %50)
  br label %249

52:                                               ; preds = %38
  %53 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %54 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %55 = call i32 @select_master_thread_id(%struct.netns_ipvs* %53, %struct.ip_vs_conn* %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %57 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %56, i32 0, i32 2
  %58 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %58, i64 %60
  store %struct.ipvs_master_sync_state* %61, %struct.ipvs_master_sync_state** %10, align 8
  %62 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %63 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %62, i32 0, i32 0
  %64 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %63, align 8
  store %struct.ip_vs_sync_buff* %64, %struct.ip_vs_sync_buff** %9, align 8
  %65 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %66 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %52
  %72 = load i32, i32* @FULL_CONN_SIZE, align 4
  br label %75

73:                                               ; preds = %52
  %74 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %12, align 4
  %77 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %78 = icmp ne %struct.ip_vs_sync_buff* %77, null
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %81 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ip_vs_sync_mesg_v0*
  store %struct.ip_vs_sync_mesg_v0* %83, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %84 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %85 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %91 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %79
  %95 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %96 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %94, %79
  %100 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %101 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %102 = call i32 @sb_queue_tail(%struct.netns_ipvs* %100, %struct.ipvs_master_sync_state* %101)
  %103 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %104 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %103, i32 0, i32 0
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %104, align 8
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %9, align 8
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105, %75
  %107 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %108 = icmp ne %struct.ip_vs_sync_buff* %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %106
  %110 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call %struct.ip_vs_sync_buff* @ip_vs_sync_buff_create_v0(%struct.netns_ipvs* %110, i32 %111)
  store %struct.ip_vs_sync_buff* %112, %struct.ip_vs_sync_buff** %9, align 8
  %113 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %114 = icmp ne %struct.ip_vs_sync_buff* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %117 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %249

120:                                              ; preds = %109
  %121 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %122 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %123 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %122, i32 0, i32 0
  store %struct.ip_vs_sync_buff* %121, %struct.ip_vs_sync_buff** %123, align 8
  br label %124

124:                                              ; preds = %120, %106
  %125 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %126 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.ip_vs_sync_mesg_v0*
  store %struct.ip_vs_sync_mesg_v0* %128, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %129 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %130 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.ip_vs_sync_conn_v0*
  store %struct.ip_vs_sync_conn_v0* %132, %struct.ip_vs_sync_conn_v0** %8, align 8
  %133 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %134 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %133, i32 0, i32 9
  store i64 0, i64* %134, align 8
  %135 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %136 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %139 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %141 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %144 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %146 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %149 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 8
  %150 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %151 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %154 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %156 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %160 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %162 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %166 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %168 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %172 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %174 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %177 = xor i32 %176, -1
  %178 = and i32 %175, %177
  %179 = call i8* @htons(i32 %178)
  %180 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %181 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %183 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @htons(i32 %184)
  %186 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %187 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  %188 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %189 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %124
  %195 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %196 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %195, i64 1
  %197 = bitcast %struct.ip_vs_sync_conn_v0* %196 to %struct.ip_vs_sync_conn_options*
  store %struct.ip_vs_sync_conn_options* %197, %struct.ip_vs_sync_conn_options** %13, align 8
  %198 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %13, align 8
  %199 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %200 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %199, i32 0, i32 5
  %201 = call i32 @memcpy(%struct.ip_vs_sync_conn_options* %198, i32* %200, i32 4)
  br label %202

202:                                              ; preds = %194, %124
  %203 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %204 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %208 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @ntohs(i8* %209)
  %211 = load i32, i32* %12, align 4
  %212 = add i32 %210, %211
  %213 = call i8* @htons(i32 %212)
  %214 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %215 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* %12, align 4
  %217 = zext i32 %216 to i64
  %218 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %219 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, %217
  store i64 %221, i64* %219, align 8
  %222 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %223 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %222, i32 0, i32 1
  %224 = call i32 @spin_unlock_bh(i32* %223)
  %225 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %226 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %225, i32 0, i32 4
  %227 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %226, align 8
  store %struct.ip_vs_conn* %227, %struct.ip_vs_conn** %5, align 8
  %228 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %229 = icmp ne %struct.ip_vs_conn* %228, null
  br i1 %229, label %230, label %249

230:                                              ; preds = %202
  %231 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %232 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %239 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %238, i32 0, i32 3
  %240 = call i32 @atomic_add_return(i32 1, i32* %239)
  store i32 %240, i32* %6, align 4
  br label %244

241:                                              ; preds = %230
  %242 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %243 = call i32 @sysctl_sync_threshold(%struct.netns_ipvs* %242)
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %241, %237
  %245 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %246 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @ip_vs_sync_conn(%struct.netns_ipvs* %245, %struct.ip_vs_conn* %246, i32 %247)
  br label %249

249:                                              ; preds = %22, %30, %37, %48, %115, %244, %202
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_vs_sync_conn_needed(%struct.netns_ipvs*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @select_master_thread_id(%struct.netns_ipvs*, %struct.ip_vs_conn*) #1

declare dso_local i32 @sb_queue_tail(%struct.netns_ipvs*, %struct.ipvs_master_sync_state*) #1

declare dso_local %struct.ip_vs_sync_buff* @ip_vs_sync_buff_create_v0(%struct.netns_ipvs*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(%struct.ip_vs_sync_conn_options*, i32*, i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @sysctl_sync_threshold(%struct.netns_ipvs*) #1

declare dso_local i32 @ip_vs_sync_conn(%struct.netns_ipvs*, %struct.ip_vs_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
