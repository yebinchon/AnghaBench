; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_call_sbin_request_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_call_sbin_request_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32 }
%struct.request_key_auth = type { i64, %struct.key* }
%struct.cred = type { %struct.key*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@call_sbin_request_key.request_key = internal constant [18 x i8] c"/sbin/request-key\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"{%d},{%d},%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_req.%u\00", align 1
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_ALLOC_QUOTA_OVERRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@UMH_WAIT_PROC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"usermode -> 0x%x\00", align 1
@KEY_FLAG_USER_CONSTRUCT = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, i8*)* @call_sbin_request_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_sbin_request_key(%struct.key* %0, i8* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.request_key_auth*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca [9 x i8*], align 16
  %14 = alloca [3 x i8*], align 16
  %15 = alloca [12 x i8], align 1
  %16 = alloca [12 x i8], align 1
  %17 = alloca [12 x i8], align 1
  %18 = alloca [3 x [12 x i8]], align 16
  %19 = alloca [20 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store i8* %1, i8** %4, align 8
  %22 = load %struct.key*, %struct.key** %3, align 8
  %23 = call %struct.request_key_auth* @get_request_key_auth(%struct.key* %22)
  store %struct.request_key_auth* %23, %struct.request_key_auth** %5, align 8
  %24 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %24, %struct.cred** %6, align 8
  %25 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %26 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %25, i32 0, i32 1
  %27 = load %struct.key*, %struct.key** %26, align 8
  store %struct.key* %27, %struct.key** %9, align 8
  %28 = load %struct.key*, %struct.key** %9, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.key*, %struct.key** %3, align 8
  %32 = getelementptr inbounds %struct.key, %struct.key* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %35 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @kenter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i64 %36)
  %38 = call i32 @look_up_user_keyrings(i32* null, %struct.key** %12)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %233

42:                                               ; preds = %2
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %44 = load %struct.key*, %struct.key** %9, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call %struct.cred* (...) @get_current_cred()
  store %struct.cred* %48, %struct.cred** %6, align 8
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %19, i64 0, i64 0
  %50 = load %struct.cred*, %struct.cred** %6, align 8
  %51 = getelementptr inbounds %struct.cred, %struct.cred* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cred*, %struct.cred** %6, align 8
  %54 = getelementptr inbounds %struct.cred, %struct.cred* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cred*, %struct.cred** %6, align 8
  %57 = load i32, i32* @KEY_POS_ALL, align 4
  %58 = load i32, i32* @KEY_USR_VIEW, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @KEY_USR_READ, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @KEY_ALLOC_QUOTA_OVERRUN, align 4
  %63 = call %struct.key* @keyring_alloc(i8* %49, i32 %52, i32 %55, %struct.cred* %56, i32 %61, i32 %62, i32* null, i32* null)
  store %struct.key* %63, %struct.key** %10, align 8
  %64 = load %struct.cred*, %struct.cred** %6, align 8
  %65 = call i32 @put_cred(%struct.cred* %64)
  %66 = load %struct.key*, %struct.key** %10, align 8
  %67 = call i64 @IS_ERR(%struct.key* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %42
  %70 = load %struct.key*, %struct.key** %10, align 8
  %71 = call i32 @PTR_ERR(%struct.key* %70)
  store i32 %71, i32* %20, align 4
  br label %230

72:                                               ; preds = %42
  %73 = load %struct.key*, %struct.key** %10, align 8
  %74 = load %struct.key*, %struct.key** %3, align 8
  %75 = call i32 @key_link(%struct.key* %73, %struct.key* %74)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %227

79:                                               ; preds = %72
  %80 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %81 = load %struct.cred*, %struct.cred** %6, align 8
  %82 = getelementptr inbounds %struct.cred, %struct.cred* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @from_kuid(i32* @init_user_ns, i32 %83)
  %85 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %87 = load %struct.cred*, %struct.cred** %6, align 8
  %88 = getelementptr inbounds %struct.cred, %struct.cred* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @from_kgid(i32* @init_user_ns, i32 %89)
  %91 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %93 = load %struct.key*, %struct.key** %9, align 8
  %94 = getelementptr inbounds %struct.key, %struct.key* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %18, i64 0, i64 0
  %98 = getelementptr inbounds [12 x i8], [12 x i8]* %97, i64 0, i64 0
  %99 = load %struct.cred*, %struct.cred** %6, align 8
  %100 = getelementptr inbounds %struct.cred, %struct.cred* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = icmp ne %struct.TYPE_3__* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %79
  %104 = load %struct.cred*, %struct.cred** %6, align 8
  %105 = getelementptr inbounds %struct.cred, %struct.cred* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  br label %110

109:                                              ; preds = %79
  br label %110

110:                                              ; preds = %109, %103
  %111 = phi i32 [ %108, %103 ], [ 0, %109 ]
  %112 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  store i32 0, i32* %7, align 4
  %113 = load %struct.cred*, %struct.cred** %6, align 8
  %114 = getelementptr inbounds %struct.cred, %struct.cred* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.cred*, %struct.cred** %6, align 8
  %119 = getelementptr inbounds %struct.cred, %struct.cred* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %117, %110
  %124 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %18, i64 0, i64 1
  %125 = getelementptr inbounds [12 x i8], [12 x i8]* %124, i64 0, i64 0
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @sprintf(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load %struct.cred*, %struct.cred** %6, align 8
  %129 = getelementptr inbounds %struct.cred, %struct.cred* %128, i32 0, i32 0
  %130 = load %struct.key*, %struct.key** %129, align 8
  store %struct.key* %130, %struct.key** %11, align 8
  %131 = load %struct.key*, %struct.key** %11, align 8
  %132 = icmp ne %struct.key* %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %123
  %134 = load %struct.key*, %struct.key** %12, align 8
  store %struct.key* %134, %struct.key** %11, align 8
  br label %135

135:                                              ; preds = %133, %123
  %136 = load %struct.key*, %struct.key** %11, align 8
  %137 = getelementptr inbounds %struct.key, %struct.key* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %8, align 4
  %139 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %18, i64 0, i64 2
  %140 = getelementptr inbounds [12 x i8], [12 x i8]* %139, i64 0, i64 0
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @sprintf(i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  store i32 0, i32* %21, align 4
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %21, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 %145
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %146, align 8
  %147 = load i32, i32* %21, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %21, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 %149
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8** %150, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 %152
  store i8* null, i8** %153, align 8
  store i32 0, i32* %21, align 4
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %21, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %156
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @call_sbin_request_key.request_key, i64 0, i64 0), i8** %157, align 8
  %158 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %159 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = load i32, i32* %21, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %21, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %164
  store i8* %161, i8** %165, align 8
  %166 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %167 = load i32, i32* %21, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %21, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %169
  store i8* %166, i8** %170, align 8
  %171 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %172 = load i32, i32* %21, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %21, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %174
  store i8* %171, i8** %175, align 8
  %176 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %21, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %179
  store i8* %176, i8** %180, align 8
  %181 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %18, i64 0, i64 0
  %182 = getelementptr inbounds [12 x i8], [12 x i8]* %181, i64 0, i64 0
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %21, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %185
  store i8* %182, i8** %186, align 8
  %187 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %18, i64 0, i64 1
  %188 = getelementptr inbounds [12 x i8], [12 x i8]* %187, i64 0, i64 0
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %21, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %191
  store i8* %188, i8** %192, align 8
  %193 = getelementptr inbounds [3 x [12 x i8]], [3 x [12 x i8]]* %18, i64 0, i64 2
  %194 = getelementptr inbounds [12 x i8], [12 x i8]* %193, i64 0, i64 0
  %195 = load i32, i32* %21, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %21, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %197
  store i8* %194, i8** %198, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 %200
  store i8* null, i8** %201, align 8
  %202 = getelementptr inbounds [9 x i8*], [9 x i8*]* %13, i64 0, i64 0
  %203 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 0
  %204 = load %struct.key*, %struct.key** %10, align 8
  %205 = load i32, i32* @UMH_WAIT_PROC, align 4
  %206 = call i32 @call_usermodehelper_keys(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @call_sbin_request_key.request_key, i64 0, i64 0), i8** %202, i8** %203, %struct.key* %204, i32 %205)
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @kdebug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %20, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %135
  %212 = load i32, i32* @KEY_FLAG_USER_CONSTRUCT, align 4
  %213 = load %struct.key*, %struct.key** %9, align 8
  %214 = getelementptr inbounds %struct.key, %struct.key* %213, i32 0, i32 1
  %215 = call i64 @test_bit(i32 %212, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %211
  %218 = load %struct.key*, %struct.key** %9, align 8
  %219 = call i64 @key_validate(%struct.key* %218)
  %220 = icmp slt i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217, %211
  %222 = load i32, i32* @ENOKEY, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %20, align 4
  br label %225

224:                                              ; preds = %217
  store i32 0, i32* %20, align 4
  br label %225

225:                                              ; preds = %224, %221
  br label %226

226:                                              ; preds = %225, %135
  br label %227

227:                                              ; preds = %226, %78
  %228 = load %struct.key*, %struct.key** %10, align 8
  %229 = call i32 @key_put(%struct.key* %228)
  br label %230

230:                                              ; preds = %227, %69
  %231 = load %struct.key*, %struct.key** %12, align 8
  %232 = call i32 @key_put(%struct.key* %231)
  br label %233

233:                                              ; preds = %230, %41
  %234 = load %struct.key*, %struct.key** %3, align 8
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @complete_request_key(%struct.key* %234, i32 %235)
  %237 = load i32, i32* %20, align 4
  %238 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %20, align 4
  ret i32 %239
}

declare dso_local %struct.request_key_auth* @get_request_key_auth(%struct.key*) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, i32, i32, i64) #1

declare dso_local i32 @look_up_user_keyrings(i32*, %struct.key**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.cred* @get_current_cred(...) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32, i32*, i32*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @key_link(%struct.key*, %struct.key*) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @call_usermodehelper_keys(i8*, i8**, i8**, %struct.key*, i32) #1

declare dso_local i32 @kdebug(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @key_validate(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @complete_request_key(%struct.key*, i32) #1

declare dso_local i32 @kleave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
