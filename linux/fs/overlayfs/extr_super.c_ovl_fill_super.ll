; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry*, i32, %struct.ovl_fs*, i32, i32, i32*, i32, i32, i32*, i32 }
%struct.dentry = type { %struct.ovl_entry* }
%struct.ovl_entry = type { i32 }
%struct.ovl_fs = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32*, i64, %struct.cred* }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cred = type { i32 }
%struct.path = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ovl_index_def = common dso_local global i32 0, align 4
@ovl_nfs_export_def = common dso_local global i32 0, align 4
@ovl_metacopy_def = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"overlayfs: missing 'lowerdir'\0A\00", align 1
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@OVL_XINO_OFF = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i64 0, align 8
@ovl_super_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"overlayfs: missing 'workdir'\0A\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"overlayfs: NFS export requires an index dir, falling back to nfs_export=off.\0A\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"overlayfs: NFS export is not supported with metadata only copy up, falling back to nfs_export=off.\0A\00", align 1
@ovl_export_operations = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@OVERLAYFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@ovl_xattr_handlers = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@OVL_IMPURE = common dso_local global i32 0, align 4
@OVL_WHITEOUTS = common dso_local global i32 0, align 4
@OVL_E_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @ovl_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ovl_entry*, align 8
  %11 = alloca %struct.ovl_fs*, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.path* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ovl_fs* @kzalloc(i32 88, i32 %17)
  store %struct.ovl_fs* %18, %struct.ovl_fs** %11, align 8
  %19 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %20 = icmp ne %struct.ovl_fs* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %341

22:                                               ; preds = %3
  %23 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %23, %struct.cred** %12, align 8
  %24 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %25 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %24, i32 0, i32 5
  store %struct.cred* %23, %struct.cred** %25, align 8
  %26 = load %struct.cred*, %struct.cred** %12, align 8
  %27 = icmp ne %struct.cred* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %337

