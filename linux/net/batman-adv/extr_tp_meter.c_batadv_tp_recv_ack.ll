; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_recv_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tp_meter.c_batadv_tp_recv_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_hard_iface = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.batadv_orig_node = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64, i32 }
%struct.batadv_icmp_tp_packet = type { i32, i32, i64, i64, i32 }
%struct.batadv_tp_vars = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64, i32 }

@BATADV_TP_PLEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@BATADV_DBG_TP_METER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Meter: Fast Recovery, (cur cwnd=%u) ss_thr=%u last_sent=%u recv_ack=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.sk_buff*)* @batadv_tp_recv_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tp_recv_ack(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_icmp_tp_packet*, align 8
  %8 = alloca %struct.batadv_tp_vars*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %5, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %6, align 8
  %15 = load i64, i64* @BATADV_TP_PLEN, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* @BATADV_TP_PLEN, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.batadv_icmp_tp_packet*
  store %struct.batadv_icmp_tp_packet* %22, %struct.batadv_icmp_tp_packet** %7, align 8
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %24 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %25 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %28 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.batadv_tp_vars* @batadv_tp_list_find_session(%struct.batadv_priv* %23, i32 %26, i32 %29)
  store %struct.batadv_tp_vars* %30, %struct.batadv_tp_vars** %8, align 8
  %31 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %32 = icmp ne %struct.batadv_tp_vars* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %311

38:                                               ; preds = %2
  %39 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %40 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %39, i32 0, i32 12
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %286

47:                                               ; preds = %38
  %48 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %49 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ntohl(i64 %50)
  %52 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %53 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %52, i32 0, i32 6
  %54 = call i64 @atomic_read(i32* %53)
  %55 = call i64 @batadv_seq_before(i64 %51, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %286

58:                                               ; preds = %47
  %59 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %60 = call %struct.batadv_tp_vars* @batadv_primary_if_get_selected(%struct.batadv_priv* %59)
  %61 = bitcast %struct.batadv_tp_vars* %60 to %struct.batadv_hard_iface*
  store %struct.batadv_hard_iface* %61, %struct.batadv_hard_iface** %5, align 8
  %62 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %63 = icmp ne %struct.batadv_hard_iface* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %286

69:                                               ; preds = %58
  %70 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %71 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %72 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.batadv_tp_vars* @batadv_orig_hash_find(%struct.batadv_priv* %70, i32 %73)
  %75 = bitcast %struct.batadv_tp_vars* %74 to %struct.batadv_orig_node*
  store %struct.batadv_orig_node* %75, %struct.batadv_orig_node** %6, align 8
  %76 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %77 = icmp ne %struct.batadv_orig_node* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %286

83:                                               ; preds = %69
  %84 = load i32, i32* @jiffies, align 4
  %85 = call i64 @jiffies_to_msecs(i32 %84)
  %86 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %87 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @ntohl(i64 %88)
  %90 = sub i64 %85, %89
  store i64 %90, i64* %11, align 8
  %91 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %92 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load i64, i64* %11, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @batadv_tp_update_rto(%struct.batadv_tp_vars* %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %95, %83
  %103 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %104 = call i32 @batadv_tp_reset_sender_timer(%struct.batadv_tp_vars* %103)
  %105 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %106 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @ntohl(i64 %107)
  store i64 %108, i64* %12, align 8
  %109 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %110 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %109, i32 0, i32 6
  %111 = call i64 @atomic_read(i32* %110)
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %197

114:                                              ; preds = %102
  %115 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %116 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %115, i32 0, i32 8
  %117 = call i32 @atomic_inc(i32* %116)
  %118 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %119 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %118, i32 0, i32 8
  %120 = call i64 @atomic_read(i32* %119)
  %121 = icmp ne i64 %120, 3
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %286

123:                                              ; preds = %114
  %124 = load i64, i64* %12, align 8
  %125 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %126 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp uge i64 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %286

130:                                              ; preds = %123
  %131 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %132 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %133 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %132, i32 0, i32 7
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %138 = bitcast %struct.batadv_orig_node* %137 to %struct.batadv_tp_vars*
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %142 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %145 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @jiffies, align 4
  %148 = call i64 @jiffies_to_msecs(i32 %147)
  %149 = call i32 @batadv_tp_send_msg(%struct.batadv_tp_vars* %131, i8* %136, %struct.batadv_tp_vars* %138, i64 %139, i64 %140, i32 %143, i32 %146, i64 %148)
  %150 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %151 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %150, i32 0, i32 10
  %152 = call i32 @spin_lock_bh(i32* %151)
  %153 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %154 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %153, i32 0, i32 1
  store i32 1, i32* %154, align 8
  %155 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %156 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %159 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %161 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 1
  %164 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %165 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @BATADV_DBG_TP_METER, align 4
  %167 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %168 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %169 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %172 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %175 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %12, align 8
  %178 = call i32 @batadv_dbg(i32 %166, %struct.batadv_priv* %167, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %170, i32 %173, i64 %176, i64 %177)
  %179 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %180 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i64, i64* %10, align 8
  %183 = mul i64 3, %182
  %184 = load i64, i64* %10, align 8
  %185 = call i8* @batadv_tp_cwnd(i32 %181, i64 %183, i64 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %188 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  %189 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %190 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %189, i32 0, i32 11
  store i64 0, i64* %190, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %193 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %192, i32 0, i32 2
  store i64 %191, i64* %193, align 8
  %194 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %195 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %194, i32 0, i32 10
  %196 = call i32 @spin_unlock_bh(i32* %195)
  br label %282

197:                                              ; preds = %102
  %198 = load i64, i64* %12, align 8
  %199 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %200 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %199, i32 0, i32 6
  %201 = call i64 @atomic_read(i32* %200)
  %202 = sub i64 %198, %201
  %203 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %204 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %203, i32 0, i32 9
  %205 = call i32 @atomic64_add(i64 %202, i32* %204)
  %206 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %207 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %206, i32 0, i32 8
  %208 = call i32 @atomic_set(i32* %207, i64 0)
  %209 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %210 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %264

213:                                              ; preds = %197
  %214 = load i64, i64* %12, align 8
  %215 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %216 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @batadv_seq_before(i64 %214, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %250

220:                                              ; preds = %213
  %221 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %222 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %221, i32 0, i32 7
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  store i8* %225, i8** %14, align 8
  %226 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %227 = load i8*, i8** %14, align 8
  %228 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %229 = bitcast %struct.batadv_orig_node* %228 to %struct.batadv_tp_vars*
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* %9, align 8
  %232 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %233 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.batadv_icmp_tp_packet*, %struct.batadv_icmp_tp_packet** %7, align 8
  %236 = getelementptr inbounds %struct.batadv_icmp_tp_packet, %struct.batadv_icmp_tp_packet* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @jiffies, align 4
  %239 = call i64 @jiffies_to_msecs(i32 %238)
  %240 = call i32 @batadv_tp_send_msg(%struct.batadv_tp_vars* %226, i8* %227, %struct.batadv_tp_vars* %229, i64 %230, i64 %231, i32 %234, i32 %237, i64 %239)
  %241 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %242 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load i64, i64* %10, align 8
  %245 = load i64, i64* %10, align 8
  %246 = call i8* @batadv_tp_cwnd(i32 %243, i64 %244, i64 %245)
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %249 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 4
  br label %263

250:                                              ; preds = %213
  %251 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %252 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %251, i32 0, i32 1
  store i32 0, i32* %252, align 8
  %253 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %254 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i64, i64* %10, align 8
  %257 = call i8* @batadv_tp_cwnd(i32 %255, i64 0, i64 %256)
  %258 = ptrtoint i8* %257 to i64
  store i64 %258, i64* %13, align 8
  %259 = load i64, i64* %13, align 8
  %260 = trunc i64 %259 to i32
  %261 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %262 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %250, %220
  br label %277

264:                                              ; preds = %197
  %265 = load i64, i64* %12, align 8
  %266 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %267 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %266, i32 0, i32 6
  %268 = call i64 @atomic_read(i32* %267)
  %269 = sub i64 %265, %268
  %270 = load i64, i64* %10, align 8
  %271 = icmp uge i64 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %264
  %273 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %274 = load i64, i64* %10, align 8
  %275 = call i32 @batadv_tp_update_cwnd(%struct.batadv_tp_vars* %273, i64 %274)
  br label %276

276:                                              ; preds = %272, %264
  br label %277

277:                                              ; preds = %276, %263
  %278 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %279 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %278, i32 0, i32 6
  %280 = load i64, i64* %12, align 8
  %281 = call i32 @atomic_set(i32* %279, i64 %280)
  br label %282

282:                                              ; preds = %277, %130
  %283 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %284 = getelementptr inbounds %struct.batadv_tp_vars, %struct.batadv_tp_vars* %283, i32 0, i32 5
  %285 = call i32 @wake_up(i32* %284)
  br label %286

286:                                              ; preds = %282, %129, %122, %82, %68, %57, %46
  %287 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %288 = bitcast %struct.batadv_hard_iface* %287 to %struct.batadv_tp_vars*
  %289 = call i64 @likely(%struct.batadv_tp_vars* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %286
  %292 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %293 = bitcast %struct.batadv_hard_iface* %292 to %struct.batadv_tp_vars*
  %294 = call i32 @batadv_hardif_put(%struct.batadv_tp_vars* %293)
  br label %295

295:                                              ; preds = %291, %286
  %296 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %297 = bitcast %struct.batadv_orig_node* %296 to %struct.batadv_tp_vars*
  %298 = call i64 @likely(%struct.batadv_tp_vars* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %302 = bitcast %struct.batadv_orig_node* %301 to %struct.batadv_tp_vars*
  %303 = call i32 @batadv_orig_node_put(%struct.batadv_tp_vars* %302)
  br label %304

304:                                              ; preds = %300, %295
  %305 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %306 = call i64 @likely(%struct.batadv_tp_vars* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load %struct.batadv_tp_vars*, %struct.batadv_tp_vars** %8, align 8
  %310 = call i32 @batadv_tp_vars_put(%struct.batadv_tp_vars* %309)
  br label %311

311:                                              ; preds = %37, %308, %304
  ret void
}

declare dso_local %struct.batadv_tp_vars* @batadv_tp_list_find_session(%struct.batadv_priv*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @batadv_seq_before(i64, i64) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local %struct.batadv_tp_vars* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_tp_vars* @batadv_orig_hash_find(%struct.batadv_priv*, i32) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @batadv_tp_update_rto(%struct.batadv_tp_vars*, i64) #1

declare dso_local i32 @batadv_tp_reset_sender_timer(%struct.batadv_tp_vars*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @batadv_tp_send_msg(%struct.batadv_tp_vars*, i8*, %struct.batadv_tp_vars*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32, i32, i64, i64) #1

declare dso_local i8* @batadv_tp_cwnd(i32, i64, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @batadv_tp_update_cwnd(%struct.batadv_tp_vars*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @likely(%struct.batadv_tp_vars*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_tp_vars*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_tp_vars*) #1

declare dso_local i32 @batadv_tp_vars_put(%struct.batadv_tp_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
