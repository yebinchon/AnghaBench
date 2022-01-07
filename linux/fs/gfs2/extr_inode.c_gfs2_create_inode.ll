; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_create_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_create_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_diradd = type { i32, i32* }
%struct.inode = type { i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { %struct.qstr }
%struct.qstr = type { i64 }
%struct.file = type { i32 }
%struct.posix_acl = type { i32 }
%struct.gfs2_holder = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32, i32 }
%struct.gfs2_inode = type { i32, i32, i32, %struct.gfs2_glock*, %struct.gfs2_holder, i32, i64, i64, i64, i64, i32 }
%struct.gfs2_sbd = type { i32, i32 }

@__const.gfs2_create_inode.da = private unnamed_addr constant %struct.gfs2_diradd { i32 1, i32* null }, align 8
@GFS2_FNAMESIZE = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@gfs2_open_common = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@GFS2_DIF_INHERIT_JDATA = common dso_local global i32 0, align 4
@gt_new_files_jdata = common dso_local global i32 0, align 4
@GFS2_DIF_JDATA = common dso_local global i32 0, align 4
@GFS2_DIF_SYSTEM = common dso_local global i32 0, align 4
@GFS2_DIF_TOPDIR = common dso_local global i32 0, align 4
@GFS2_AF_ORLOV = common dso_local global i32 0, align 4
@gfs2_inode_glops = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@GL_SKIP = common dso_local global i32 0, align 4
@gfs2_iopen_glops = common dso_local global i32 0, align 4
@GLF_INODE_CREATING = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@gfs2_initxattrs = common dso_local global i32 0, align 4
@FMODE_CREATED = common dso_local global i32 0, align 4
@GIF_FREE_VFS_INODE = common dso_local global i32 0, align 4
@GIF_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32, i8*, i32, i32)* @gfs2_create_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_create_inode(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.qstr*, align 8
  %19 = alloca %struct.posix_acl*, align 8
  %20 = alloca %struct.posix_acl*, align 8
  %21 = alloca [2 x %struct.gfs2_holder], align 16
  %22 = alloca %struct.inode*, align 8
  %23 = alloca %struct.gfs2_inode*, align 8
  %24 = alloca %struct.gfs2_inode*, align 8
  %25 = alloca %struct.gfs2_sbd*, align 8
  %26 = alloca %struct.gfs2_glock*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.gfs2_diradd, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store %struct.dentry* %1, %struct.dentry** %11, align 8
  store %struct.file* %2, %struct.file** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %32 = load %struct.dentry*, %struct.dentry** %11, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  store %struct.qstr* %33, %struct.qstr** %18, align 8
  store %struct.inode* null, %struct.inode** %22, align 8
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %34)
  store %struct.gfs2_inode* %35, %struct.gfs2_inode** %23, align 8
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 5
  %38 = call %struct.gfs2_sbd* @GFS2_SB(i32* %37)
  store %struct.gfs2_sbd* %38, %struct.gfs2_sbd** %25, align 8
  store %struct.gfs2_glock* null, %struct.gfs2_glock** %26, align 8
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 1, i32* %30, align 4
  %39 = bitcast %struct.gfs2_diradd* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 bitcast (%struct.gfs2_diradd* @__const.gfs2_create_inode.da to i8*), i64 16, i1 false)
  %40 = load %struct.qstr*, %struct.qstr** %18, align 8
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %8
  %45 = load %struct.qstr*, %struct.qstr** %18, align 8
  %46 = getelementptr inbounds %struct.qstr, %struct.qstr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GFS2_FNAMESIZE, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %8
  %51 = load i32, i32* @ENAMETOOLONG, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %579

53:                                               ; preds = %44
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %55 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %54)
  store i32 %55, i32* %27, align 4
  %56 = load i32, i32* %27, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %27, align 4
  store i32 %59, i32* %9, align 4
  br label %579

60:                                               ; preds = %53
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %62 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %61)
  store i32 %62, i32* %27, align 4
  %63 = load i32, i32* %27, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %27, align 4
  store i32 %66, i32* %9, align 4
  br label %579

