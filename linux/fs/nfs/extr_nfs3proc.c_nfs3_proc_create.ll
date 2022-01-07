; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3proc.c_nfs3_proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.iattr = type { i32, i32 }
%struct.posix_acl = type { i32 }
%struct.nfs3_createdata = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8**, %struct.iattr*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"NFS call  create %pd\0A\00", align 1
@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_CREATE = common dso_local global i64 0, align 8
@O_EXCL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_12__* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"NFS call  setattr (post-create)\0A\00", align 1
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"NFS reply setattr (post-create): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"NFS reply create: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32)* @nfs3_proc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_create(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca %struct.nfs3_createdata*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.dentry* %16)
  %18 = call %struct.nfs3_createdata* (...) @nfs3_alloc_createdata()
  store %struct.nfs3_createdata* %18, %struct.nfs3_createdata** %11, align 8
  %19 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %20 = icmp eq %struct.nfs3_createdata* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %214

22:                                               ; preds = %4
  %23 = load i32*, i32** @nfs3_procedures, align 8
  %24 = load i64, i64* @NFS3PROC_CREATE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %27 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i32 @NFS_FH(%struct.inode* %29)
  %31 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %32 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  store i32 %30, i32* %34, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %40 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store i32 %38, i32* %42, align 4
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %48 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 8
  %51 = load %struct.iattr*, %struct.iattr** %7, align 8
  %52 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %53 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store %struct.iattr* %51, %struct.iattr** %55, align 8
  %56 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %57 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 128, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @O_EXCL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %22
  %65 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %66 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 130, i32* %68, align 8
  %69 = load i32, i32* @jiffies, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %72 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  store i8* %70, i8** %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %82 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  store i8* %80, i8** %86, align 8
  br label %87

87:                                               ; preds = %64, %22
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = load %struct.iattr*, %struct.iattr** %7, align 8
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %89, i32 0, i32 1
  %91 = call i32 @posix_acl_create(%struct.inode* %88, i32* %90, %struct.posix_acl** %9, %struct.posix_acl** %10)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %214

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %125, %95
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = load %struct.dentry*, %struct.dentry** %6, align 8
  %99 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %100 = call %struct.dentry* @nfs3_do_create(%struct.inode* %97, %struct.dentry* %98, %struct.nfs3_createdata* %99)
  store %struct.dentry* %100, %struct.dentry** %12, align 8
  %101 = load %struct.dentry*, %struct.dentry** %12, align 8
  %102 = call i32 @PTR_ERR_OR_ZERO(%struct.dentry* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @ENOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %136

108:                                              ; preds = %96
  %109 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %110 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %125 [
    i32 130, label %114
    i32 129, label %119
    i32 128, label %124
  ]

114:                                              ; preds = %108
  %115 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %116 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32 129, i32* %118, align 8
  br label %125

119:                                              ; preds = %108
  %120 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %121 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i32 128, i32* %123, align 8
  br label %125

124:                                              ; preds = %108
  br label %214

125:                                              ; preds = %108, %119, %114
  %126 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %127 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @nfs_fattr_init(i32 %129)
  %131 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %132 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @nfs_fattr_init(i32 %134)
  br label %96

136:                                              ; preds = %107
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %209

140:                                              ; preds = %136
  %141 = load %struct.dentry*, %struct.dentry** %12, align 8
  %142 = icmp ne %struct.dentry* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %144, %struct.dentry** %6, align 8
  br label %145

145:                                              ; preds = %143, %140
  %146 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %147 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 130
  br i1 %151, label %152, label %200

152:                                              ; preds = %145
  %153 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %154 = load %struct.iattr*, %struct.iattr** %7, align 8
  %155 = getelementptr inbounds %struct.iattr, %struct.iattr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATTR_ATIME_SET, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %152
  %161 = load i32, i32* @ATTR_ATIME, align 4
  %162 = load %struct.iattr*, %struct.iattr** %7, align 8
  %163 = getelementptr inbounds %struct.iattr, %struct.iattr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %152
  %167 = load %struct.iattr*, %struct.iattr** %7, align 8
  %168 = getelementptr inbounds %struct.iattr, %struct.iattr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ATTR_MTIME_SET, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* @ATTR_MTIME, align 4
  %175 = load %struct.iattr*, %struct.iattr** %7, align 8
  %176 = getelementptr inbounds %struct.iattr, %struct.iattr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %166
  %180 = load %struct.dentry*, %struct.dentry** %6, align 8
  %181 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %182 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.iattr*, %struct.iattr** %7, align 8
  %186 = call i32 @nfs3_proc_setattr(%struct.dentry* %180, i32 %184, %struct.iattr* %185)
  store i32 %186, i32* %13, align 4
  %187 = load %struct.dentry*, %struct.dentry** %6, align 8
  %188 = call i32 @d_inode(%struct.dentry* %187)
  %189 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %190 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @nfs_post_op_update_inode(i32 %188, i32 %192)
  %194 = load i32, i32* %13, align 4
  %195 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %179
  br label %206

199:                                              ; preds = %179
  br label %200

200:                                              ; preds = %199, %145
  %201 = load %struct.dentry*, %struct.dentry** %6, align 8
  %202 = call i32 @d_inode(%struct.dentry* %201)
  %203 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %204 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %205 = call i32 @nfs3_proc_setacls(i32 %202, %struct.posix_acl* %203, %struct.posix_acl* %204)
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %200, %198
  %207 = load %struct.dentry*, %struct.dentry** %12, align 8
  %208 = call i32 @dput(%struct.dentry* %207)
  br label %209

209:                                              ; preds = %206, %139
  %210 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %211 = call i32 @posix_acl_release(%struct.posix_acl* %210)
  %212 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %213 = call i32 @posix_acl_release(%struct.posix_acl* %212)
  br label %214

214:                                              ; preds = %209, %124, %94, %21
  %215 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %11, align 8
  %216 = call i32 @nfs3_free_createdata(%struct.nfs3_createdata* %215)
  %217 = load i32, i32* %13, align 4
  %218 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %13, align 4
  ret i32 %219
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.nfs3_createdata* @nfs3_alloc_createdata(...) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local %struct.dentry* @nfs3_do_create(%struct.inode*, %struct.dentry*, %struct.nfs3_createdata*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.dentry*) #1

declare dso_local i32 @nfs_fattr_init(i32) #1

declare dso_local i32 @nfs3_proc_setattr(%struct.dentry*, i32, %struct.iattr*) #1

declare dso_local i32 @nfs_post_op_update_inode(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @nfs3_proc_setacls(i32, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @nfs3_free_createdata(%struct.nfs3_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
