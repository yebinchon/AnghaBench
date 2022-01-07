; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_target = type { i64, i32 }
%struct.ebt_entry = type { i32, i32, i64, i64, i32 }
%struct.net = type { i8*, i32, i32, %struct.xt_target*, i64, %struct.ebt_entry*, %struct.net* }
%struct.ebt_table_info = type { i64* }
%struct.ebt_cl_stack = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ebt_entry_target = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.xt_target*, i32 }
%struct.xt_mtchk_param = type { i8*, i32, i32, %struct.xt_target*, i64, %struct.ebt_entry*, %struct.xt_mtchk_param* }
%struct.xt_tgchk_param = type { i8*, i32, i32, %struct.xt_target*, i64, %struct.ebt_entry*, %struct.xt_tgchk_param* }
%struct.ebt_standard_target = type { i32 }

@EBT_F_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBT_INV_MASK = common dso_local global i32 0, align 4
@EBT_NOPROTO = common dso_local global i32 0, align 4
@EBT_802_3 = common dso_local global i32 0, align 4
@NF_BR_NUMHOOKS = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i64 0, align 8
@ebt_check_match = common dso_local global i32 0, align 4
@ebt_check_watcher = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ebt_standard_target = common dso_local global %struct.xt_target zeroinitializer, align 8
@EFAULT = common dso_local global i32 0, align 4
@NUM_STANDARD_TARGETS = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@ebt_cleanup_watcher = common dso_local global i32 0, align 4
@ebt_cleanup_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.net*, %struct.ebt_table_info*, i8*, i32*, %struct.ebt_cl_stack*, i32)* @ebt_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_check_entry(%struct.ebt_entry* %0, %struct.net* %1, %struct.ebt_table_info* %2, i8* %3, i32* %4, %struct.ebt_cl_stack* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ebt_entry*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.ebt_table_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ebt_cl_stack*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ebt_entry_target*, align 8
  %17 = alloca %struct.xt_target*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.xt_mtchk_param, align 8
  %25 = alloca %struct.xt_tgchk_param, align 8
  store %struct.ebt_entry* %0, %struct.ebt_entry** %9, align 8
  store %struct.net* %1, %struct.net** %10, align 8
  store %struct.ebt_table_info* %2, %struct.ebt_table_info** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.ebt_cl_stack* %5, %struct.ebt_cl_stack** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %27 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %314

31:                                               ; preds = %7
  %32 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %33 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EBT_F_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %314

42:                                               ; preds = %31
  %43 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %44 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EBT_INV_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %314

53:                                               ; preds = %42
  %54 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %55 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EBT_NOPROTO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %62 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @EBT_802_3, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %314

70:                                               ; preds = %60, %53
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load %struct.ebt_table_info*, %struct.ebt_table_info** %11, align 8
  %77 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %18, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %101

85:                                               ; preds = %75
  %86 = load %struct.ebt_table_info*, %struct.ebt_table_info** %11, align 8
  %87 = getelementptr inbounds %struct.ebt_table_info, %struct.ebt_table_info* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %95 = bitcast %struct.ebt_entry* %94 to i8*
  %96 = icmp ult i8* %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %20, align 4
  br label %100

99:                                               ; preds = %85
  br label %104

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100, %84
  %102 = load i32, i32* %18, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %71

104:                                              ; preds = %99, %71
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32, i32* %20, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %112 = shl i32 1, %111
  %113 = or i32 %110, %112
  store i32 %113, i32* %21, align 4
  br label %154

114:                                              ; preds = %104
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %133, %114
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %14, align 8
  %121 = load i32, i32* %18, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %120, i64 %122
  %124 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %129 = bitcast %struct.ebt_entry* %128 to i8*
  %130 = icmp ugt i8* %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %136

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %18, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %18, align 4
  br label %115

136:                                              ; preds = %131, %115
  %137 = load i32, i32* %18, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %20, align 4
  %141 = shl i32 1, %140
  %142 = load i32, i32* @NF_BR_NUMHOOKS, align 4
  %143 = shl i32 1, %142
  %144 = or i32 %141, %143
  store i32 %144, i32* %21, align 4
  br label %153

145:                                              ; preds = %136
  %146 = load %struct.ebt_cl_stack*, %struct.ebt_cl_stack** %14, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sub i32 %147, 1
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %146, i64 %149
  %151 = getelementptr inbounds %struct.ebt_cl_stack, %struct.ebt_cl_stack* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %21, align 4
  br label %153

153:                                              ; preds = %145, %139
  br label %154

154:                                              ; preds = %153, %108
  store i32 0, i32* %18, align 4
  %155 = bitcast %struct.xt_mtchk_param* %24 to %struct.xt_tgchk_param*
  %156 = call i32 @memset(%struct.xt_tgchk_param* %155, i32 0, i32 48)
  %157 = call i32 @memset(%struct.xt_tgchk_param* %25, i32 0, i32 48)
  %158 = load %struct.net*, %struct.net** %10, align 8
  %159 = bitcast %struct.net* %158 to %struct.xt_tgchk_param*
  %160 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %25, i32 0, i32 6
  store %struct.xt_tgchk_param* %159, %struct.xt_tgchk_param** %160, align 8
  %161 = bitcast %struct.xt_tgchk_param* %159 to %struct.xt_mtchk_param*
  %162 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %24, i32 0, i32 6
  store %struct.xt_mtchk_param* %161, %struct.xt_mtchk_param** %162, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %25, i32 0, i32 0
  store i8* %163, i8** %164, align 8
  %165 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %24, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %167 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %25, i32 0, i32 5
  store %struct.ebt_entry* %166, %struct.ebt_entry** %167, align 8
  %168 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %24, i32 0, i32 5
  store %struct.ebt_entry* %166, %struct.ebt_entry** %168, align 8
  %169 = load i32, i32* %21, align 4
  %170 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %25, i32 0, i32 1
  store i32 %169, i32* %170, align 8
  %171 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %24, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  %172 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %173 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %25, i32 0, i32 4
  store i64 %172, i64* %173, align 8
  %174 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %24, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  %175 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %176 = load i32, i32* @ebt_check_match, align 4
  %177 = bitcast %struct.xt_mtchk_param* %24 to %struct.xt_tgchk_param*
  %178 = call i32 @EBT_MATCH_ITERATE(%struct.ebt_entry* %175, i32 %176, %struct.xt_tgchk_param* %177, i32* %18)
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %23, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %154
  br label %307

182:                                              ; preds = %154
  store i32 0, i32* %19, align 4
  %183 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %184 = load i32, i32* @ebt_check_watcher, align 4
  %185 = call i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry* %183, i32 %184, %struct.xt_tgchk_param* %25, i32* %19)
  store i32 %185, i32* %23, align 4
  %186 = load i32, i32* %23, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %301