67:                                               ; preds = %60
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %69 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %68, i32 0, i32 3
  %70 = load %struct.gfs2_glock*, %struct.gfs2_glock** %69, align 8
  %71 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %72 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %73 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %70, i32 %71, i32 0, %struct.gfs2_holder* %72)
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %27, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %577

77:                                               ; preds = %67
  %78 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %79 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %78, i64 1
  %80 = call i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder* %79)
  %81 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %82 = load %struct.qstr*, %struct.qstr** %18, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @create_ok(%struct.gfs2_inode* %81, %struct.qstr* %82, i32 %83)
  store i32 %84, i32* %27, align 4
  %85 = load i32, i32* %27, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %537

88:                                               ; preds = %77
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = load %struct.dentry*, %struct.dentry** %11, align 8
  %91 = getelementptr inbounds %struct.dentry, %struct.dentry* %90, i32 0, i32 0
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @S_ISREG(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %95, %88
  %99 = phi i1 [ true, %88 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  %101 = call %struct.inode* @gfs2_dir_search(%struct.inode* %89, %struct.qstr* %91, i32 %100)
  store %struct.inode* %101, %struct.inode** %22, align 8
  %102 = load %struct.inode*, %struct.inode** %22, align 8
  %103 = call i32 @PTR_ERR(%struct.inode* %102)
  store i32 %103, i32* %27, align 4
  %104 = load %struct.inode*, %struct.inode** %22, align 8
  %105 = call i32 @IS_ERR(%struct.inode* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %144, label %107

107:                                              ; preds = %98
  %108 = load %struct.inode*, %struct.inode** %22, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @S_ISDIR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.inode*, %struct.inode** %22, align 8
  %115 = call i32 @iput(%struct.inode* %114)
  %116 = load i32, i32* @EISDIR, align 4
  %117 = sub nsw i32 0, %116
  %118 = call %struct.inode* @ERR_PTR(i32 %117)
  store %struct.inode* %118, %struct.inode** %22, align 8
  br label %537

119:                                              ; preds = %107
  %120 = load %struct.dentry*, %struct.dentry** %11, align 8
  %121 = load %struct.inode*, %struct.inode** %22, align 8
  %122 = call i32 @d_instantiate(%struct.dentry* %120, %struct.inode* %121)
  store i32 0, i32* %27, align 4
  %123 = load %struct.file*, %struct.file** %12, align 8
  %124 = icmp ne %struct.file* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %119
  %126 = load %struct.inode*, %struct.inode** %22, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @S_ISREG(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.file*, %struct.file** %12, align 8
  %133 = load %struct.dentry*, %struct.dentry** %11, align 8
  %134 = load i32, i32* @gfs2_open_common, align 4
  %135 = call i32 @finish_open(%struct.file* %132, %struct.dentry* %133, i32 %134)
  store i32 %135, i32* %27, align 4
  br label %139

136:                                              ; preds = %125
  %137 = load %struct.file*, %struct.file** %12, align 8
  %138 = call i32 @finish_no_open(%struct.file* %137, i32* null)
  store i32 %138, i32* %27, align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %119
  %141 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %142 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %141)
  %143 = load i32, i32* %27, align 4
  store i32 %143, i32* %9, align 4
  br label %579

144:                                              ; preds = %98
  %145 = load i32, i32* %27, align 4
  %146 = load i32, i32* @ENOENT, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %537

150:                                              ; preds = %144
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.inode*, %struct.inode** %10, align 8
  %153 = load %struct.qstr*, %struct.qstr** %18, align 8
  %154 = call i32 @gfs2_diradd_alloc_required(%struct.inode* %152, %struct.qstr* %153, %struct.gfs2_diradd* %31)
  store i32 %154, i32* %27, align 4
  %155 = load i32, i32* %27, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %537

158:                                              ; preds = %151
  %159 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %160 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call %struct.inode* @new_inode(i32 %161)
  store %struct.inode* %162, %struct.inode** %22, align 8
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %27, align 4
  %165 = load %struct.inode*, %struct.inode** %22, align 8
  %166 = icmp ne %struct.inode* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %158
  br label %537

168:                                              ; preds = %158
  %169 = load %struct.inode*, %struct.inode** %10, align 8
  %170 = call i32 @posix_acl_create(%struct.inode* %169, i32* %13, %struct.posix_acl** %19, %struct.posix_acl** %20)
  store i32 %170, i32* %27, align 4
  %171 = load i32, i32* %27, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %537

174:                                              ; preds = %168
  %175 = load %struct.inode*, %struct.inode** %22, align 8
  %176 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %175)
  store %struct.gfs2_inode* %176, %struct.gfs2_inode** %24, align 8
  %177 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %178 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %177)
  store i32 %178, i32* %27, align 4
  %179 = load i32, i32* %27, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %532

182:                                              ; preds = %174
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.inode*, %struct.inode** %22, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  %186 = load %struct.inode*, %struct.inode** %22, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i64 @S_ISDIR(i32 %187)
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 2, i32 1
  %192 = call i32 @set_nlink(%struct.inode* %186, i32 %191)
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.inode*, %struct.inode** %22, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load %struct.inode*, %struct.inode** %22, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.inode*, %struct.inode** %22, align 8
  %200 = call i32 @current_time(%struct.inode* %199)
  %201 = load %struct.inode*, %struct.inode** %22, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  %203 = load %struct.inode*, %struct.inode** %22, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 3
  store i32 %200, i32* %204, align 4
  %205 = load %struct.inode*, %struct.inode** %22, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 4
  store i32 %200, i32* %206, align 4
  %207 = load %struct.inode*, %struct.inode** %22, align 8
  %208 = call i32 @gfs2_set_inode_blocks(%struct.inode* %207, i32 1)
  %209 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %210 = load %struct.inode*, %struct.inode** %22, align 8
  %211 = call i32 @munge_mode_uid_gid(%struct.gfs2_inode* %209, %struct.inode* %210)
  %212 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %213 = call i32 @check_and_update_goal(%struct.gfs2_inode* %212)
  %214 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %215 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %214, i32 0, i32 10
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %218 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %217, i32 0, i32 10
  store i32 %216, i32* %218, align 8
  %219 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %220 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  %221 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %222 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %221, i32 0, i32 7
  store i64 0, i64* %222, align 8
  %223 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %224 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %223, i32 0, i32 9
  store i64 0, i64* %224, align 8
  %225 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %226 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %225, i32 0, i32 8
  store i64 0, i64* %226, align 8
  %227 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %228 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %227, i32 0, i32 1
  store i32 0, i32* %228, align 4
  %229 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %230 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %229, i32 0, i32 6
  store i64 0, i64* %230, align 8
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* @S_IFMT, align 4
  %233 = and i32 %231, %232
  switch i32 %233, label %272 [
    i32 128, label %234
    i32 129, label %255
  ]

234:                                              ; preds = %182
  %235 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %236 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @GFS2_DIF_INHERIT_JDATA, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %234
  %242 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %243 = load i32, i32* @gt_new_files_jdata, align 4
  %244 = call i32 @gfs2_tune_get(%struct.gfs2_sbd* %242, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241, %234
  %247 = load i32, i32* @GFS2_DIF_JDATA, align 4
  %248 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %249 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  br label %252

252:                                              ; preds = %246, %241
  %253 = load %struct.inode*, %struct.inode** %22, align 8
  %254 = call i32 @gfs2_set_aops(%struct.inode* %253)
  br label %272

255:                                              ; preds = %182
  %256 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %257 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @GFS2_DIF_INHERIT_JDATA, align 4
  %260 = and i32 %258, %259
  %261 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %262 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 8
  %265 = load i32, i32* @GFS2_DIF_JDATA, align 4
  %266 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %267 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  %270 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %271 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %270, i32 0, i32 1
  store i32 2, i32* %271, align 4
  br label %272

272:                                              ; preds = %182, %255, %252
  %273 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %274 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @GFS2_DIF_SYSTEM, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %272
  %280 = load i32, i32* @GFS2_DIF_SYSTEM, align 4
  %281 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %282 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  br label %285

285:                                              ; preds = %279, %272
  %286 = load %struct.inode*, %struct.inode** %22, align 8
  %287 = call i32 @gfs2_set_inode_flags(%struct.inode* %286)
  %288 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %289 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call %struct.inode* @d_inode(i32 %290)
  %292 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %291)
  %293 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %294 = icmp eq %struct.gfs2_inode* %292, %293
  br i1 %294, label %302, label %295

295:                                              ; preds = %285
  %296 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %297 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @GFS2_DIF_TOPDIR, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %295, %285
  %303 = load i32, i32* @GFS2_AF_ORLOV, align 4
  %304 = load i32, i32* %29, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %29, align 4
  br label %306

306:                                              ; preds = %302, %295
  %307 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %308 = icmp ne %struct.posix_acl* %307, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %306
  %310 = load %struct.posix_acl*, %struct.posix_acl** %20, align 8
  %311 = icmp ne %struct.posix_acl* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %309, %306
  %313 = load i32, i32* %30, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %30, align 4
  br label %315

315:                                              ; preds = %312, %309
  %316 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %317 = load i32, i32* %29, align 4
  %318 = call i32 @alloc_dinode(%struct.gfs2_inode* %316, i32 %317, i32* %30)
  store i32 %318, i32* %27, align 4
  %319 = load i32, i32* %27, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %315
  br label %514

322:                                              ; preds = %315
  %323 = load %struct.inode*, %struct.inode** %22, align 8
  %324 = load i32, i32* %30, align 4
  %325 = call i32 @gfs2_set_inode_blocks(%struct.inode* %323, i32 %324)
  %326 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %327 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %328 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* @CREATE, align 4
  %331 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %332 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %331, i32 0, i32 3
  %333 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %326, i64 %329, i32* @gfs2_inode_glops, i32 %330, %struct.gfs2_glock** %332)
  store i32 %333, i32* %27, align 4
  %334 = load i32, i32* %27, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %322
  br label %514

