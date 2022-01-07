; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_do_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_do_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32, i32, i32 }
%struct.ebt_table = type { i32, %struct.ebt_table_info* }
%struct.ebt_table_info = type { i8*, %struct.ebt_entries**, %struct.ebt_chainstack**, i32, i32 }
%struct.ebt_entries = type { i32, i32, i32, i32, i64 }
%struct.ebt_chainstack = type { i32, %struct.ebt_entry*, %struct.ebt_entries* }
%struct.ebt_entry = type { i32 }
%struct.ebt_counter = type { i32 }
%struct.ebt_entry_target = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, %struct.xt_action_param*)* }
%struct.xt_action_param = type { i32, i32, %struct.TYPE_3__*, %struct.nf_hook_state* }
%struct.ebt_standard_target = type { i32 }

@ebt_do_match = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@ebt_do_watcher = common dso_local global i32 0, align 4
@EBT_ACCEPT = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@EBT_DROP = common dso_local global i32 0, align 4
@EBT_RETURN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RETURN on base chain\00", align 1
@EBT_CONTINUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"bogus standard verdict\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"jump to non-chain\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebt_do_table(%struct.sk_buff* %0, %struct.nf_hook_state* %1, %struct.ebt_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_hook_state*, align 8
  %7 = alloca %struct.ebt_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ebt_entry*, align 8
  %12 = alloca %struct.ebt_counter*, align 8
  %13 = alloca %struct.ebt_counter*, align 8
  %14 = alloca %struct.ebt_entry_target*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ebt_chainstack*, align 8
  %18 = alloca %struct.ebt_entries*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.ebt_table_info*, align 8
  %21 = alloca %struct.xt_action_param, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_hook_state* %1, %struct.nf_hook_state** %6, align 8
  store %struct.ebt_table* %2, %struct.ebt_table** %7, align 8
  %22 = load %struct.nf_hook_state*, %struct.nf_hook_state** %6, align 8
  %23 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.nf_hook_state*, %struct.nf_hook_state** %6, align 8
  %26 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %21, i32 0, i32 3
  store %struct.nf_hook_state* %25, %struct.nf_hook_state** %26, align 8
  %27 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %21, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %29 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %28, i32 0, i32 0
  %30 = call i32 @read_lock_bh(i32* %29)
  %31 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %32 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %31, i32 0, i32 1
  %33 = load %struct.ebt_table_info*, %struct.ebt_table_info** %32, align 8
  store %struct.ebt_table_info* %33, %struct.ebt_table_info** %20, align 8
  %34 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %35 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %38 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 (...) @smp_processor_id()
  %41 = call %struct.ebt_counter* @COUNTER_BASE(i32 %36, i32 %39, i64 %40)
  store %struct.ebt_counter* %41, %struct.ebt_counter** %13, align 8
  %42 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %43 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %42, i32 0, i32 2
  %44 = load %struct.ebt_chainstack**, %struct.ebt_chainstack*** %43, align 8
  %45 = icmp ne %struct.ebt_chainstack** %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %3
  %47 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %48 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %47, i32 0, i32 2
  %49 = load %struct.ebt_chainstack**, %struct.ebt_chainstack*** %48, align 8
  %50 = call i64 (...) @smp_processor_id()
  %51 = getelementptr inbounds %struct.ebt_chainstack*, %struct.ebt_chainstack** %49, i64 %50
  %52 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %51, align 8
  store %struct.ebt_chainstack* %52, %struct.ebt_chainstack** %17, align 8
  br label %54

53:                                               ; preds = %3
  store %struct.ebt_chainstack* null, %struct.ebt_chainstack** %17, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %56 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %55, i32 0, i32 1
  %57 = load %struct.ebt_entries**, %struct.ebt_entries*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %57, i64 %59
  %61 = load %struct.ebt_entries*, %struct.ebt_entries** %60, align 8
  store %struct.ebt_entries* %61, %struct.ebt_entries** %18, align 8
  %62 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %63 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %62, i32 0, i32 1
  %64 = load %struct.ebt_entries**, %struct.ebt_entries*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %64, i64 %66
  %68 = load %struct.ebt_entries*, %struct.ebt_entries** %67, align 8
  %69 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %72 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %71, i32 0, i32 1
  %73 = load %struct.ebt_entries**, %struct.ebt_entries*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %73, i64 %75
  %77 = load %struct.ebt_entries*, %struct.ebt_entries** %76, align 8
  %78 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.ebt_entry*
  store %struct.ebt_entry* %80, %struct.ebt_entry** %11, align 8
  %81 = load %struct.ebt_counter*, %struct.ebt_counter** %13, align 8
  %82 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %83 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %82, i32 0, i32 1
  %84 = load %struct.ebt_entries**, %struct.ebt_entries*** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ebt_entries*, %struct.ebt_entries** %84, i64 %86
  %88 = load %struct.ebt_entries*, %struct.ebt_entries** %87, align 8
  %89 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %81, i64 %91
  store %struct.ebt_counter* %92, %struct.ebt_counter** %12, align 8
  %93 = load %struct.ebt_table_info*, %struct.ebt_table_info** %20, align 8
  %94 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %19, align 8
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %304, %288, %205, %54
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %310

100:                                              ; preds = %96
  %101 = load %struct.ebt_entry*, %struct.ebt_entry** %11, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = load %struct.nf_hook_state*, %struct.nf_hook_state** %6, align 8
  %104 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nf_hook_state*, %struct.nf_hook_state** %6, align 8
  %107 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @ebt_basic_match(%struct.ebt_entry* %101, %struct.sk_buff* %102, i32 %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %304

112:                                              ; preds = %100
  %113 = load %struct.ebt_entry*, %struct.ebt_entry** %11, align 8
  %114 = load i32, i32* @ebt_do_match, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i64 @EBT_MATCH_ITERATE(%struct.ebt_entry* %113, i32 %114, %struct.sk_buff* %115, %struct.xt_action_param* %21)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %304

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %21, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %125 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %124, i32 0, i32 0
  %126 = call i32 @read_unlock_bh(i32* %125)
  %127 = load i32, i32* @NF_DROP, align 4
  store i32 %127, i32* %4, align 4
  br label %333

128:                                              ; preds = %119
  %129 = load %struct.ebt_counter*, %struct.ebt_counter** %12, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %129, i64 %131
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %132, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ADD_COUNTER(i32 %137, i32 %135, i32 1)
  %139 = load %struct.ebt_entry*, %struct.ebt_entry** %11, align 8
  %140 = load i32, i32* @ebt_do_watcher, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = call i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry* %139, i32 %140, %struct.sk_buff* %141, %struct.xt_action_param* %21)
  %143 = load %struct.ebt_entry*, %struct.ebt_entry** %11, align 8
  %144 = call %struct.ebt_entry_target* @ebt_get_target_c(%struct.ebt_entry* %143)
  store %struct.ebt_entry_target* %144, %struct.ebt_entry_target** %14, align 8
  %145 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %146 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32 (%struct.sk_buff*, %struct.xt_action_param*)*, i32 (%struct.sk_buff*, %struct.xt_action_param*)** %149, align 8
  %151 = icmp ne i32 (%struct.sk_buff*, %struct.xt_action_param*)* %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %128
  %153 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %154 = bitcast %struct.ebt_entry_target* %153 to %struct.ebt_standard_target*
  %155 = getelementptr inbounds %struct.ebt_standard_target, %struct.ebt_standard_target* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %15, align 4
  br label %175

157:                                              ; preds = %128
  %158 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %159 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %21, i32 0, i32 2
  store %struct.TYPE_3__* %161, %struct.TYPE_3__** %162, align 8
  %163 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %164 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %21, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %14, align 8
  %168 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32 (%struct.sk_buff*, %struct.xt_action_param*)*, i32 (%struct.sk_buff*, %struct.xt_action_param*)** %171, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call i32 %172(%struct.sk_buff* %173, %struct.xt_action_param* %21)
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %157, %152
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* @EBT_ACCEPT, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %181 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %180, i32 0, i32 0
  %182 = call i32 @read_unlock_bh(i32* %181)
  %183 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %183, i32* %4, align 4
  br label %333

184:                                              ; preds = %175
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* @EBT_DROP, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %190 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %189, i32 0, i32 0
  %191 = call i32 @read_unlock_bh(i32* %190)
  %192 = load i32, i32* @NF_DROP, align 4
  store i32 %192, i32* %4, align 4
  br label %333

193:                                              ; preds = %184
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @EBT_RETURN, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %235

197:                                              ; preds = %193
  br label %198

198:                                              ; preds = %316, %197
  %199 = load i32, i32* %16, align 4
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i64 @WARN(i32 %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %304

205:                                              ; preds = %198
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %16, align 4
  %208 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %17, align 8
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %208, i64 %210
  %212 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %9, align 4
  %214 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %17, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %214, i64 %216
  %218 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %217, i32 0, i32 2
  %219 = load %struct.ebt_entries*, %struct.ebt_entries** %218, align 8
  store %struct.ebt_entries* %219, %struct.ebt_entries** %18, align 8
  %220 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %221 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %10, align 4
  %223 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %17, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %223, i64 %225
  %227 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %226, i32 0, i32 1
  %228 = load %struct.ebt_entry*, %struct.ebt_entry** %227, align 8
  store %struct.ebt_entry* %228, %struct.ebt_entry** %11, align 8
  %229 = load %struct.ebt_counter*, %struct.ebt_counter** %13, align 8
  %230 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %231 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %229, i64 %233
  store %struct.ebt_counter* %234, %struct.ebt_counter** %12, align 8
  br label %96

235:                                              ; preds = %193
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* @EBT_CONTINUE, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  br label %304

240:                                              ; preds = %235
  %241 = load i32, i32* %15, align 4
  %242 = icmp slt i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i64 @WARN(i32 %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %248 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %247, i32 0, i32 0
  %249 = call i32 @read_unlock_bh(i32* %248)
  %250 = load i32, i32* @NF_DROP, align 4
  store i32 %250, i32* %4, align 4
  br label %333

251:                                              ; preds = %240
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  %254 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %17, align 8
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %254, i64 %256
  %258 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %257, i32 0, i32 0
  store i32 %253, i32* %258, align 8
  %259 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %260 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %17, align 8
  %261 = load i32, i32* %16, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %260, i64 %262
  %264 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %263, i32 0, i32 2
  store %struct.ebt_entries* %259, %struct.ebt_entries** %264, align 8
  %265 = load %struct.ebt_entry*, %struct.ebt_entry** %11, align 8
  %266 = call i8* @ebt_next_entry(%struct.ebt_entry* %265)
  %267 = bitcast i8* %266 to %struct.ebt_entry*
  %268 = load %struct.ebt_chainstack*, %struct.ebt_chainstack** %17, align 8
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %268, i64 %270
  %272 = getelementptr inbounds %struct.ebt_chainstack, %struct.ebt_chainstack* %271, i32 0, i32 1
  store %struct.ebt_entry* %267, %struct.ebt_entry** %272, align 8
  store i32 0, i32* %9, align 4
  %273 = load i8*, i8** %19, align 8
  %274 = load i32, i32* %15, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = bitcast i8* %276 to %struct.ebt_entries*
  store %struct.ebt_entries* %277, %struct.ebt_entries** %18, align 8
  %278 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %279 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @WARN(i32 %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %251
  %284 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %285 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %284, i32 0, i32 0
  %286 = call i32 @read_unlock_bh(i32* %285)
  %287 = load i32, i32* @NF_DROP, align 4
  store i32 %287, i32* %4, align 4
  br label %333

288:                                              ; preds = %251
  %289 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %290 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  store i32 %291, i32* %10, align 4
  %292 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %293 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = inttoptr i64 %294 to %struct.ebt_entry*
  store %struct.ebt_entry* %295, %struct.ebt_entry** %11, align 8
  %296 = load %struct.ebt_counter*, %struct.ebt_counter** %13, align 8
  %297 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %298 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.ebt_counter, %struct.ebt_counter* %296, i64 %300
  store %struct.ebt_counter* %301, %struct.ebt_counter** %12, align 8
  %302 = load i32, i32* %16, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %16, align 4
  br label %96

304:                                              ; preds = %239, %204, %118, %111
  %305 = load %struct.ebt_entry*, %struct.ebt_entry** %11, align 8
  %306 = call i8* @ebt_next_entry(%struct.ebt_entry* %305)
  %307 = bitcast i8* %306 to %struct.ebt_entry*
  store %struct.ebt_entry* %307, %struct.ebt_entry** %11, align 8
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %96

310:                                              ; preds = %96
  %311 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %312 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @EBT_RETURN, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %310
  br label %198

317:                                              ; preds = %310
  %318 = load %struct.ebt_entries*, %struct.ebt_entries** %18, align 8
  %319 = getelementptr inbounds %struct.ebt_entries, %struct.ebt_entries* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @EBT_ACCEPT, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %317
  %324 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %325 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %324, i32 0, i32 0
  %326 = call i32 @read_unlock_bh(i32* %325)
  %327 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %327, i32* %4, align 4
  br label %333

328:                                              ; preds = %317
  %329 = load %struct.ebt_table*, %struct.ebt_table** %7, align 8
  %330 = getelementptr inbounds %struct.ebt_table, %struct.ebt_table* %329, i32 0, i32 0
  %331 = call i32 @read_unlock_bh(i32* %330)
  %332 = load i32, i32* @NF_DROP, align 4
  store i32 %332, i32* %4, align 4
  br label %333

333:                                              ; preds = %328, %323, %283, %246, %188, %179, %123
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.ebt_counter* @COUNTER_BASE(i32, i32, i64) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @ebt_basic_match(%struct.ebt_entry*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @EBT_MATCH_ITERATE(%struct.ebt_entry*, i32, %struct.sk_buff*, %struct.xt_action_param*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ADD_COUNTER(i32, i32, i32) #1

declare dso_local i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry*, i32, %struct.sk_buff*, %struct.xt_action_param*) #1

declare dso_local %struct.ebt_entry_target* @ebt_get_target_c(%struct.ebt_entry*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i8* @ebt_next_entry(%struct.ebt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
