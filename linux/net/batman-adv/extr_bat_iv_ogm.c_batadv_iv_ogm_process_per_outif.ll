; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_process_per_outif.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_process_per_outif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_hardif_neigh_node = type { i32 }
%struct.batadv_neigh_node = type { i32*, %struct.batadv_orig_node* }
%struct.batadv_orig_ifinfo = type { i64, i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.batadv_ogm_packet = type { i64, i32, i32, i32*, i32* }
%struct.ethhdr = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_PROTECTED = common dso_local global i32 0, align 4
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Drop packet: packet within seqno protection time (sender: %pM)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Drop packet: originator packet with tq equal 0\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Drop packet: ignoring all rebroadcast packets that may make me loop (sender: %pM)\0A\00", align 1
@BATADV_IF_DEFAULT = common dso_local global %struct.batadv_hard_iface* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Drop packet: OGM via unknown neighbor!\0A\00", align 1
@BATADV_NO_DUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [72 x i8] c"Drop packet: OGM from secondary interface and wrong outgoing interface\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"Forwarding packet: rebroadcast neighbor packet with direct link flag\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Drop packet: not received via bidirectional link\0A\00", align 1
@BATADV_NEIGH_DUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Drop packet: duplicate packet received\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Forwarding packet: rebroadcast originator packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.batadv_orig_node*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*)* @batadv_iv_ogm_process_per_outif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_process_per_outif(%struct.sk_buff* %0, i32 %1, %struct.batadv_orig_node* %2, %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.batadv_orig_node*, align 8
  %9 = alloca %struct.batadv_hard_iface*, align 8
  %10 = alloca %struct.batadv_hard_iface*, align 8
  %11 = alloca %struct.batadv_priv*, align 8
  %12 = alloca %struct.batadv_hardif_neigh_node*, align 8
  %13 = alloca %struct.batadv_neigh_node*, align 8
  %14 = alloca %struct.batadv_neigh_node*, align 8
  %15 = alloca %struct.batadv_orig_node*, align 8
  %16 = alloca %struct.batadv_orig_ifinfo*, align 8
  %17 = alloca %struct.batadv_neigh_node*, align 8
  %18 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %19 = alloca %struct.batadv_ogm_packet*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.sk_buff*, align 8
  %26 = alloca %struct.ethhdr*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %8, align 8
  store %struct.batadv_hard_iface* %3, %struct.batadv_hard_iface** %9, align 8
  store %struct.batadv_hard_iface* %4, %struct.batadv_hard_iface** %10, align 8
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %30 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.batadv_priv* @netdev_priv(i32 %31)
  store %struct.batadv_priv* %32, %struct.batadv_priv** %11, align 8
  store %struct.batadv_hardif_neigh_node* null, %struct.batadv_hardif_neigh_node** %12, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %13, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %14, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %17, align 8
  store %struct.batadv_neigh_ifinfo* null, %struct.batadv_neigh_ifinfo** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %25, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %5
  br label %374

39:                                               ; preds = %5
  %40 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %41 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %40)
  store %struct.ethhdr* %41, %struct.ethhdr** %26, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = inttoptr i64 %47 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %48, %struct.batadv_ogm_packet** %19, align 8
  %49 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %50 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %51 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %52 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %53 = call i32 @batadv_iv_ogm_update_seqnos(%struct.ethhdr* %49, %struct.batadv_ogm_packet* %50, %struct.batadv_hard_iface* %51, %struct.batadv_hard_iface* %52)
  store i32 %53, i32* %20, align 4
  %54 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %58 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @batadv_compare_eth(i32* %56, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %39
  store i32 1, i32* %22, align 4
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* @BATADV_PROTECTED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %69 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %70 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %71 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %68, %struct.batadv_priv* %69, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32* %72)
  br label %341

74:                                               ; preds = %63
  %75 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %76 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %81 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %82 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %80, %struct.batadv_priv* %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %341