29:                                               ; preds = %22
  %30 = load i32, i32* @ovl_index_def, align 4
  %31 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %32 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @ovl_nfs_export_def, align 4
  %35 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %36 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = call i64 (...) @ovl_xino_def()
  %39 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %40 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* @ovl_metacopy_def, align 8
  %43 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %44 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i64 %42, i64* %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %48 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %47, i32 0, i32 0
  %49 = call i32 @ovl_parse_opt(i8* %46, %struct.TYPE_6__* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %29
  br label %337

53:                                               ; preds = %29
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  %56 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %57 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  br label %337

67:                                               ; preds = %53
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = getelementptr inbounds %struct.super_block, %struct.super_block* %68, i32 0, i32 7
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %74 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OVL_XINO_OFF, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load i64, i64* @BITS_PER_LONG, align 8
  %81 = sub nsw i64 %80, 32
  %82 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %83 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %82, i32 0, i32 4
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %79, %67
  %85 = load %struct.super_block*, %struct.super_block** %5, align 8
  %86 = getelementptr inbounds %struct.super_block, %struct.super_block* %85, i32 0, i32 8
  store i32* @ovl_super_operations, i32** %86, align 8
  %87 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %88 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %84
  %93 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %94 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %337

100:                                              ; preds = %92
  %101 = load %struct.super_block*, %struct.super_block** %5, align 8
  %102 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %103 = call i32 @ovl_get_upper(%struct.super_block* %101, %struct.ovl_fs* %102, %struct.path* %8)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %337

107:                                              ; preds = %100
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %110 = call i32 @ovl_get_workdir(%struct.super_block* %108, %struct.ovl_fs* %109, %struct.path* %8)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %337

114:                                              ; preds = %107
  %115 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %116 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @SB_RDONLY, align 4
  %121 = load %struct.super_block*, %struct.super_block** %5, align 8
  %122 = getelementptr inbounds %struct.super_block, %struct.super_block* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %127 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.super_block*, %struct.super_block** %5, align 8
  %134 = getelementptr inbounds %struct.super_block, %struct.super_block* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %136 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.super_block*, %struct.super_block** %5, align 8
  %143 = getelementptr inbounds %struct.super_block, %struct.super_block* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %125, %84
  %145 = load %struct.super_block*, %struct.super_block** %5, align 8
  %146 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %147 = call %struct.ovl_entry* @ovl_get_lowerstack(%struct.super_block* %145, %struct.ovl_fs* %146)
  store %struct.ovl_entry* %147, %struct.ovl_entry** %10, align 8
  %148 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  %149 = call i32 @PTR_ERR(%struct.ovl_entry* %148)
  store i32 %149, i32* %13, align 4
  %150 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  %151 = call i64 @IS_ERR(%struct.ovl_entry* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %337

154:                                              ; preds = %144
  %155 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %156 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = icmp ne %struct.TYPE_5__* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @SB_RDONLY, align 4
  %161 = load %struct.super_block*, %struct.super_block** %5, align 8
  %162 = getelementptr inbounds %struct.super_block, %struct.super_block* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %154
  %166 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %167 = call i32 @ovl_force_readonly(%struct.ovl_fs* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %201, label %169

169:                                              ; preds = %165
  %170 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %171 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %169
  %176 = load %struct.super_block*, %struct.super_block** %5, align 8
  %177 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %178 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  %179 = call i32 @ovl_get_indexdir(%struct.super_block* %176, %struct.ovl_fs* %177, %struct.ovl_entry* %178, %struct.path* %8)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %332

183:                                              ; preds = %175
  %184 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %185 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %183
  %189 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %190 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @dput(i32* %191)
  %193 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %194 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %193, i32 0, i32 3
  store i32* null, i32** %194, align 8
  %195 = load i32, i32* @SB_RDONLY, align 4
  %196 = load %struct.super_block*, %struct.super_block** %5, align 8
  %197 = getelementptr inbounds %struct.super_block, %struct.super_block* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %188, %183
  br label %201

201:                                              ; preds = %200, %169, %165
  %202 = load %struct.super_block*, %struct.super_block** %5, align 8
  %203 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %204 = call i32 @ovl_check_overlapping_layers(%struct.super_block* %202, %struct.ovl_fs* %203)
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %332

208:                                              ; preds = %201
  %209 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %210 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %233, label %213

213:                                              ; preds = %208
  %214 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %215 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  store i32 0, i32* %216, align 8
  %217 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %218 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %217, i32 0, i32 1
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = icmp ne %struct.TYPE_5__* %219, null
  br i1 %220, label %221, label %232

221:                                              ; preds = %213
  %222 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %223 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = call i32 @pr_warn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %229 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %230 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %227, %221, %213
  br label %233

233:                                              ; preds = %232, %208
  %234 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %235 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %233
  %240 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %241 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  %246 = call i32 @pr_warn(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0))
  %247 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %248 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  store i32 0, i32* %249, align 4
  br label %250

250:                                              ; preds = %245, %239, %233
  %251 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %252 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load %struct.super_block*, %struct.super_block** %5, align 8
  %258 = getelementptr inbounds %struct.super_block, %struct.super_block* %257, i32 0, i32 5
  store i32* @ovl_export_operations, i32** %258, align 8
  br label %259

259:                                              ; preds = %256, %250
  %260 = load %struct.cred*, %struct.cred** %12, align 8
  %261 = getelementptr inbounds %struct.cred, %struct.cred* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %264 = call i32 @cap_lower(i32 %262, i32 %263)
  %265 = load i32, i32* @OVERLAYFS_SUPER_MAGIC, align 4
  %266 = load %struct.super_block*, %struct.super_block** %5, align 8
  %267 = getelementptr inbounds %struct.super_block, %struct.super_block* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* @ovl_xattr_handlers, align 4
  %269 = load %struct.super_block*, %struct.super_block** %5, align 8
  %270 = getelementptr inbounds %struct.super_block, %struct.super_block* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 8
  %271 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %272 = load %struct.super_block*, %struct.super_block** %5, align 8
  %273 = getelementptr inbounds %struct.super_block, %struct.super_block* %272, i32 0, i32 2
  store %struct.ovl_fs* %271, %struct.ovl_fs** %273, align 8
  %274 = load i32, i32* @SB_POSIXACL, align 4
  %275 = load %struct.super_block*, %struct.super_block** %5, align 8
  %276 = getelementptr inbounds %struct.super_block, %struct.super_block* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 8
  %279 = load i32, i32* @ENOMEM, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %13, align 4
  %281 = load %struct.super_block*, %struct.super_block** %5, align 8
  %282 = load i32, i32* @S_IFDIR, align 4
  %283 = call i32 @ovl_new_inode(%struct.super_block* %281, i32 %282, i32 0)
  %284 = call %struct.dentry* @d_make_root(i32 %283)
  store %struct.dentry* %284, %struct.dentry** %9, align 8
  %285 = load %struct.dentry*, %struct.dentry** %9, align 8
  %286 = icmp ne %struct.dentry* %285, null
  br i1 %286, label %288, label %287

287:                                              ; preds = %259
  br label %332

288:                                              ; preds = %259
  %289 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  %290 = load %struct.dentry*, %struct.dentry** %9, align 8
  %291 = getelementptr inbounds %struct.dentry, %struct.dentry* %290, i32 0, i32 0
  store %struct.ovl_entry* %289, %struct.ovl_entry** %291, align 8
  %292 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @mntput(i32 %293)
  %295 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %288
  %299 = load %struct.dentry*, %struct.dentry** %9, align 8
  %300 = call i32 @ovl_dentry_set_upper_alias(%struct.dentry* %299)
  %301 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i64 @ovl_is_impuredir(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %298
  %306 = load i32, i32* @OVL_IMPURE, align 4
  %307 = load %struct.dentry*, %struct.dentry** %9, align 8
  %308 = call i32 @d_inode(%struct.dentry* %307)
  %309 = call i32 @ovl_set_flag(i32 %306, i32 %308)
  br label %310

310:                                              ; preds = %305, %298
  br label %311

311:                                              ; preds = %310, %288
  %312 = load i32, i32* @OVL_WHITEOUTS, align 4
  %313 = load %struct.dentry*, %struct.dentry** %9, align 8
  %314 = call i32 @d_inode(%struct.dentry* %313)
  %315 = call i32 @ovl_set_flag(i32 %312, i32 %314)
  %316 = load i32, i32* @OVL_E_CONNECTED, align 4
  %317 = load %struct.dentry*, %struct.dentry** %9, align 8
  %318 = call i32 @ovl_dentry_set_flag(i32 %316, %struct.dentry* %317)
  %319 = load %struct.dentry*, %struct.dentry** %9, align 8
  %320 = call i32 @d_inode(%struct.dentry* %319)
  %321 = call i32 @ovl_set_upperdata(i32 %320)
  %322 = load %struct.dentry*, %struct.dentry** %9, align 8
  %323 = call i32 @d_inode(%struct.dentry* %322)
  %324 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.dentry*, %struct.dentry** %9, align 8
  %327 = call i32 @ovl_dentry_lower(%struct.dentry* %326)
  %328 = call i32 @ovl_inode_init(i32 %323, i64 %325, i32 %327, i32* null)
  %329 = load %struct.dentry*, %struct.dentry** %9, align 8
  %330 = load %struct.super_block*, %struct.super_block** %5, align 8
  %331 = getelementptr inbounds %struct.super_block, %struct.super_block* %330, i32 0, i32 0
  store %struct.dentry* %329, %struct.dentry** %331, align 8
  store i32 0, i32* %4, align 4
  br label %343

332:                                              ; preds = %287, %207, %182
  %333 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  %334 = call i32 @ovl_entry_stack_free(%struct.ovl_entry* %333)
  %335 = load %struct.ovl_entry*, %struct.ovl_entry** %10, align 8
  %336 = call i32 @kfree(%struct.ovl_entry* %335)
  br label %337

337:                                              ; preds = %332, %153, %113, %106, %98, %66, %52, %28
  %338 = call i32 @path_put(%struct.path* %8)
  %339 = load %struct.ovl_fs*, %struct.ovl_fs** %11, align 8
  %340 = call i32 @ovl_free_fs(%struct.ovl_fs* %339)
  br label %341

341:                                              ; preds = %337, %21
  %342 = load i32, i32* %13, align 4
  store i32 %342, i32* %4, align 4
  br label %343

343:                                              ; preds = %341, %311
  %344 = load i32, i32* %4, align 4
  ret i32 %344
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ovl_fs* @kzalloc(i32, i32) #2

declare dso_local %struct.cred* @prepare_creds(...) #2

declare dso_local i64 @ovl_xino_def(...) #2

declare dso_local i32 @ovl_parse_opt(i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @ovl_get_upper(%struct.super_block*, %struct.ovl_fs*, %struct.path*) #2

declare dso_local i32 @ovl_get_workdir(%struct.super_block*, %struct.ovl_fs*, %struct.path*) #2

declare dso_local %struct.ovl_entry* @ovl_get_lowerstack(%struct.super_block*, %struct.ovl_fs*) #2

declare dso_local i32 @PTR_ERR(%struct.ovl_entry*) #2

declare dso_local i64 @IS_ERR(%struct.ovl_entry*) #2

declare dso_local i32 @ovl_force_readonly(%struct.ovl_fs*) #2

declare dso_local i32 @ovl_get_indexdir(%struct.super_block*, %struct.ovl_fs*, %struct.ovl_entry*, %struct.path*) #2

declare dso_local i32 @dput(i32*) #2

declare dso_local i32 @ovl_check_overlapping_layers(%struct.super_block*, %struct.ovl_fs*) #2

declare dso_local i32 @pr_warn(i8*) #2

declare dso_local i32 @cap_lower(i32, i32) #2

declare dso_local %struct.dentry* @d_make_root(i32) #2

declare dso_local i32 @ovl_new_inode(%struct.super_block*, i32, i32) #2

declare dso_local i32 @mntput(i32) #2

declare dso_local i32 @ovl_dentry_set_upper_alias(%struct.dentry*) #2

declare dso_local i64 @ovl_is_impuredir(i64) #2

declare dso_local i32 @ovl_set_flag(i32, i32) #2

declare dso_local i32 @d_inode(%struct.dentry*) #2

declare dso_local i32 @ovl_dentry_set_flag(i32, %struct.dentry*) #2

declare dso_local i32 @ovl_set_upperdata(i32) #2

declare dso_local i32 @ovl_inode_init(i32, i64, i32, i32*) #2

declare dso_local i32 @ovl_dentry_lower(%struct.dentry*) #2

declare dso_local i32 @ovl_entry_stack_free(%struct.ovl_entry*) #2

declare dso_local i32 @kfree(%struct.ovl_entry*) #2

declare dso_local i32 @path_put(%struct.path*) #2

declare dso_local i32 @ovl_free_fs(%struct.ovl_fs*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
