; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_alloc_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_alloc_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.keyring_search_context = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.key = type { i32 }
%struct.key_user = type { i32 }
%struct.assoc_array_edit = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s,%s,,,\00", align 1
@KEY_POS_VIEW = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_POS_LINK = common dso_local global i32 0, align 4
@KEY_POS_SETATTR = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_POS_READ = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@KEY_POS_WRITE = common dso_local global i32 0, align 4
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4
@key_construction_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" = 0 [%d]\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" = -EINPROGRESS [%d]\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c" = %d [linkcheck]\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" = %d [prelink]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.keyring_search_context*, %struct.key*, i64, %struct.key_user*, %struct.key**)* @construct_alloc_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_alloc_key(%struct.keyring_search_context* %0, %struct.key* %1, i64 %2, %struct.key_user* %3, %struct.key** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.keyring_search_context*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.key_user*, align 8
  %11 = alloca %struct.key**, align 8
  %12 = alloca %struct.assoc_array_edit*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.key*, align 8
  %16 = alloca i32, align 4
  store %struct.keyring_search_context* %0, %struct.keyring_search_context** %7, align 8
  store %struct.key* %1, %struct.key** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.key_user* %3, %struct.key_user** %10, align 8
  store %struct.key** %4, %struct.key*** %11, align 8
  store %struct.assoc_array_edit* null, %struct.assoc_array_edit** %12, align 8
  %17 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %18 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %24 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kenter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.key**, %struct.key*** %11, align 8
  store %struct.key* null, %struct.key** %28, align 8
  %29 = load %struct.key_user*, %struct.key_user** %10, align 8
  %30 = getelementptr inbounds %struct.key_user, %struct.key_user* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* @KEY_POS_VIEW, align 4
  %33 = load i32, i32* @KEY_POS_SEARCH, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @KEY_POS_LINK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @KEY_POS_SETATTR, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @KEY_USR_VIEW, align 4
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  %42 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %43 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %5
  %50 = load i32, i32* @KEY_POS_READ, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %49, %5
  %54 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %55 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = icmp eq %struct.TYPE_7__* %57, @key_type_keyring
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %61 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59, %53
  %68 = load i32, i32* @KEY_POS_WRITE, align 4
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %67, %59
  %72 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %73 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %77 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %81 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %86 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %91 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i64, i64* %9, align 8
  %95 = call %struct.key* @key_alloc(%struct.TYPE_7__* %75, i32 %79, i32 %84, i32 %89, %struct.TYPE_8__* %92, i32 %93, i64 %94, i32* null)
  store %struct.key* %95, %struct.key** %13, align 8
  %96 = load %struct.key*, %struct.key** %13, align 8
  %97 = call i64 @IS_ERR(%struct.key* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %71
  br label %221

100:                                              ; preds = %71
  %101 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %102 = load %struct.key*, %struct.key** %13, align 8
  %103 = getelementptr inbounds %struct.key, %struct.key* %102, i32 0, i32 0
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  %105 = load %struct.key*, %struct.key** %8, align 8
  %106 = icmp ne %struct.key* %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %100
  %108 = load %struct.key*, %struct.key** %8, align 8
  %109 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %110 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %109, i32 0, i32 0
  %111 = call i32 @__key_link_lock(%struct.key* %108, %struct.TYPE_9__* %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %212

115:                                              ; preds = %107
  %116 = load %struct.key*, %struct.key** %8, align 8
  %117 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %118 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %117, i32 0, i32 0
  %119 = call i32 @__key_link_begin(%struct.key* %116, %struct.TYPE_9__* %118, %struct.assoc_array_edit** %12)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %206

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %100
  %125 = call i32 @mutex_lock(i32* @key_construction_mutex)
  %126 = call i32 (...) @rcu_read_lock()
  %127 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %128 = call %struct.key* @search_process_keyrings_rcu(%struct.keyring_search_context* %127)
  store %struct.key* %128, %struct.key** %15, align 8
  %129 = call i32 (...) @rcu_read_unlock()
  %130 = load %struct.key*, %struct.key** %15, align 8
  %131 = call i64 @IS_ERR(%struct.key* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %124
  br label %159

134:                                              ; preds = %124
  %135 = load %struct.key*, %struct.key** %8, align 8
  %136 = icmp ne %struct.key* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct.key*, %struct.key** %13, align 8
  %139 = call i32 @__key_link(%struct.key* %138, %struct.assoc_array_edit** %12)
  br label %140

140:                                              ; preds = %137, %134
  %141 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %142 = load %struct.key*, %struct.key** %8, align 8
  %143 = icmp ne %struct.key* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load %struct.key*, %struct.key** %8, align 8
  %146 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %147 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %146, i32 0, i32 0
  %148 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %12, align 8
  %149 = call i32 @__key_link_end(%struct.key* %145, %struct.TYPE_9__* %147, %struct.assoc_array_edit* %148)
  br label %150

150:                                              ; preds = %144, %140
  %151 = load %struct.key_user*, %struct.key_user** %10, align 8
  %152 = getelementptr inbounds %struct.key_user, %struct.key_user* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.key*, %struct.key** %13, align 8
  %155 = load %struct.key**, %struct.key*** %11, align 8
  store %struct.key* %154, %struct.key** %155, align 8
  %156 = load %struct.key*, %struct.key** %13, align 8
  %157 = call i32 @key_serial(%struct.key* %156)
  %158 = call i32 @kleave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  store i32 0, i32* %6, align 4
  br label %230

159:                                              ; preds = %133
  %160 = load %struct.key*, %struct.key** %13, align 8
  %161 = call i32 @key_put(%struct.key* %160)
  %162 = call i32 @mutex_unlock(i32* @key_construction_mutex)
  %163 = load %struct.key*, %struct.key** %15, align 8
  %164 = call %struct.key* @key_ref_to_ptr(%struct.key* %163)
  store %struct.key* %164, %struct.key** %13, align 8
  %165 = load %struct.key*, %struct.key** %8, align 8
  %166 = icmp ne %struct.key* %165, null
  br i1 %166, label %167, label %186

167:                                              ; preds = %159
  %168 = load %struct.key*, %struct.key** %8, align 8
  %169 = load %struct.key*, %struct.key** %13, align 8
  %170 = call i32 @__key_link_check_live_key(%struct.key* %168, %struct.key* %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.key*, %struct.key** %13, align 8
  %175 = call i32 @__key_link(%struct.key* %174, %struct.assoc_array_edit** %12)
  br label %176

176:                                              ; preds = %173, %167
  %177 = load %struct.key*, %struct.key** %8, align 8
  %178 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %179 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %178, i32 0, i32 0
  %180 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %12, align 8
  %181 = call i32 @__key_link_end(%struct.key* %177, %struct.TYPE_9__* %179, %struct.assoc_array_edit* %180)
  %182 = load i32, i32* %16, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %197

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %185, %159
  %187 = load %struct.key_user*, %struct.key_user** %10, align 8
  %188 = getelementptr inbounds %struct.key_user, %struct.key_user* %187, i32 0, i32 0
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load %struct.key*, %struct.key** %13, align 8
  %191 = load %struct.key**, %struct.key*** %11, align 8
  store %struct.key* %190, %struct.key** %191, align 8
  %192 = load %struct.key*, %struct.key** %13, align 8
  %193 = call i32 @key_serial(%struct.key* %192)
  %194 = call i32 @kleave(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* @EINPROGRESS, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %6, align 4
  br label %230

197:                                              ; preds = %184
  %198 = load %struct.key_user*, %struct.key_user** %10, align 8
  %199 = getelementptr inbounds %struct.key_user, %struct.key_user* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load %struct.key*, %struct.key** %13, align 8
  %202 = call i32 @key_put(%struct.key* %201)
  %203 = load i32, i32* %16, align 4
  %204 = call i32 @kleave(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %16, align 4
  store i32 %205, i32* %6, align 4
  br label %230

206:                                              ; preds = %122
  %207 = load %struct.key*, %struct.key** %8, align 8
  %208 = load %struct.keyring_search_context*, %struct.keyring_search_context** %7, align 8
  %209 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %208, i32 0, i32 0
  %210 = load %struct.assoc_array_edit*, %struct.assoc_array_edit** %12, align 8
  %211 = call i32 @__key_link_end(%struct.key* %207, %struct.TYPE_9__* %209, %struct.assoc_array_edit* %210)
  br label %212

212:                                              ; preds = %206, %114
  %213 = load %struct.key_user*, %struct.key_user** %10, align 8
  %214 = getelementptr inbounds %struct.key_user, %struct.key_user* %213, i32 0, i32 0
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = load %struct.key*, %struct.key** %13, align 8
  %217 = call i32 @key_put(%struct.key* %216)
  %218 = load i32, i32* %16, align 4
  %219 = call i32 @kleave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %16, align 4
  store i32 %220, i32* %6, align 4
  br label %230

221:                                              ; preds = %99
  %222 = load %struct.key_user*, %struct.key_user** %10, align 8
  %223 = getelementptr inbounds %struct.key_user, %struct.key_user* %222, i32 0, i32 0
  %224 = call i32 @mutex_unlock(i32* %223)
  %225 = load %struct.key*, %struct.key** %13, align 8
  %226 = call i32 @PTR_ERR(%struct.key* %225)
  %227 = call i32 @kleave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  %228 = load %struct.key*, %struct.key** %13, align 8
  %229 = call i32 @PTR_ERR(%struct.key* %228)
  store i32 %229, i32* %6, align 4
  br label %230

230:                                              ; preds = %221, %212, %197, %186, %150
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @kenter(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.key* @key_alloc(%struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_8__*, i32, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__key_link_lock(%struct.key*, %struct.TYPE_9__*) #1

declare dso_local i32 @__key_link_begin(%struct.key*, %struct.TYPE_9__*, %struct.assoc_array_edit**) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.key* @search_process_keyrings_rcu(%struct.keyring_search_context*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @__key_link(%struct.key*, %struct.assoc_array_edit**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__key_link_end(%struct.key*, %struct.TYPE_9__*, %struct.assoc_array_edit*) #1

declare dso_local i32 @kleave(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @key_ref_to_ptr(%struct.key*) #1

declare dso_local i32 @__key_link_check_live_key(%struct.key*, %struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