337:                                              ; preds = %322
  %338 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %339 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %338, i32 0, i32 3
  %340 = load %struct.gfs2_glock*, %struct.gfs2_glock** %339, align 8
  %341 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %340, i32 0, i32 1
  %342 = call i32 @flush_delayed_work(i32* %341)
  %343 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %344 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %343, i32 0, i32 3
  %345 = load %struct.gfs2_glock*, %struct.gfs2_glock** %344, align 8
  %346 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %347 = call i32 @glock_set_object(%struct.gfs2_glock* %345, %struct.gfs2_inode* %346)
  %348 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %349 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %348, i32 0, i32 3
  %350 = load %struct.gfs2_glock*, %struct.gfs2_glock** %349, align 8
  %351 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %352 = load i32, i32* @GL_SKIP, align 4
  %353 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %354 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %353, i64 1
  %355 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %350, i32 %351, i32 %352, %struct.gfs2_holder* %354)
  store i32 %355, i32* %27, align 4
  %356 = load i32, i32* %27, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %337
  br label %514

359:                                              ; preds = %337
  %360 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %361 = load i32, i32* %30, align 4
  %362 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %360, i32 %361, i32 0)
  store i32 %362, i32* %27, align 4
  %363 = load i32, i32* %27, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  br label %505

366:                                              ; preds = %359
  %367 = load i32, i32* %30, align 4
  %368 = icmp ugt i32 %367, 1
  br i1 %368, label %369, label %378