189:                                              ; preds = %182
  %190 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %191 = call %struct.ebt_entry_target* @ebt_get_target(%struct.ebt_entry* %190)
  store %struct.ebt_entry_target* %191, %struct.ebt_entry_target** %16, align 8
  %192 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %193 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %196 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = sub i64 %194, %197
  store i64 %198, i64* %22, align 8
  %199 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %200 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %201 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call %struct.xt_target* @xt_request_find_target(i64 %199, i32 %203, i32 0)
  store %struct.xt_target* %204, %struct.xt_target** %17, align 8
  %205 = load %struct.xt_target*, %struct.xt_target** %17, align 8
  %206 = call i64 @IS_ERR(%struct.xt_target* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %189
  %209 = load %struct.xt_target*, %struct.xt_target** %17, align 8
  %210 = call i32 @PTR_ERR(%struct.xt_target* %209)
  store i32 %210, i32* %23, align 4
  br label %301

211:                                              ; preds = %189
  %212 = load %struct.xt_target*, %struct.xt_target** %17, align 8
  %213 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NFPROTO_BRIDGE, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load %struct.xt_target*, %struct.xt_target** %17, align 8
  %219 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @module_put(i32 %220)
  %222 = load i32, i32* @ENOENT, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %23, align 4
  br label %301

224:                                              ; preds = %211
  %225 = load %struct.xt_target*, %struct.xt_target** %17, align 8
  %226 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %227 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  store %struct.xt_target* %225, %struct.xt_target** %228, align 8
  %229 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %230 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.xt_target*, %struct.xt_target** %231, align 8
  %233 = icmp eq %struct.xt_target* %232, @ebt_standard_target
  br i1 %233, label %234, label %252

234:                                              ; preds = %224
  %235 = load i64, i64* %22, align 8
  %236 = icmp ult i64 %235, 4
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* @EFAULT, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %23, align 4
  br label %301

240:                                              ; preds = %234
  %241 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %242 = bitcast %struct.ebt_entry_target* %241 to %struct.ebt_standard_target*
  %243 = getelementptr inbounds %struct.ebt_standard_target, %struct.ebt_standard_target* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @NUM_STANDARD_TARGETS, align 4
  %246 = sub nsw i32 0, %245
  %247 = icmp slt i32 %244, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %240
  %249 = load i32, i32* @EFAULT, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %23, align 4
  br label %301

251:                                              ; preds = %240
  br label %270

252:                                              ; preds = %224
  %253 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %254 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %22, align 8
  %257 = sub i64 %256, 32
  %258 = icmp ugt i64 %255, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %252
  %260 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %261 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load %struct.xt_target*, %struct.xt_target** %262, align 8
  %264 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @module_put(i32 %265)
  %267 = load i32, i32* @EFAULT, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %23, align 4
  br label %301

269:                                              ; preds = %252
  br label %270

270:                                              ; preds = %269, %251
  %271 = load %struct.xt_target*, %struct.xt_target** %17, align 8
  %272 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %25, i32 0, i32 3
  store %struct.xt_target* %271, %struct.xt_target** %272, align 8
  %273 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %274 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %25, i32 0, i32 2
  store i32 %275, i32* %276, align 4
  %277 = load %struct.ebt_entry_target*, %struct.ebt_entry_target** %16, align 8
  %278 = getelementptr inbounds %struct.ebt_entry_target, %struct.ebt_entry_target* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %281 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @ntohs(i32 %282)
  %284 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %285 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @EBT_IPROTO, align 4
  %288 = and i32 %286, %287
  %289 = call i32 @xt_check_target(%struct.xt_tgchk_param* %25, i64 %279, i32 %283, i32 %288)
  store i32 %289, i32* %23, align 4
  %290 = load i32, i32* %23, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %270
  %293 = load %struct.xt_target*, %struct.xt_target** %17, align 8
  %294 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @module_put(i32 %295)
  br label %301

297:                                              ; preds = %270
  %298 = load i32*, i32** %13, align 8
  %299 = load i32, i32* %298, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %298, align 4
  store i32 0, i32* %8, align 4
  br label %314

301:                                              ; preds = %292, %259, %248, %237, %217, %208, %188
  %302 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %303 = load i32, i32* @ebt_cleanup_watcher, align 4
  %304 = load %struct.net*, %struct.net** %10, align 8
  %305 = bitcast %struct.net* %304 to %struct.xt_tgchk_param*
  %306 = call i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry* %302, i32 %303, %struct.xt_tgchk_param* %305, i32* %19)
  br label %307

