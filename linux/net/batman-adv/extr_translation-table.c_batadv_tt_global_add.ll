; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tt_global_entry = type { %struct.batadv_tt_common_entry, i8*, i32, i32, i32 }
%struct.batadv_tt_common_entry = type { i8*, i16, i32, i32, i32, i8* }
%struct.batadv_tt_local_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BATADV_TT_CLIENT_TEMP = common dso_local global i32 0, align 4
@BATADV_TT_CLIENT_NEW = common dso_local global i32 0, align 4
@batadv_tg_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BATADV_TT_SYNC_MASK = common dso_local global i32 0, align 4
@BATADV_TT_CLIENT_ROAM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@batadv_compare_tt = common dso_local global i32 0, align 4
@batadv_choose_tt = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Creating new global tt entry: %pM (vid: %d, via %pM)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"global tt received\00", align 1
@BATADV_TT_CLIENT_WIFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, i8*, i16, i32, i32)* @batadv_tt_global_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tt_global_add(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i8* %2, i16 zeroext %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.batadv_priv*, align 8
  %9 = alloca %struct.batadv_orig_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.batadv_tt_global_entry*, align 8
  %15 = alloca %struct.batadv_tt_local_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.batadv_tt_common_entry*, align 8
  %19 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %8, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i16 %3, i16* %11, align 2
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %21 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %22 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i16, i16* %11, align 2
  %25 = call i64 @batadv_bla_is_backbone_gw_orig(%struct.batadv_priv* %20, i32 %23, i16 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %279

28:                                               ; preds = %6
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i16, i16* %11, align 2
  %32 = call %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv* %29, i8* %30, i16 zeroext %31)
  store %struct.batadv_tt_global_entry* %32, %struct.batadv_tt_global_entry** %14, align 8
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i16, i16* %11, align 2
  %36 = call %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv* %33, i8* %34, i16 zeroext %35)
  store %struct.batadv_tt_local_entry* %36, %struct.batadv_tt_local_entry** %15, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @BATADV_TT_CLIENT_TEMP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %28
  %42 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %15, align 8
  %43 = icmp ne %struct.batadv_tt_local_entry* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %15, align 8
  %46 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BATADV_TT_CLIENT_NEW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %265

53:                                               ; preds = %44, %41, %28
  %54 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %55 = icmp ne %struct.batadv_tt_global_entry* %54, null
  br i1 %55, label %135, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @batadv_tg_cache, align 4
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.batadv_tt_global_entry* @kmem_cache_zalloc(i32 %57, i32 %58)
  store %struct.batadv_tt_global_entry* %59, %struct.batadv_tt_global_entry** %14, align 8
  %60 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %61 = icmp ne %struct.batadv_tt_global_entry* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %265