369:                                              ; preds = %366
  %370 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %371 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %370, i32 0, i32 6
  %372 = load i64, i64* %371, align 8
  %373 = add nsw i64 %372, 1
  %374 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %375 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %374, i32 0, i32 7
  store i64 %373, i64* %375, align 8
  %376 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %377 = call i32 @gfs2_init_xattr(%struct.gfs2_inode* %376)
  br label %378

378:                                              ; preds = %369, %366
  %379 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %380 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %381 = load i8*, i8** %15, align 8
  %382 = call i32 @init_dinode(%struct.gfs2_inode* %379, %struct.gfs2_inode* %380, i8* %381)
  %383 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %384 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %383)
  %385 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %25, align 8
  %386 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %387 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %386, i32 0, i32 6
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* @CREATE, align 4
  %390 = call i32 @gfs2_glock_get(%struct.gfs2_sbd* %385, i64 %388, i32* @gfs2_iopen_glops, i32 %389, %struct.gfs2_glock** %26)
  store i32 %390, i32* %27, align 4
  %391 = load i32, i32* %27, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %378
  br label %505

394:                                              ; preds = %378
  %395 = load i32, i32* @GLF_INODE_CREATING, align 4
  %396 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %397 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %396, i32 0, i32 0
  %398 = call i32 @test_and_set_bit(i32 %395, i32* %397)
  %399 = call i32 @BUG_ON(i32 %398)
  %400 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %401 = load i32, i32* @LM_ST_SHARED, align 4
  %402 = load i32, i32* @GL_EXACT, align 4
  %403 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %404 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %403, i32 0, i32 4
  %405 = call i32 @gfs2_glock_nq_init(%struct.gfs2_glock* %400, i32 %401, i32 %402, %struct.gfs2_holder* %404)
  store i32 %405, i32* %27, align 4
  %406 = load i32, i32* %27, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %394
  br label %505

