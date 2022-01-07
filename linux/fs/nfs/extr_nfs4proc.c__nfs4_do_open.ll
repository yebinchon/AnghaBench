; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_do_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c__nfs4_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_open_context = type { %struct.nfs4_state*, %struct.nfs4_threshold*, %struct.cred*, %struct.dentry* }
%struct.nfs4_state = type { i32 }
%struct.nfs4_threshold = type { i32 }
%struct.cred = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs4_open_createattrs = type { %struct.nfs4_label*, %struct.iattr* }
%struct.nfs4_label = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_state_owner = type { i32 }
%struct.nfs_server = type { i32*, i32 }
%struct.nfs4_opendata = type { %struct.TYPE_6__, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.nfs4_threshold* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32* }

@NFS4_OPEN_CLAIM_NULL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"nfs4_do_open: nfs4_get_state_owner failed!\0A\00", align 1
@NFS4_OPEN_CLAIM_FH = common dso_local global i32 0, align 4
@FATTR4_WORD2_MDSTHRESHOLD = common dso_local global i32 0, align 4
@nfs4_pnfs_open_bitmap = common dso_local global i32* null, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@NFS4_CREATE_GUARDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_open_context*, i32, %struct.nfs4_open_createattrs*, i32*)* @_nfs4_do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_do_open(%struct.inode* %0, %struct.nfs_open_context* %1, i32 %2, %struct.nfs4_open_createattrs* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs_open_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_open_createattrs*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nfs4_state_owner*, align 8
  %13 = alloca %struct.nfs4_state*, align 8
  %14 = alloca %struct.nfs_server*, align 8
  %15 = alloca %struct.nfs4_opendata*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.cred*, align 8
  %18 = alloca %struct.nfs4_threshold**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.iattr*, align 8
  %22 = alloca %struct.nfs4_label*, align 8
  %23 = alloca %struct.nfs4_label*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nfs4_open_createattrs* %3, %struct.nfs4_open_createattrs** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.nfs4_state* null, %struct.nfs4_state** %13, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %27)
  store %struct.nfs_server* %28, %struct.nfs_server** %14, align 8
  %29 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %30 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %29, i32 0, i32 3
  %31 = load %struct.dentry*, %struct.dentry** %30, align 8
  store %struct.dentry* %31, %struct.dentry** %16, align 8
  %32 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %33 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %32, i32 0, i32 2
  %34 = load %struct.cred*, %struct.cred** %33, align 8
  store %struct.cred* %34, %struct.cred** %17, align 8
  %35 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %36 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %35, i32 0, i32 1
  store %struct.nfs4_threshold** %36, %struct.nfs4_threshold*** %18, align 8
  %37 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %38 = call i32 @_nfs4_ctx_to_openmode(%struct.nfs_open_context* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* @NFS4_OPEN_CLAIM_NULL, align 4
  store i32 %39, i32* %20, align 4
  %40 = load %struct.nfs4_open_createattrs*, %struct.nfs4_open_createattrs** %10, align 8
  %41 = getelementptr inbounds %struct.nfs4_open_createattrs, %struct.nfs4_open_createattrs* %40, i32 0, i32 1
  %42 = load %struct.iattr*, %struct.iattr** %41, align 8
  store %struct.iattr* %42, %struct.iattr** %21, align 8
  %43 = load %struct.nfs4_open_createattrs*, %struct.nfs4_open_createattrs** %10, align 8
  %44 = getelementptr inbounds %struct.nfs4_open_createattrs, %struct.nfs4_open_createattrs* %43, i32 0, i32 0
  %45 = load %struct.nfs4_label*, %struct.nfs4_label** %44, align 8
  store %struct.nfs4_label* %45, %struct.nfs4_label** %22, align 8
  store %struct.nfs4_label* null, %struct.nfs4_label** %23, align 8
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %24, align 4
  %48 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %49 = load %struct.cred*, %struct.cred** %17, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.nfs4_state_owner* @nfs4_get_state_owner(%struct.nfs_server* %48, %struct.cred* %49, i32 %50)
  store %struct.nfs4_state_owner* %51, %struct.nfs4_state_owner** %12, align 8
  %52 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %12, align 8
  %53 = icmp eq %struct.nfs4_state_owner* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %5
  %55 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %286

56:                                               ; preds = %5
  %57 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %58 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nfs4_client_recover_expired_lease(i32 %59)
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %283

64:                                               ; preds = %56
  %65 = load %struct.dentry*, %struct.dentry** %16, align 8
  %66 = call i64 @d_really_is_positive(%struct.dentry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.dentry*, %struct.dentry** %16, align 8
  %70 = call i32 @d_inode(%struct.dentry* %69)
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @nfs4_return_incompatible_delegation(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %24, align 4
  %76 = load %struct.dentry*, %struct.dentry** %16, align 8
  %77 = call i64 @d_really_is_positive(%struct.dentry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @NFS4_OPEN_CLAIM_FH, align 4
  store i32 %80, i32* %20, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load %struct.dentry*, %struct.dentry** %16, align 8
  %83 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %12, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.nfs4_open_createattrs*, %struct.nfs4_open_createattrs** %10, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.nfs4_opendata* @nfs4_opendata_alloc(%struct.dentry* %82, %struct.nfs4_state_owner* %83, i32 %84, i32 %85, %struct.nfs4_open_createattrs* %86, i32 %87, i32 %88)
  store %struct.nfs4_opendata* %89, %struct.nfs4_opendata** %15, align 8
  %90 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %91 = icmp eq %struct.nfs4_opendata* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %283

93:                                               ; preds = %81
  %94 = load %struct.nfs4_label*, %struct.nfs4_label** %22, align 8
  %95 = icmp ne %struct.nfs4_label* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.nfs4_label* @nfs4_label_alloc(%struct.nfs_server* %97, i32 %98)
  store %struct.nfs4_label* %99, %struct.nfs4_label** %23, align 8
  %100 = load %struct.nfs4_label*, %struct.nfs4_label** %23, align 8
  %101 = call i64 @IS_ERR(%struct.nfs4_label* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.nfs4_label*, %struct.nfs4_label** %23, align 8
  %105 = call i32 @PTR_ERR(%struct.nfs4_label* %104)
  store i32 %105, i32* %24, align 4
  br label %280

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %93
  %108 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %109 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FATTR4_WORD2_MDSTHRESHOLD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %107
  %117 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %118 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.nfs4_threshold*, %struct.nfs4_threshold** %119, align 8
  %121 = icmp ne %struct.nfs4_threshold* %120, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %116
  %123 = call %struct.nfs4_threshold* (...) @pnfs_mdsthreshold_alloc()
  %124 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %125 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store %struct.nfs4_threshold* %123, %struct.nfs4_threshold** %126, align 8
  %127 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %128 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.nfs4_threshold*, %struct.nfs4_threshold** %129, align 8
  %131 = icmp ne %struct.nfs4_threshold* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  br label %277

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i32*, i32** @nfs4_pnfs_open_bitmap, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %138 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  store i32* %136, i32** %139, align 8
  br label %140

140:                                              ; preds = %134, %107
  %141 = load %struct.dentry*, %struct.dentry** %16, align 8
  %142 = call i64 @d_really_is_positive(%struct.dentry* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load %struct.dentry*, %struct.dentry** %16, align 8
  %146 = call i32 @d_inode(%struct.dentry* %145)
  %147 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %12, align 8
  %148 = call i32 @nfs4_get_open_state(i32 %146, %struct.nfs4_state_owner* %147)
  %149 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %150 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %144, %140
  %152 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %155 = call i32 @_nfs4_open_and_get_state(%struct.nfs4_opendata* %152, i32 %153, %struct.nfs_open_context* %154)
  store i32 %155, i32* %24, align 4
  %156 = load i32, i32* %24, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %277

159:                                              ; preds = %151
  %160 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %161 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %160, i32 0, i32 0
  %162 = load %struct.nfs4_state*, %struct.nfs4_state** %161, align 8
  store %struct.nfs4_state* %162, %struct.nfs4_state** %13, align 8
  %163 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %164 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @O_CREAT, align 4
  %168 = load i32, i32* @O_EXCL, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = load i32, i32* @O_CREAT, align 4
  %172 = load i32, i32* @O_EXCL, align 4
  %173 = or i32 %171, %172
  %174 = icmp eq i32 %170, %173
  br i1 %174, label %175, label %242

175:                                              ; preds = %159
  %176 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %177 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @NFS4_CREATE_GUARDED, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %242

182:                                              ; preds = %175
  %183 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %184 = load %struct.iattr*, %struct.iattr** %21, align 8
  %185 = call i32 @nfs4_exclusive_attrset(%struct.nfs4_opendata* %183, %struct.iattr* %184, %struct.nfs4_label** %22)
  store i32 %185, i32* %25, align 4
  %186 = load i32, i32* %25, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %182
  %189 = load %struct.nfs4_label*, %struct.nfs4_label** %22, align 8
  %190 = icmp ne %struct.nfs4_label* %189, null
  br i1 %190, label %191, label %241

191:                                              ; preds = %188, %182
  %192 = load %struct.iattr*, %struct.iattr** %21, align 8
  %193 = getelementptr inbounds %struct.iattr, %struct.iattr* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %26, align 4
  %195 = load i32, i32* %25, align 4
  %196 = load %struct.iattr*, %struct.iattr** %21, align 8
  %197 = getelementptr inbounds %struct.iattr, %struct.iattr* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %199 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @nfs_fattr_init(i32 %201)
  %203 = load %struct.nfs4_state*, %struct.nfs4_state** %13, align 8
  %204 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cred*, %struct.cred** %17, align 8
  %207 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %208 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.iattr*, %struct.iattr** %21, align 8
  %212 = load %struct.nfs_open_context*, %struct.nfs_open_context** %8, align 8
  %213 = load %struct.nfs4_label*, %struct.nfs4_label** %22, align 8
  %214 = load %struct.nfs4_label*, %struct.nfs4_label** %23, align 8
  %215 = call i32 @nfs4_do_setattr(i32 %205, %struct.cred* %206, i32 %210, %struct.iattr* %211, %struct.nfs_open_context* %212, %struct.nfs4_label* %213, %struct.nfs4_label* %214)
  store i32 %215, i32* %24, align 4
  %216 = load i32, i32* %24, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %191
  %219 = load %struct.nfs4_state*, %struct.nfs4_state** %13, align 8
  %220 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.iattr*, %struct.iattr** %21, align 8
  %223 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %224 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @nfs_setattr_update_inode(i32 %221, %struct.iattr* %222, i32 %226)
  %228 = load %struct.nfs4_state*, %struct.nfs4_state** %13, align 8
  %229 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %232 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.nfs4_label*, %struct.nfs4_label** %23, align 8
  %236 = call i32 @nfs_setsecurity(i32 %230, i32 %234, %struct.nfs4_label* %235)
  br label %237

237:                                              ; preds = %218, %191
  %238 = load i32, i32* %26, align 4
  %239 = load %struct.iattr*, %struct.iattr** %21, align 8
  %240 = getelementptr inbounds %struct.iattr, %struct.iattr* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %237, %188
  br label %242

242:                                              ; preds = %241, %175, %159
  %243 = load i32*, i32** %11, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %247 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i32*, i32** %11, align 8
  store i32 1, i32* %251, align 4
  br label %252

252:                                              ; preds = %250, %245, %242
  %253 = load %struct.nfs4_threshold**, %struct.nfs4_threshold*** %18, align 8
  %254 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %255 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load %struct.nfs4_threshold*, %struct.nfs4_threshold** %256, align 8
  %258 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %259 = call i64 @pnfs_use_threshold(%struct.nfs4_threshold** %253, %struct.nfs4_threshold* %257, %struct.nfs_server* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %252
  %262 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %263 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load %struct.nfs4_threshold*, %struct.nfs4_threshold** %264, align 8
  %266 = load %struct.nfs4_threshold**, %struct.nfs4_threshold*** %18, align 8
  store %struct.nfs4_threshold* %265, %struct.nfs4_threshold** %266, align 8
  %267 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %268 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  store %struct.nfs4_threshold* null, %struct.nfs4_threshold** %269, align 8
  br label %270

270:                                              ; preds = %261, %252
  %271 = load %struct.nfs4_label*, %struct.nfs4_label** %23, align 8
  %272 = call i32 @nfs4_label_free(%struct.nfs4_label* %271)
  %273 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %274 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %273)
  %275 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %12, align 8
  %276 = call i32 @nfs4_put_state_owner(%struct.nfs4_state_owner* %275)
  store i32 0, i32* %6, align 4
  br label %288

277:                                              ; preds = %158, %132
  %278 = load %struct.nfs4_label*, %struct.nfs4_label** %23, align 8
  %279 = call i32 @nfs4_label_free(%struct.nfs4_label* %278)
  br label %280

280:                                              ; preds = %277, %103
  %281 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %15, align 8
  %282 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %281)
  br label %283

283:                                              ; preds = %280, %92, %63
  %284 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %12, align 8
  %285 = call i32 @nfs4_put_state_owner(%struct.nfs4_state_owner* %284)
  br label %286

286:                                              ; preds = %283, %54
  %287 = load i32, i32* %24, align 4
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %286, %270
  %289 = load i32, i32* %6, align 4
  ret i32 %289
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @_nfs4_ctx_to_openmode(%struct.nfs_open_context*) #1

declare dso_local %struct.nfs4_state_owner* @nfs4_get_state_owner(%struct.nfs_server*, %struct.cred*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @nfs4_client_recover_expired_lease(i32) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @nfs4_return_incompatible_delegation(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.nfs4_opendata* @nfs4_opendata_alloc(%struct.dentry*, %struct.nfs4_state_owner*, i32, i32, %struct.nfs4_open_createattrs*, i32, i32) #1

declare dso_local %struct.nfs4_label* @nfs4_label_alloc(%struct.nfs_server*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_label*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_label*) #1

declare dso_local %struct.nfs4_threshold* @pnfs_mdsthreshold_alloc(...) #1

declare dso_local i32 @nfs4_get_open_state(i32, %struct.nfs4_state_owner*) #1

declare dso_local i32 @_nfs4_open_and_get_state(%struct.nfs4_opendata*, i32, %struct.nfs_open_context*) #1

declare dso_local i32 @nfs4_exclusive_attrset(%struct.nfs4_opendata*, %struct.iattr*, %struct.nfs4_label**) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs4_do_setattr(i32, %struct.cred*, i32, %struct.iattr*, %struct.nfs_open_context*, %struct.nfs4_label*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs_setattr_update_inode(i32, %struct.iattr*, i32) #1

declare dso_local i32 @nfs_setsecurity(i32, i32, %struct.nfs4_label*) #1

declare dso_local i64 @pnfs_use_threshold(%struct.nfs4_threshold**, %struct.nfs4_threshold*, %struct.nfs_server*) #1

declare dso_local i32 @nfs4_label_free(%struct.nfs4_label*) #1

declare dso_local i32 @nfs4_opendata_put(%struct.nfs4_opendata*) #1

declare dso_local i32 @nfs4_put_state_owner(%struct.nfs4_state_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