83:                                               ; preds = %74
  %84 = load i32, i32* %22, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %88 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %89 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface* %87, i32* %90)
  store %struct.batadv_hardif_neigh_node* %91, %struct.batadv_hardif_neigh_node** %12, align 8
  %92 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %12, align 8
  %93 = icmp ne %struct.batadv_hardif_neigh_node* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* @jiffies, align 4
  %96 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %12, align 8
  %97 = getelementptr inbounds %struct.batadv_hardif_neigh_node, %struct.batadv_hardif_neigh_node* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %86
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %101 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %102 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %100, %struct.batadv_hard_iface* %101)
  store %struct.batadv_neigh_node* %102, %struct.batadv_neigh_node** %13, align 8
  %103 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %104 = icmp ne %struct.batadv_neigh_node* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %107 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %106, i32 0, i32 1
  %108 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %107, align 8
  %109 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %110 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %108, %struct.batadv_hard_iface* %109)
  store %struct.batadv_neigh_node* %110, %struct.batadv_neigh_node** %14, align 8
  %111 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %112 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %113 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %111, %struct.batadv_hard_iface* %112)
  store %struct.batadv_neigh_ifinfo* %113, %struct.batadv_neigh_ifinfo** %18, align 8
  br label %114

114:                                              ; preds = %105, %99
  %115 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %116 = icmp ne %struct.batadv_neigh_ifinfo* %115, null
  br i1 %116, label %117, label %133