409:                                              ; preds = %394
  %410 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %411 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %410, i32 0, i32 4
  %412 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %411, i32 0, i32 0
  %413 = load %struct.gfs2_glock*, %struct.gfs2_glock** %412, align 8
  %414 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %415 = call i32 @glock_set_object(%struct.gfs2_glock* %413, %struct.gfs2_inode* %414)
  %416 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %417 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %416)
  %418 = load %struct.inode*, %struct.inode** %22, align 8
  %419 = call i32 @gfs2_set_iop(%struct.inode* %418)
  %420 = load %struct.inode*, %struct.inode** %22, align 8
  %421 = call i32 @insert_inode_hash(%struct.inode* %420)
  store i32 0, i32* %28, align 4
  %422 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %423 = icmp ne %struct.posix_acl* %422, null
  br i1 %423, label %424, label %435

424:                                              ; preds = %409
  %425 = load %struct.inode*, %struct.inode** %22, align 8
  %426 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %427 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %428 = call i32 @__gfs2_set_acl(%struct.inode* %425, %struct.posix_acl* %426, i32 %427)
  store i32 %428, i32* %27, align 4
  %429 = load i32, i32* %27, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %424
  br label %496

432:                                              ; preds = %424
  %433 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %434 = call i32 @posix_acl_release(%struct.posix_acl* %433)
  store %struct.posix_acl* null, %struct.posix_acl** %19, align 8
  br label %435

435:                                              ; preds = %432, %409
  %436 = load %struct.posix_acl*, %struct.posix_acl** %20, align 8
  %437 = icmp ne %struct.posix_acl* %436, null
  br i1 %437, label %438, label %449

438:                                              ; preds = %435
  %439 = load %struct.inode*, %struct.inode** %22, align 8
  %440 = load %struct.posix_acl*, %struct.posix_acl** %20, align 8
  %441 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %442 = call i32 @__gfs2_set_acl(%struct.inode* %439, %struct.posix_acl* %440, i32 %441)
  store i32 %442, i32* %27, align 4
  %443 = load i32, i32* %27, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %438
  br label %496

446:                                              ; preds = %438
  %447 = load %struct.posix_acl*, %struct.posix_acl** %20, align 8
  %448 = call i32 @posix_acl_release(%struct.posix_acl* %447)
  store %struct.posix_acl* null, %struct.posix_acl** %20, align 8
  br label %449

449:                                              ; preds = %446, %435
  %450 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %451 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %450, i32 0, i32 5
  %452 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %453 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %452, i32 0, i32 5
  %454 = load %struct.qstr*, %struct.qstr** %18, align 8
  %455 = call i32 @security_inode_init_security(i32* %451, i32* %453, %struct.qstr* %454, i32* @gfs2_initxattrs, i32* null)
  store i32 %455, i32* %27, align 4
  %456 = load i32, i32* %27, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %449
  br label %496

459:                                              ; preds = %449
  %460 = load %struct.gfs2_inode*, %struct.gfs2_inode** %23, align 8
  %461 = load %struct.qstr*, %struct.qstr** %18, align 8
  %462 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %463 = call i32 @link_dinode(%struct.gfs2_inode* %460, %struct.qstr* %461, %struct.gfs2_inode* %462, %struct.gfs2_diradd* %31)
  store i32 %463, i32* %27, align 4
  %464 = load i32, i32* %27, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %459
  br label %496

