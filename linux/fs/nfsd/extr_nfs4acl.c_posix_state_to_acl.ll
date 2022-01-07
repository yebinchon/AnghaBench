; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_posix_state_to_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_posix_state_to_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i32, i32, i32, i32 }
%struct.posix_acl_state = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_16__, %struct.TYPE_9__, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@NFS4_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@ACL_GROUP = common dso_local global i32 0, align 4
@ACL_MASK = common dso_local global i32 0, align 4
@ACL_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.posix_acl_state*, i32)* @posix_state_to_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @posix_state_to_acl(%struct.posix_acl_state* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.posix_acl_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl_entry*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.posix_acl_state* %0, %struct.posix_acl_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %11 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NFS4_ACL_TYPE_DEFAULT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.posix_acl* null, %struct.posix_acl** %3, align 8
  br label %244

20:                                               ; preds = %14, %2
  %21 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %22 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %21, i32 0, i32 3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %29 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 3, i32* %8, align 4
  br label %48

35:                                               ; preds = %27, %20
  %36 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %37 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %36, i32 0, i32 3
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 4, %40
  %42 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %43 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %41, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %35, %34
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.posix_acl* @posix_acl_alloc(i32 %49, i32 %50)
  store %struct.posix_acl* %51, %struct.posix_acl** %7, align 8
  %52 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %53 = icmp ne %struct.posix_acl* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.posix_acl* @ERR_PTR(i32 %56)
  store %struct.posix_acl* %57, %struct.posix_acl** %3, align 8
  br label %244

58:                                               ; preds = %48
  %59 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %60 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %59, i32 0, i32 0
  %61 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %60, align 8
  store %struct.posix_acl_entry* %61, %struct.posix_acl_entry** %6, align 8
  %62 = load i32, i32* @ACL_USER_OBJ, align 4
  %63 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %64 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %66 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %70 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @low_mode_from_nfs4(i32 %68, i32* %70, i32 %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %125, %58
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %76 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %75, i32 0, i32 3
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %128

81:                                               ; preds = %73
  %82 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %83 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %82, i32 1
  store %struct.posix_acl_entry* %83, %struct.posix_acl_entry** %6, align 8
  %84 = load i32, i32* @ACL_USER, align 4
  %85 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %86 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %88 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %87, i32 0, i32 3
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %99 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %98, i32 0, i32 0
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @low_mode_from_nfs4(i32 %97, i32* %99, i32 %100)
  %102 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %103 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %102, i32 0, i32 3
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %113 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %115 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %116 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %115, i32 0, i32 3
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = call i32 @add_to_mask(%struct.posix_acl_state* %114, %struct.TYPE_16__* %123)
  br label %125

125:                                              ; preds = %81
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %73

128:                                              ; preds = %73
  %129 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %130 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %129, i32 1
  store %struct.posix_acl_entry* %130, %struct.posix_acl_entry** %6, align 8
  %131 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %132 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %133 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %135 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %139 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %138, i32 0, i32 0
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @low_mode_from_nfs4(i32 %137, i32* %139, i32 %140)
  %142 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %143 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %144 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %143, i32 0, i32 4
  %145 = call i32 @add_to_mask(%struct.posix_acl_state* %142, %struct.TYPE_16__* %144)
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %198, %128
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %149 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %148, i32 0, i32 2
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %147, %152
  br i1 %153, label %154, label %201

154:                                              ; preds = %146
  %155 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %156 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %155, i32 1
  store %struct.posix_acl_entry* %156, %struct.posix_acl_entry** %6, align 8
  %157 = load i32, i32* @ACL_GROUP, align 4
  %158 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %159 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %161 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %160, i32 0, i32 2
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %172 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %171, i32 0, i32 0
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @low_mode_from_nfs4(i32 %170, i32* %172, i32 %173)
  %175 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %176 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %175, i32 0, i32 2
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %186 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  %187 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %188 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %189 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %188, i32 0, i32 2
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = call i32 @add_to_mask(%struct.posix_acl_state* %187, %struct.TYPE_16__* %196)
  br label %198

198:                                              ; preds = %154
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %146

201:                                              ; preds = %146
  %202 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %203 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %202, i32 0, i32 3
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %201
  %209 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %210 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %209, i32 0, i32 2
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %208, %201
  %216 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %217 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %216, i32 1
  store %struct.posix_acl_entry* %217, %struct.posix_acl_entry** %6, align 8
  %218 = load i32, i32* @ACL_MASK, align 4
  %219 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %220 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %222 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %226 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %225, i32 0, i32 0
  %227 = load i32, i32* %5, align 4
  %228 = call i32 @low_mode_from_nfs4(i32 %224, i32* %226, i32 %227)
  br label %229

229:                                              ; preds = %215, %208
  %230 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %231 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %230, i32 1
  store %struct.posix_acl_entry* %231, %struct.posix_acl_entry** %6, align 8
  %232 = load i32, i32* @ACL_OTHER, align 4
  %233 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %234 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %236 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %240 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %239, i32 0, i32 0
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @low_mode_from_nfs4(i32 %238, i32* %240, i32 %241)
  %243 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* %243, %struct.posix_acl** %3, align 8
  br label %244

244:                                              ; preds = %229, %54, %19
  %245 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %245
}

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @low_mode_from_nfs4(i32, i32*, i32) #1

declare dso_local i32 @add_to_mask(%struct.posix_acl_state*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