117:                                              ; preds = %114
  %118 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %119 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %125 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %128 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @batadv_compare_eth(i32* %126, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 1, i32* %21, align 4
  br label %133

133:                                              ; preds = %132, %123, %117, %114
  %134 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %135 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %27, align 8
  %137 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %138 = icmp ne %struct.batadv_neigh_node* %137, null
  br i1 %138, label %139, label %172

139:                                              ; preds = %133
  %140 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %14, align 8
  %141 = icmp ne %struct.batadv_neigh_node* %140, null
  br i1 %141, label %142, label %172

142:                                              ; preds = %139
  %143 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %144 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** %27, align 8
  %147 = call i64 @batadv_compare_eth(i32* %145, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %142
  %150 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %151 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32*, i32** %27, align 8
  %154 = call i64 @batadv_compare_eth(i32* %152, i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %149
  %157 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %158 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %14, align 8
  %161 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i64 @batadv_compare_eth(i32* %159, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %167 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %168 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %169 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %166, %struct.batadv_priv* %167, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32* %170)
  br label %341

172:                                              ; preds = %156, %149, %142, %139, %133
  %173 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %174 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  %175 = icmp eq %struct.batadv_hard_iface* %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %178 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %179 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %180 = call i32 @batadv_tvlv_ogm_receive(%struct.batadv_priv* %177, %struct.batadv_ogm_packet* %178, %struct.batadv_orig_node* %179)
  br label %181

181:                                              ; preds = %176, %172
  %182 = load i32, i32* %22, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  store %struct.batadv_orig_node* %185, %struct.batadv_orig_node** %15, align 8
  br label %192

186:                                              ; preds = %181
  %187 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %188 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %189 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call %struct.batadv_orig_node* @batadv_iv_ogm_orig_get(%struct.batadv_priv* %187, i32* %190)
  store %struct.batadv_orig_node* %191, %struct.batadv_orig_node** %15, align 8
  br label %192

192:                                              ; preds = %186, %184
  %193 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %194 = icmp ne %struct.batadv_orig_node* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  br label %341

196:                                              ; preds = %192
  %197 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %198 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %199 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %200 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %201 = load i32, i32* %22, align 4
  %202 = call i32 @batadv_nc_update_nc_node(%struct.batadv_priv* %197, %struct.batadv_orig_node* %198, %struct.batadv_orig_node* %199, %struct.batadv_ogm_packet* %200, i32 %201)
  %203 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %204 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %205 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %203, %struct.batadv_hard_iface* %204)
  store %struct.batadv_neigh_node* %205, %struct.batadv_neigh_node** %17, align 8
  %206 = load i32, i32* %22, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %196
  %209 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %17, align 8
  %210 = icmp ne %struct.batadv_neigh_node* %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %213 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %214 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %212, %struct.batadv_priv* %213, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %331

215:                                              ; preds = %208, %196
  %216 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %217 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %218 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %219 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %220 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %221 = call i32 @batadv_iv_ogm_calc_tq(%struct.batadv_orig_node* %216, %struct.batadv_orig_node* %217, %struct.batadv_ogm_packet* %218, %struct.batadv_hard_iface* %219, %struct.batadv_hard_iface* %220)
  store i32 %221, i32* %28, align 4
  %222 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %223 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %224 = call %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_new(%struct.batadv_orig_node* %222, %struct.batadv_hard_iface* %223)
  store %struct.batadv_orig_ifinfo* %224, %struct.batadv_orig_ifinfo** %16, align 8
  %225 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %16, align 8
  %226 = icmp ne %struct.batadv_orig_ifinfo* %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %215
  br label %331

228:                                              ; preds = %215
  %229 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %16, align 8
  %230 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %233 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @ntohl(i32 %234)
  %236 = icmp eq i64 %231, %235
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %23, align 4
  %238 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %16, align 8
  %239 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 3
  %242 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %243 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp sle i32 %241, %244
  %246 = zext i1 %245 to i32
  store i32 %246, i32* %24, align 4
  %247 = load i32, i32* %28, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %269

249:                                              ; preds = %228
  %250 = load i32, i32* %20, align 4
  %251 = load i32, i32* @BATADV_NO_DUP, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %259, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* %23, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %253
  %257 = load i32, i32* %24, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %256, %249
  %260 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %261 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %262 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %16, align 8
  %263 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %264 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %265 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %266 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %267 = load i32, i32* %20, align 4
  %268 = call i32 @batadv_iv_ogm_orig_update(%struct.batadv_priv* %260, %struct.batadv_orig_node* %261, %struct.batadv_orig_ifinfo* %262, %struct.ethhdr* %263, %struct.batadv_ogm_packet* %264, %struct.batadv_hard_iface* %265, %struct.batadv_hard_iface* %266, i32 %267)
  br label %269

269:                                              ; preds = %259, %256, %253, %228
  %270 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %16, align 8
  %271 = call i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo* %270)
  %272 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %273 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  %274 = icmp eq %struct.batadv_hard_iface* %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  br label %331

276:                                              ; preds = %269
  %277 = load i32, i32* %22, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %304

279:                                              ; preds = %276
  %280 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %281 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = icmp sle i32 %282, 2
  br i1 %283, label %284, label %292

284:                                              ; preds = %279
  %285 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %286 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %287 = icmp ne %struct.batadv_hard_iface* %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %290 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %291 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %289, %struct.batadv_priv* %290, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  br label %331

292:                                              ; preds = %284, %279
  %293 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %294 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %295 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %296 = load i32, i32* %22, align 4
  %297 = load i32, i32* %21, align 4
  %298 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %299 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %300 = call i32 @batadv_iv_ogm_forward(%struct.batadv_orig_node* %293, %struct.ethhdr* %294, %struct.batadv_ogm_packet* %295, i32 %296, i32 %297, %struct.batadv_hard_iface* %298, %struct.batadv_hard_iface* %299)
  %301 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %302 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %303 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %301, %struct.batadv_priv* %302, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  br label %331

304:                                              ; preds = %276
  %305 = load i32, i32* %28, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %309 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %310 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %308, %struct.batadv_priv* %309, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %331

311:                                              ; preds = %304
  %312 = load i32, i32* %20, align 4
  %313 = load i32, i32* @BATADV_NEIGH_DUP, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %317 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %318 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %316, %struct.batadv_priv* %317, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %331

319:                                              ; preds = %311
  %320 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %321 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %322 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %320, %struct.batadv_priv* %321, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %323 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %8, align 8
  %324 = load %struct.ethhdr*, %struct.ethhdr** %26, align 8
  %325 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %19, align 8
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* %21, align 4
  %328 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %9, align 8
  %329 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %10, align 8
  %330 = call i32 @batadv_iv_ogm_forward(%struct.batadv_orig_node* %323, %struct.ethhdr* %324, %struct.batadv_ogm_packet* %325, i32 %326, i32 %327, %struct.batadv_hard_iface* %328, %struct.batadv_hard_iface* %329)
  br label %331

331:                                              ; preds = %319, %315, %307, %292, %288, %275, %227, %211
  %332 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %333 = icmp ne %struct.batadv_orig_node* %332, null
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load i32, i32* %22, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %15, align 8
  %339 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %338)
  br label %340