467:                                              ; preds = %459
  %468 = load %struct.inode*, %struct.inode** %22, align 8
  %469 = call i32 @mark_inode_dirty(%struct.inode* %468)
  %470 = load %struct.dentry*, %struct.dentry** %11, align 8
  %471 = load %struct.inode*, %struct.inode** %22, align 8
  %472 = call i32 @d_instantiate(%struct.dentry* %470, %struct.inode* %471)
  %473 = load %struct.file*, %struct.file** %12, align 8
  %474 = icmp ne %struct.file* %473, null
  br i1 %474, label %475, label %485

475:                                              ; preds = %467
  %476 = load i32, i32* @FMODE_CREATED, align 4
  %477 = load %struct.file*, %struct.file** %12, align 8
  %478 = getelementptr inbounds %struct.file, %struct.file* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = or i32 %479, %476
  store i32 %480, i32* %478, align 4
  %481 = load %struct.file*, %struct.file** %12, align 8
  %482 = load %struct.dentry*, %struct.dentry** %11, align 8
  %483 = load i32, i32* @gfs2_open_common, align 4
  %484 = call i32 @finish_open(%struct.file* %481, %struct.dentry* %482, i32 %483)
  store i32 %484, i32* %27, align 4
  br label %485

485:                                              ; preds = %475, %467
  %486 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %487 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %486)
  %488 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %489 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %488, i64 1
  %490 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %489)
  %491 = load i32, i32* @GLF_INODE_CREATING, align 4
  %492 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %493 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %492, i32 0, i32 0
  %494 = call i32 @clear_bit(i32 %491, i32* %493)
  %495 = load i32, i32* %27, align 4
  store i32 %495, i32* %9, align 4
  br label %579

496:                                              ; preds = %466, %458, %445, %431
  %497 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %498 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %499 = call i32 @glock_clear_object(%struct.gfs2_glock* %497, %struct.gfs2_inode* %498)
  %500 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %501 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %500, i32 0, i32 4
  %502 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %501)
  %503 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %504 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %503)
  br label %505

505:                                              ; preds = %496, %408, %393, %365
  %506 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %507 = icmp ne %struct.gfs2_glock* %506, null
  br i1 %507, label %508, label %513

508:                                              ; preds = %505
  %509 = load i32, i32* @GLF_INODE_CREATING, align 4
  %510 = load %struct.gfs2_glock*, %struct.gfs2_glock** %26, align 8
  %511 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %510, i32 0, i32 0
  %512 = call i32 @clear_bit(i32 %509, i32* %511)
  br label %513

513:                                              ; preds = %508, %505
  br label %514

514:                                              ; preds = %513, %358, %336, %321
  %515 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %516 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %515, i32 0, i32 3
  %517 = load %struct.gfs2_glock*, %struct.gfs2_glock** %516, align 8
  %518 = icmp ne %struct.gfs2_glock* %517, null
  br i1 %518, label %519, label %529

519:                                              ; preds = %514
  %520 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %521 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %520, i32 0, i32 3
  %522 = load %struct.gfs2_glock*, %struct.gfs2_glock** %521, align 8
  %523 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %524 = call i32 @glock_clear_object(%struct.gfs2_glock* %522, %struct.gfs2_inode* %523)
  %525 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %526 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %525, i32 0, i32 3
  %527 = load %struct.gfs2_glock*, %struct.gfs2_glock** %526, align 8
  %528 = call i32 @gfs2_glock_put(%struct.gfs2_glock* %527)
  br label %529

529:                                              ; preds = %519, %514
  %530 = load %struct.gfs2_inode*, %struct.gfs2_inode** %24, align 8
  %531 = call i32 @gfs2_rsqa_delete(%struct.gfs2_inode* %530, i32* null)
  br label %532

532:                                              ; preds = %529, %181
  %533 = load %struct.posix_acl*, %struct.posix_acl** %19, align 8
  %534 = call i32 @posix_acl_release(%struct.posix_acl* %533)
  %535 = load %struct.posix_acl*, %struct.posix_acl** %20, align 8
  %536 = call i32 @posix_acl_release(%struct.posix_acl* %535)
  br label %537

