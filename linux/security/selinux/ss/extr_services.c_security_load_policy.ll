; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_load_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_load_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, %struct.selinux_map, %struct.sidtab*, %struct.sidtab }
%struct.selinux_map = type { %struct.sidtab*, i32 }
%struct.sidtab = type { i64, i64 }
%struct.policydb = type { i64, i64 }
%struct.selinux_mapping = type { i64, i64 }
%struct.sidtab_convert_params = type { %struct.sidtab*, %struct.convert_context_args*, i32 }
%struct.convert_context_args = type { %struct.sidtab*, %struct.sidtab*, %struct.selinux_state* }
%struct.policy_file = type { i8*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@secclass_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SELinux: Disabling MLS support...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SELinux: Enabling MLS support...\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"SELinux:  unable to load the initial SIDs\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"SELinux:  unable to preserve booleans\0A\00", align 1
@convert_context = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [90 x i8] c"SELinux:  unable to convert the internal representation of contexts in the new SID table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_load_policy(%struct.selinux_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.selinux_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca %struct.sidtab*, align 8
  %9 = alloca %struct.sidtab*, align 8
  %10 = alloca %struct.policydb*, align 8
  %11 = alloca %struct.policydb*, align 8
  %12 = alloca %struct.selinux_mapping*, align 8
  %13 = alloca %struct.selinux_map, align 8
  %14 = alloca %struct.sidtab_convert_params, align 8
  %15 = alloca %struct.convert_context_args, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.policy_file, align 8
  %19 = alloca %struct.policy_file*, align 8
  store %struct.selinux_state* %0, %struct.selinux_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %17, align 4
  %20 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %18, i32 0, i32 0
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.policy_file, %struct.policy_file* %18, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %22, align 8
  store %struct.policy_file* %18, %struct.policy_file** %19, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sidtab* @kcalloc(i32 2, i32 16, i32 %24)
  %26 = bitcast %struct.sidtab* %25 to %struct.policydb*
  store %struct.policydb* %26, %struct.policydb** %10, align 8
  %27 = load %struct.policydb*, %struct.policydb** %10, align 8
  %28 = icmp ne %struct.policydb* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %17, align 4
  br label %306

32:                                               ; preds = %3
  %33 = load %struct.policydb*, %struct.policydb** %10, align 8
  %34 = getelementptr inbounds %struct.policydb, %struct.policydb* %33, i64 1
  store %struct.policydb* %34, %struct.policydb** %11, align 8
  %35 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %36 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = bitcast %struct.sidtab* %38 to %struct.policydb*
  store %struct.policydb* %39, %struct.policydb** %7, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sidtab* @kmalloc(i32 16, i32 %40)
  store %struct.sidtab* %41, %struct.sidtab** %9, align 8
  %42 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %43 = icmp ne %struct.sidtab* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %17, align 4
  br label %306

47:                                               ; preds = %32
  %48 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %49 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %124, label %52

52:                                               ; preds = %47
  %53 = load %struct.policydb*, %struct.policydb** %7, align 8
  %54 = bitcast %struct.policydb* %53 to %struct.sidtab*
  %55 = load %struct.policy_file*, %struct.policy_file** %19, align 8
  %56 = call i32 @policydb_read(%struct.sidtab* %54, %struct.policy_file* %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %61 = call i32 @kfree(%struct.sidtab* %60)
  br label %306

62:                                               ; preds = %52
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.policydb*, %struct.policydb** %7, align 8
  %65 = getelementptr inbounds %struct.policydb, %struct.policydb* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.policydb*, %struct.policydb** %7, align 8
  %67 = bitcast %struct.policydb* %66 to %struct.sidtab*
  %68 = load i32, i32* @secclass_map, align 4
  %69 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %70 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = call i32 @selinux_set_mapping(%struct.sidtab* %67, i32 %68, %struct.selinux_map* %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %62
  %77 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %78 = call i32 @kfree(%struct.sidtab* %77)
  %79 = load %struct.policydb*, %struct.policydb** %7, align 8
  %80 = bitcast %struct.policydb* %79 to %struct.sidtab*
  %81 = call i32 @policydb_destroy(%struct.sidtab* %80)
  br label %306

82:                                               ; preds = %62
  %83 = load %struct.policydb*, %struct.policydb** %7, align 8
  %84 = bitcast %struct.policydb* %83 to %struct.sidtab*
  %85 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %86 = call i32 @policydb_load_isids(%struct.sidtab* %84, %struct.sidtab* %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %91 = call i32 @kfree(%struct.sidtab* %90)
  %92 = load %struct.policydb*, %struct.policydb** %7, align 8
  %93 = bitcast %struct.policydb* %92 to %struct.sidtab*
  %94 = call i32 @policydb_destroy(%struct.sidtab* %93)
  br label %306

95:                                               ; preds = %82
  %96 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %97 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %98 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store %struct.sidtab* %96, %struct.sidtab** %100, align 8
  %101 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %102 = call i32 @security_load_policycaps(%struct.selinux_state* %101)
  %103 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %104 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %106 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  store i64 %110, i64* %16, align 8
  %111 = call i32 (...) @selinux_complete_init()
  %112 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %113 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %16, align 8
  %116 = call i32 @avc_ss_reset(i32 %114, i64 %115)
  %117 = load i64, i64* %16, align 8
  %118 = call i32 @selnl_notify_policyload(i64 %117)
  %119 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %120 = load i64, i64* %16, align 8
  %121 = call i32 @selinux_status_update_policyload(%struct.selinux_state* %119, i64 %120)
  %122 = call i32 (...) @selinux_netlbl_cache_invalidate()
  %123 = call i32 (...) @selinux_xfrm_notify_policyload()
  br label %306

124:                                              ; preds = %47
  %125 = load %struct.policydb*, %struct.policydb** %11, align 8
  %126 = bitcast %struct.policydb* %125 to %struct.sidtab*
  %127 = load %struct.policy_file*, %struct.policy_file** %19, align 8
  %128 = call i32 @policydb_read(%struct.sidtab* %126, %struct.policy_file* %127)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %133 = call i32 @kfree(%struct.sidtab* %132)
  br label %306

134:                                              ; preds = %124
  %135 = load i64, i64* %6, align 8
  %136 = load %struct.policydb*, %struct.policydb** %11, align 8
  %137 = getelementptr inbounds %struct.policydb, %struct.policydb* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.policydb*, %struct.policydb** %7, align 8
  %139 = getelementptr inbounds %struct.policydb, %struct.policydb* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load %struct.policydb*, %struct.policydb** %11, align 8
  %144 = getelementptr inbounds %struct.policydb, %struct.policydb* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %162

149:                                              ; preds = %142, %134
  %150 = load %struct.policydb*, %struct.policydb** %7, align 8
  %151 = getelementptr inbounds %struct.policydb, %struct.policydb* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %149
  %155 = load %struct.policydb*, %struct.policydb** %11, align 8
  %156 = getelementptr inbounds %struct.policydb, %struct.policydb* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %154, %149
  br label %162

162:                                              ; preds = %161, %147
  %163 = load %struct.policydb*, %struct.policydb** %11, align 8
  %164 = bitcast %struct.policydb* %163 to %struct.sidtab*
  %165 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %166 = call i32 @policydb_load_isids(%struct.sidtab* %164, %struct.sidtab* %165)
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %171 = load %struct.policydb*, %struct.policydb** %11, align 8
  %172 = bitcast %struct.policydb* %171 to %struct.sidtab*
  %173 = call i32 @policydb_destroy(%struct.sidtab* %172)
  %174 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %175 = call i32 @kfree(%struct.sidtab* %174)
  br label %306

176:                                              ; preds = %162
  %177 = load %struct.policydb*, %struct.policydb** %11, align 8
  %178 = bitcast %struct.policydb* %177 to %struct.sidtab*
  %179 = load i32, i32* @secclass_map, align 4
  %180 = call i32 @selinux_set_mapping(%struct.sidtab* %178, i32 %179, %struct.selinux_map* %13)
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  br label %295

184:                                              ; preds = %176
  %185 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %186 = load %struct.policydb*, %struct.policydb** %11, align 8
  %187 = bitcast %struct.policydb* %186 to %struct.sidtab*
  %188 = call i32 @security_preserve_bools(%struct.selinux_state* %185, %struct.sidtab* %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %295

193:                                              ; preds = %184
  %194 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %195 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %194, i32 0, i32 2
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 3
  %198 = load %struct.sidtab*, %struct.sidtab** %197, align 8
  store %struct.sidtab* %198, %struct.sidtab** %8, align 8
  %199 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %200 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %15, i32 0, i32 2
  store %struct.selinux_state* %199, %struct.selinux_state** %200, align 8
  %201 = load %struct.policydb*, %struct.policydb** %7, align 8
  %202 = bitcast %struct.policydb* %201 to %struct.sidtab*
  %203 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %15, i32 0, i32 1
  store %struct.sidtab* %202, %struct.sidtab** %203, align 8
  %204 = load %struct.policydb*, %struct.policydb** %11, align 8
  %205 = bitcast %struct.policydb* %204 to %struct.sidtab*
  %206 = getelementptr inbounds %struct.convert_context_args, %struct.convert_context_args* %15, i32 0, i32 0
  store %struct.sidtab* %205, %struct.sidtab** %206, align 8
  %207 = load i32, i32* @convert_context, align 4
  %208 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %14, i32 0, i32 2
  store i32 %207, i32* %208, align 8
  %209 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %14, i32 0, i32 1
  store %struct.convert_context_args* %15, %struct.convert_context_args** %209, align 8
  %210 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %211 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %14, i32 0, i32 0
  store %struct.sidtab* %210, %struct.sidtab** %211, align 8
  %212 = load %struct.sidtab*, %struct.sidtab** %8, align 8
  %213 = call i32 @sidtab_convert(%struct.sidtab* %212, %struct.sidtab_convert_params* %14)
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %193
  %217 = call i32 @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0))
  br label %295

218:                                              ; preds = %193
  %219 = load %struct.policydb*, %struct.policydb** %10, align 8
  %220 = bitcast %struct.policydb* %219 to %struct.sidtab*
  %221 = load %struct.policydb*, %struct.policydb** %7, align 8
  %222 = bitcast %struct.policydb* %221 to %struct.sidtab*
  %223 = call i32 @memcpy(%struct.sidtab* %220, %struct.sidtab* %222, i32 16)
  %224 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %225 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %224, i32 0, i32 2
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = call i32 @write_lock_irq(i32* %227)
  %229 = load %struct.policydb*, %struct.policydb** %7, align 8
  %230 = bitcast %struct.policydb* %229 to %struct.sidtab*
  %231 = load %struct.policydb*, %struct.policydb** %11, align 8
  %232 = bitcast %struct.policydb* %231 to %struct.sidtab*
  %233 = call i32 @memcpy(%struct.sidtab* %230, %struct.sidtab* %232, i32 16)
  %234 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %235 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %236 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %235, i32 0, i32 2
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 3
  store %struct.sidtab* %234, %struct.sidtab** %238, align 8
  %239 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %240 = call i32 @security_load_policycaps(%struct.selinux_state* %239)
  %241 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %242 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %241, i32 0, i32 2
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %244, i32 0, i32 0
  %246 = load %struct.sidtab*, %struct.sidtab** %245, align 8
  %247 = bitcast %struct.sidtab* %246 to %struct.selinux_mapping*
  store %struct.selinux_mapping* %247, %struct.selinux_mapping** %12, align 8
  %248 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %13, i32 0, i32 0
  %249 = load %struct.sidtab*, %struct.sidtab** %248, align 8
  %250 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %251 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %250, i32 0, i32 2
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %253, i32 0, i32 0
  store %struct.sidtab* %249, %struct.sidtab** %254, align 8
  %255 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %13, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %258 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %257, i32 0, i32 2
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %260, i32 0, i32 1
  store i32 %256, i32* %261, align 8
  %262 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %263 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %262, i32 0, i32 2
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %265, align 8
  store i64 %267, i64* %16, align 8
  %268 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %269 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %268, i32 0, i32 2
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = call i32 @write_unlock_irq(i32* %271)
  %273 = load %struct.policydb*, %struct.policydb** %10, align 8
  %274 = bitcast %struct.policydb* %273 to %struct.sidtab*
  %275 = call i32 @policydb_destroy(%struct.sidtab* %274)
  %276 = load %struct.sidtab*, %struct.sidtab** %8, align 8
  %277 = call i32 @sidtab_destroy(%struct.sidtab* %276)
  %278 = load %struct.sidtab*, %struct.sidtab** %8, align 8
  %279 = call i32 @kfree(%struct.sidtab* %278)
  %280 = load %struct.selinux_mapping*, %struct.selinux_mapping** %12, align 8
  %281 = bitcast %struct.selinux_mapping* %280 to %struct.sidtab*
  %282 = call i32 @kfree(%struct.sidtab* %281)
  %283 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %284 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i64, i64* %16, align 8
  %287 = call i32 @avc_ss_reset(i32 %285, i64 %286)
  %288 = load i64, i64* %16, align 8
  %289 = call i32 @selnl_notify_policyload(i64 %288)
  %290 = load %struct.selinux_state*, %struct.selinux_state** %4, align 8
  %291 = load i64, i64* %16, align 8
  %292 = call i32 @selinux_status_update_policyload(%struct.selinux_state* %290, i64 %291)
  %293 = call i32 (...) @selinux_netlbl_cache_invalidate()
  %294 = call i32 (...) @selinux_xfrm_notify_policyload()
  store i32 0, i32* %17, align 4
  br label %306

295:                                              ; preds = %216, %191, %183
  %296 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %13, i32 0, i32 0
  %297 = load %struct.sidtab*, %struct.sidtab** %296, align 8
  %298 = call i32 @kfree(%struct.sidtab* %297)
  %299 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %300 = call i32 @sidtab_destroy(%struct.sidtab* %299)
  %301 = load %struct.sidtab*, %struct.sidtab** %9, align 8
  %302 = call i32 @kfree(%struct.sidtab* %301)
  %303 = load %struct.policydb*, %struct.policydb** %11, align 8
  %304 = bitcast %struct.policydb* %303 to %struct.sidtab*
  %305 = call i32 @policydb_destroy(%struct.sidtab* %304)
  br label %306

306:                                              ; preds = %295, %218, %169, %131, %95, %89, %76, %59, %44, %29
  %307 = load %struct.policydb*, %struct.policydb** %10, align 8
  %308 = bitcast %struct.policydb* %307 to %struct.sidtab*
  %309 = call i32 @kfree(%struct.sidtab* %308)
  %310 = load i32, i32* %17, align 4
  ret i32 %310
}

declare dso_local %struct.sidtab* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.sidtab* @kmalloc(i32, i32) #1

declare dso_local i32 @policydb_read(%struct.sidtab*, %struct.policy_file*) #1

declare dso_local i32 @kfree(%struct.sidtab*) #1

declare dso_local i32 @selinux_set_mapping(%struct.sidtab*, i32, %struct.selinux_map*) #1

declare dso_local i32 @policydb_destroy(%struct.sidtab*) #1

declare dso_local i32 @policydb_load_isids(%struct.sidtab*, %struct.sidtab*) #1

declare dso_local i32 @security_load_policycaps(%struct.selinux_state*) #1

declare dso_local i32 @selinux_complete_init(...) #1

declare dso_local i32 @avc_ss_reset(i32, i64) #1

declare dso_local i32 @selnl_notify_policyload(i64) #1

declare dso_local i32 @selinux_status_update_policyload(%struct.selinux_state*, i64) #1

declare dso_local i32 @selinux_netlbl_cache_invalidate(...) #1

declare dso_local i32 @selinux_xfrm_notify_policyload(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @security_preserve_bools(%struct.selinux_state*, %struct.sidtab*) #1

declare dso_local i32 @sidtab_convert(%struct.sidtab*, %struct.sidtab_convert_params*) #1

declare dso_local i32 @memcpy(%struct.sidtab*, %struct.sidtab*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @sidtab_destroy(%struct.sidtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