63:                                               ; preds = %56
  %64 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %65 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %64, i32 0, i32 0
  store %struct.batadv_tt_common_entry* %65, %struct.batadv_tt_common_entry** %18, align 8
  %66 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %67 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @ether_addr_copy(i8* %68, i8* %69)
  %71 = load i16, i16* %11, align 2
  %72 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %73 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %72, i32 0, i32 1
  store i16 %71, i16* %73, align 8
  %74 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %75 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @is_multicast_ether_addr(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @BATADV_TT_SYNC_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %85 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %63
  %87 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %88 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %87, i32 0, i32 1
  store i8* null, i8** %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i8*, i8** @jiffies, align 8
  %95 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %96 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %99 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %98, i32 0, i32 4
  %100 = call i32 @kref_init(i32* %99)
  %101 = load i8*, i8** @jiffies, align 8
  %102 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %103 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  %104 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %105 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %104, i32 0, i32 4
  %106 = call i32 @INIT_HLIST_HEAD(i32* %105)
  %107 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %108 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %107, i32 0, i32 3
  %109 = call i32 @atomic_set(i32* %108, i32 0)
  %110 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %111 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %110, i32 0, i32 2
  %112 = call i32 @spin_lock_init(i32* %111)
  %113 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %114 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %113, i32 0, i32 4
  %115 = call i32 @kref_get(i32* %114)
  %116 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %117 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @batadv_compare_tt, align 4
  %121 = load i32, i32* @batadv_choose_tt, align 4
  %122 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %123 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %124 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %123, i32 0, i32 3
  %125 = call i32 @batadv_hash_add(i32 %119, i32 %120, i32 %121, %struct.batadv_tt_common_entry* %122, i32* %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %97
  %132 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %133 = call i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry* %132)
  br label %231

134:                                              ; preds = %97
  br label %209

135:                                              ; preds = %53
  %136 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %137 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %136, i32 0, i32 0
  store %struct.batadv_tt_common_entry* %137, %struct.batadv_tt_common_entry** %18, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @BATADV_TT_CLIENT_TEMP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %135
  %143 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %144 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BATADV_TT_CLIENT_TEMP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %265

150:                                              ; preds = %142
  %151 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %152 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %153 = call i64 @batadv_tt_global_entry_has_orig(%struct.batadv_tt_global_entry* %151, %struct.batadv_orig_node* %152, i32* null)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %231

156:                                              ; preds = %150
  %157 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %158 = call i32 @batadv_tt_global_del_orig_list(%struct.batadv_tt_global_entry* %157)
  br label %210

159:                                              ; preds = %135
  %160 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %161 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @BATADV_TT_CLIENT_TEMP, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %159
  %167 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %168 = call i32 @batadv_tt_global_del_orig_list(%struct.batadv_tt_global_entry* %167)
  %169 = load i32, i32* @BATADV_TT_CLIENT_TEMP, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %172 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %166, %159
  %176 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %177 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @is_multicast_ether_addr(i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @BATADV_TT_SYNC_MASK, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %187 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %181, %175
  %191 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %192 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %190
  %198 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %199 = call i32 @batadv_tt_global_del_orig_list(%struct.batadv_tt_global_entry* %198)
  %200 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %203 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %207 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %206, i32 0, i32 1
  store i8* null, i8** %207, align 8
  br label %208

208:                                              ; preds = %197, %190
  br label %209

209:                                              ; preds = %208, %134
  br label %210

210:                                              ; preds = %209, %156
  %211 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %212 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @BATADV_TT_SYNC_MASK, align 4
  %216 = and i32 %214, %215
  %217 = call i32 @batadv_tt_global_orig_entry_add(%struct.batadv_tt_global_entry* %211, %struct.batadv_orig_node* %212, i32 %213, i32 %216)
  %218 = load i32, i32* @BATADV_DBG_TT, align 4
  %219 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %220 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %221 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %18, align 8
  %224 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %223, i32 0, i32 1
  %225 = load i16, i16* %224, align 8
  %226 = call i32 @batadv_print_vid(i16 zeroext %225)
  %227 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %228 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @batadv_dbg(i32 %218, %struct.batadv_priv* %219, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %222, i32 %226, i32 %229)
  store i32 1, i32* %16, align 4
  br label %231

231:                                              ; preds = %210, %155, %131
  %232 = load i8*, i8** %10, align 8
  %233 = call i64 @is_multicast_ether_addr(i8* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %265

236:                                              ; preds = %231
  %237 = load %struct.batadv_priv*, %struct.batadv_priv** %8, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = load i16, i16* %11, align 2
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %242 = and i32 %240, %241
  %243 = call i32 @batadv_tt_local_remove(%struct.batadv_priv* %237, i8* %238, i16 zeroext %239, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %242)
  store i32 %243, i32* %19, align 4
  %244 = load i32, i32* %19, align 4
  %245 = load i32, i32* @BATADV_TT_CLIENT_WIFI, align 4
  %246 = and i32 %244, %245
  %247 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %248 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %246
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %236
  %257 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %260 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, %258
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %256, %236
  br label %265

265:                                              ; preds = %264, %235, %149, %62, %52
  %266 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %267 = icmp ne %struct.batadv_tt_global_entry* %266, null
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %14, align 8
  %270 = call i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry* %269)
  br label %271

271:                                              ; preds = %268, %265
  %272 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %15, align 8
  %273 = icmp ne %struct.batadv_tt_local_entry* %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %15, align 8
  %276 = call i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry* %275)
  br label %277

277:                                              ; preds = %274, %271
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* %7, align 4
  br label %279

279:                                              ; preds = %277, %27
  %280 = load i32, i32* %7, align 4
  ret i32 %280
}

declare dso_local i64 @batadv_bla_is_backbone_gw_orig(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local %struct.batadv_tt_global_entry* @batadv_tt_global_hash_find(%struct.batadv_priv*, i8*, i16 zeroext) #1

declare dso_local %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv*, i8*, i16 zeroext) #1

declare dso_local %struct.batadv_tt_global_entry* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i8*, i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @batadv_hash_add(i32, i32, i32, %struct.batadv_tt_common_entry*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @batadv_tt_global_entry_put(%struct.batadv_tt_global_entry*) #1

declare dso_local i64 @batadv_tt_global_entry_has_orig(%struct.batadv_tt_global_entry*, %struct.batadv_orig_node*, i32*) #1

declare dso_local i32 @batadv_tt_global_del_orig_list(%struct.batadv_tt_global_entry*) #1

declare dso_local i32 @batadv_tt_global_orig_entry_add(%struct.batadv_tt_global_entry*, %struct.batadv_orig_node*, i32, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i8*, i32, i32) #1

declare dso_local i32 @batadv_print_vid(i16 zeroext) #1

declare dso_local i32 @batadv_tt_local_remove(%struct.batadv_priv*, i8*, i16 zeroext, i8*, i32) #1

declare dso_local i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