537:                                              ; preds = %532, %173, %167, %157, %149, %113, %87
  %538 = call i32 @gfs2_dir_no_add(%struct.gfs2_diradd* %31)
  %539 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %540 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %539)
  %541 = load %struct.inode*, %struct.inode** %22, align 8
  %542 = call i32 @IS_ERR_OR_NULL(%struct.inode* %541)
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %567, label %544

544:                                              ; preds = %537
  %545 = load %struct.inode*, %struct.inode** %22, align 8
  %546 = call i32 @clear_nlink(%struct.inode* %545)
  %547 = load i32, i32* %28, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %552, label %549

549:                                              ; preds = %544
  %550 = load %struct.inode*, %struct.inode** %22, align 8
  %551 = call i32 @mark_inode_dirty(%struct.inode* %550)
  br label %552

552:                                              ; preds = %549, %544
  %553 = load i32, i32* %28, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %557

555:                                              ; preds = %552
  %556 = load i32, i32* @GIF_FREE_VFS_INODE, align 4
  br label %559

557:                                              ; preds = %552
  %558 = load i32, i32* @GIF_ALLOC_FAILED, align 4
  br label %559

559:                                              ; preds = %557, %555
  %560 = phi i32 [ %556, %555 ], [ %558, %557 ]
  %561 = load %struct.inode*, %struct.inode** %22, align 8
  %562 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %561)
  %563 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %562, i32 0, i32 2
  %564 = call i32 @set_bit(i32 %560, i32* %563)
  %565 = load %struct.inode*, %struct.inode** %22, align 8
  %566 = call i32 @iput(%struct.inode* %565)
  br label %567

567:                                              ; preds = %559, %537
  %568 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %569 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %568, i64 1
  %570 = call i64 @gfs2_holder_initialized(%struct.gfs2_holder* %569)
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %576

572:                                              ; preds = %567
  %573 = getelementptr inbounds [2 x %struct.gfs2_holder], [2 x %struct.gfs2_holder]* %21, i64 0, i64 0
  %574 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %573, i64 1
  %575 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %574)
  br label %576

576:                                              ; preds = %572, %567
  br label %577

577:                                              ; preds = %576, %76
  %578 = load i32, i32* %27, align 4
  store i32 %578, i32* %9, align 4
  br label %579

579:                                              ; preds = %577, %485, %140, %65, %58, %50
  %580 = load i32, i32* %9, align 4
  ret i32 %580
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.gfs2_glock*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_mark_uninitialized(%struct.gfs2_holder*) #1

declare dso_local i32 @create_ok(%struct.gfs2_inode*, %struct.qstr*, i32) #1

declare dso_local %struct.inode* @gfs2_dir_search(%struct.inode*, %struct.qstr*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @finish_open(%struct.file*, %struct.dentry*, i32) #1

declare dso_local i32 @finish_no_open(%struct.file*, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_diradd_alloc_required(%struct.inode*, %struct.qstr*, %struct.gfs2_diradd*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @gfs2_set_inode_blocks(%struct.inode*, i32) #1

declare dso_local i32 @munge_mode_uid_gid(%struct.gfs2_inode*, %struct.inode*) #1

declare dso_local i32 @check_and_update_goal(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_set_aops(%struct.inode*) #1

declare dso_local i32 @gfs2_set_inode_flags(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @alloc_dinode(%struct.gfs2_inode*, i32, i32*) #1

declare dso_local i32 @gfs2_glock_get(%struct.gfs2_sbd*, i64, i32*, i32, %struct.gfs2_glock**) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @glock_set_object(%struct.gfs2_glock*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_init_xattr(%struct.gfs2_inode*) #1

declare dso_local i32 @init_dinode(%struct.gfs2_inode*, %struct.gfs2_inode*, i8*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_put(%struct.gfs2_glock*) #1

declare dso_local i32 @gfs2_set_iop(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @__gfs2_set_acl(%struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @security_inode_init_security(i32*, i32*, %struct.qstr*, i32*, i32*) #1

declare dso_local i32 @link_dinode(%struct.gfs2_inode*, %struct.qstr*, %struct.gfs2_inode*, %struct.gfs2_diradd*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @glock_clear_object(%struct.gfs2_glock*, %struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_rsqa_delete(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @gfs2_dir_no_add(%struct.gfs2_diradd*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @gfs2_holder_initialized(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