340:                                              ; preds = %337, %334, %331
  br label %341

341:                                              ; preds = %340, %195, %165, %79, %67
  %342 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %343 = icmp ne %struct.batadv_neigh_ifinfo* %342, null
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %18, align 8
  %346 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %345)
  br label %347

347:                                              ; preds = %344, %341
  %348 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %349 = icmp ne %struct.batadv_neigh_node* %348, null
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %13, align 8
  %352 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %351)
  br label %353

353:                                              ; preds = %350, %347
  %354 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %14, align 8
  %355 = icmp ne %struct.batadv_neigh_node* %354, null
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %14, align 8
  %358 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %357)
  br label %359

359:                                              ; preds = %356, %353
  %360 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %17, align 8
  %361 = icmp ne %struct.batadv_neigh_node* %360, null
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %17, align 8
  %364 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %363)
  br label %365

365:                                              ; preds = %362, %359
  %366 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %12, align 8
  %367 = icmp ne %struct.batadv_hardif_neigh_node* %366, null
  br i1 %367, label %368, label %371

368:                                              ; preds = %365
  %369 = load %struct.batadv_hardif_neigh_node*, %struct.batadv_hardif_neigh_node** %12, align 8
  %370 = call i32 @batadv_hardif_neigh_put(%struct.batadv_hardif_neigh_node* %369)
  br label %371

371:                                              ; preds = %368, %365
  %372 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %373 = call i32 @consume_skb(%struct.sk_buff* %372)
  br label %374

374:                                              ; preds = %371, %38
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @batadv_iv_ogm_update_seqnos(%struct.ethhdr*, %struct.batadv_ogm_packet*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

declare dso_local i64 @batadv_compare_eth(i32*, i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, ...) #1

declare dso_local %struct.batadv_hardif_neigh_node* @batadv_hardif_neigh_get(%struct.batadv_hard_iface*, i32*) #1

declare dso_local %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_tvlv_ogm_receive(%struct.batadv_priv*, %struct.batadv_ogm_packet*, %struct.batadv_orig_node*) #1

declare dso_local %struct.batadv_orig_node* @batadv_iv_ogm_orig_get(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_nc_update_nc_node(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*, %struct.batadv_ogm_packet*, i32) #1

declare dso_local i32 @batadv_iv_ogm_calc_tq(%struct.batadv_orig_node*, %struct.batadv_orig_node*, %struct.batadv_ogm_packet*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

declare dso_local %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_new(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @batadv_iv_ogm_orig_update(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_ifinfo*, %struct.ethhdr*, %struct.batadv_ogm_packet*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*, i32) #1

declare dso_local i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo*) #1

declare dso_local i32 @batadv_iv_ogm_forward(%struct.batadv_orig_node*, %struct.ethhdr*, %struct.batadv_ogm_packet*, i32, i32, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_hardif_neigh_put(%struct.batadv_hardif_neigh_node*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