307:                                              ; preds = %301, %181
  %308 = load %struct.ebt_entry*, %struct.ebt_entry** %9, align 8
  %309 = load i32, i32* @ebt_cleanup_match, align 4
  %310 = load %struct.net*, %struct.net** %10, align 8
  %311 = bitcast %struct.net* %310 to %struct.xt_tgchk_param*
  %312 = call i32 @EBT_MATCH_ITERATE(%struct.ebt_entry* %308, i32 %309, %struct.xt_tgchk_param* %311, i32* %18)
  %313 = load i32, i32* %23, align 4
  store i32 %313, i32* %8, align 4
  br label %314

314:                                              ; preds = %307, %297, %67, %50, %39, %30
  %315 = load i32, i32* %8, align 4
  ret i32 %315
}

declare dso_local i32 @memset(%struct.xt_tgchk_param*, i32, i32) #1

declare dso_local i32 @EBT_MATCH_ITERATE(%struct.ebt_entry*, i32, %struct.xt_tgchk_param*, i32*) #1

declare dso_local i32 @EBT_WATCHER_ITERATE(%struct.ebt_entry*, i32, %struct.xt_tgchk_param*, i32*) #1

declare dso_local %struct.ebt_entry_target* @ebt_get_target(%struct.ebt_entry*) #1

declare dso_local %struct.xt_target* @xt_request_find_target(i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
