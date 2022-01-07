; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_direntplus_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_direntplus_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.fuse_direntplus = type { %struct.fuse_dirent, %struct.fuse_entry_out }
%struct.fuse_dirent = type { i32, i32 }
%struct.fuse_entry_out = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qstr = type { i8*, i32, i32 }
%struct.inode = type { i32, i32 }
%struct.fuse_conn = type { i64 }
%struct.fuse_inode = type { i32, i32, i32 }

@wq = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FUSE_I_INIT_RDPLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.fuse_direntplus*, i32)* @fuse_direntplus_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_direntplus_link(%struct.file* %0, %struct.fuse_direntplus* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fuse_direntplus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_entry_out*, align 8
  %9 = alloca %struct.fuse_dirent*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.qstr, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.fuse_conn*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.fuse_inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.fuse_direntplus* %1, %struct.fuse_direntplus** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %6, align 8
  %19 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %18, i32 0, i32 1
  store %struct.fuse_entry_out* %19, %struct.fuse_entry_out** %8, align 8
  %20 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %6, align 8
  %21 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %20, i32 0, i32 0
  store %struct.fuse_dirent* %21, %struct.fuse_dirent** %9, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  store %struct.dentry* %25, %struct.dentry** %10, align 8
  %26 = load %struct.fuse_dirent*, %struct.fuse_dirent** %9, align 8
  %27 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fuse_dirent*, %struct.fuse_dirent** %9, align 8
  %30 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call { i8*, i64 } @QSTR_INIT(i32 %28, i32 %31)
  %33 = bitcast %struct.qstr* %11 to { i8*, i64 }*
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i8*, i64 } %32, 0
  store i8* %35, i8** %34, align 8
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i8*, i64 } %32, 1
  store i64 %37, i64* %36, align 8
  %38 = load %struct.dentry*, %struct.dentry** %10, align 8
  %39 = call %struct.inode* @d_inode(%struct.dentry* %38)
  store %struct.inode* %39, %struct.inode** %14, align 8
  %40 = load i32, i32* @wq, align 4
  %41 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %40)
  %42 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %43 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %239

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 46
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %239

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 46
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %239

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %74 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @invalid_nodeid(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %239

81:                                               ; preds = %72
  %82 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %83 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @fuse_valid_type(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %239

91:                                               ; preds = %81
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %92)
  store %struct.fuse_conn* %93, %struct.fuse_conn** %15, align 8
  %94 = load %struct.dentry*, %struct.dentry** %10, align 8
  %95 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @full_name_hash(%struct.dentry* %94, i8* %96, i32 %98)
  %100 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load %struct.dentry*, %struct.dentry** %10, align 8
  %102 = call %struct.dentry* @d_lookup(%struct.dentry* %101, %struct.qstr* %11)
  store %struct.dentry* %102, %struct.dentry** %12, align 8
  %103 = load %struct.dentry*, %struct.dentry** %12, align 8
  %104 = icmp ne %struct.dentry* %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %144, %105
  %107 = load %struct.dentry*, %struct.dentry** %10, align 8
  %108 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* %107, %struct.qstr* %11, i32* @wq)
  store %struct.dentry* %108, %struct.dentry** %12, align 8
  %109 = load %struct.dentry*, %struct.dentry** %12, align 8
  %110 = call i64 @IS_ERR(%struct.dentry* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.dentry*, %struct.dentry** %12, align 8
  %114 = call i32 @PTR_ERR(%struct.dentry* %113)
  store i32 %114, i32* %4, align 4
  br label %239

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %91
  %117 = load %struct.dentry*, %struct.dentry** %12, align 8
  %118 = call i32 @d_in_lookup(%struct.dentry* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %180, label %120

120:                                              ; preds = %116
  %121 = load %struct.dentry*, %struct.dentry** %12, align 8
  %122 = call %struct.inode* @d_inode(%struct.dentry* %121)
  store %struct.inode* %122, %struct.inode** %16, align 8
  %123 = load %struct.inode*, %struct.inode** %16, align 8
  %124 = icmp ne %struct.inode* %123, null
  br i1 %124, label %125, label %144

125:                                              ; preds = %120
  %126 = load %struct.inode*, %struct.inode** %16, align 8
  %127 = call i64 @get_node_id(%struct.inode* %126)
  %128 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %129 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %144, label %132

132:                                              ; preds = %125
  %133 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %134 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.inode*, %struct.inode** %16, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %136, %139
  %141 = load i32, i32* @S_IFMT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %132, %125, %120
  %145 = load %struct.dentry*, %struct.dentry** %12, align 8
  %146 = call i32 @d_invalidate(%struct.dentry* %145)
  %147 = load %struct.dentry*, %struct.dentry** %12, align 8
  %148 = call i32 @dput(%struct.dentry* %147)
  br label %106

149:                                              ; preds = %132
  %150 = load %struct.inode*, %struct.inode** %16, align 8
  %151 = call i64 @is_bad_inode(%struct.inode* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load %struct.dentry*, %struct.dentry** %12, align 8
  %155 = call i32 @dput(%struct.dentry* %154)
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %239

158:                                              ; preds = %149
  %159 = load %struct.inode*, %struct.inode** %16, align 8
  %160 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %159)
  store %struct.fuse_inode* %160, %struct.fuse_inode** %17, align 8
  %161 = load %struct.fuse_inode*, %struct.fuse_inode** %17, align 8
  %162 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %161, i32 0, i32 1
  %163 = call i32 @spin_lock(i32* %162)
  %164 = load %struct.fuse_inode*, %struct.fuse_inode** %17, align 8
  %165 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.fuse_inode*, %struct.fuse_inode** %17, align 8
  %169 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %168, i32 0, i32 1
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load %struct.inode*, %struct.inode** %16, align 8
  %172 = call i32 @forget_all_cached_acls(%struct.inode* %171)
  %173 = load %struct.inode*, %struct.inode** %16, align 8
  %174 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %175 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %174, i32 0, i32 1
  %176 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %177 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %176)
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @fuse_change_attributes(%struct.inode* %173, %struct.TYPE_5__* %175, i32 %177, i32 %178)
  br label %222

180:                                              ; preds = %116
  %181 = load %struct.inode*, %struct.inode** %14, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %185 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %188 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %191 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %190, i32 0, i32 1
  %192 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %193 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %192)
  %194 = load i32, i32* %7, align 4
  %195 = call %struct.inode* @fuse_iget(i32 %183, i64 %186, i32 %189, %struct.TYPE_5__* %191, i32 %193, i32 %194)
  store %struct.inode* %195, %struct.inode** %16, align 8
  %196 = load %struct.inode*, %struct.inode** %16, align 8
  %197 = icmp ne %struct.inode* %196, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %180
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = sub nsw i32 0, %199
  %201 = call %struct.inode* @ERR_PTR(i32 %200)
  store %struct.inode* %201, %struct.inode** %16, align 8
  br label %202

202:                                              ; preds = %198, %180
  %203 = load %struct.inode*, %struct.inode** %16, align 8
  %204 = load %struct.dentry*, %struct.dentry** %12, align 8
  %205 = call %struct.dentry* @d_splice_alias(%struct.inode* %203, %struct.dentry* %204)
  store %struct.dentry* %205, %struct.dentry** %13, align 8
  %206 = load %struct.dentry*, %struct.dentry** %12, align 8
  %207 = call i32 @d_lookup_done(%struct.dentry* %206)
  %208 = load %struct.dentry*, %struct.dentry** %13, align 8
  %209 = icmp ne %struct.dentry* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %202
  %211 = load %struct.dentry*, %struct.dentry** %12, align 8
  %212 = call i32 @dput(%struct.dentry* %211)
  %213 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %213, %struct.dentry** %12, align 8
  br label %214

214:                                              ; preds = %210, %202
  %215 = load %struct.dentry*, %struct.dentry** %12, align 8
  %216 = call i64 @IS_ERR(%struct.dentry* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load %struct.dentry*, %struct.dentry** %12, align 8
  %220 = call i32 @PTR_ERR(%struct.dentry* %219)
  store i32 %220, i32* %4, align 4
  br label %239

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %158
  %223 = load %struct.fuse_conn*, %struct.fuse_conn** %15, align 8
  %224 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32, i32* @FUSE_I_INIT_RDPLUS, align 4
  %229 = load %struct.inode*, %struct.inode** %16, align 8
  %230 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %229)
  %231 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %230, i32 0, i32 0
  %232 = call i32 @set_bit(i32 %228, i32* %231)
  br label %233

233:                                              ; preds = %227, %222
  %234 = load %struct.dentry*, %struct.dentry** %12, align 8
  %235 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %8, align 8
  %236 = call i32 @fuse_change_entry_timeout(%struct.dentry* %234, %struct.fuse_entry_out* %235)
  %237 = load %struct.dentry*, %struct.dentry** %12, align 8
  %238 = call i32 @dput(%struct.dentry* %237)
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %233, %218, %153, %112, %88, %78, %70, %58, %46
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local { i8*, i64 } @QSTR_INIT(i32, i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i64 @invalid_nodeid(i64) #1

declare dso_local i32 @fuse_valid_type(i32) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @full_name_hash(%struct.dentry*, i8*, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @d_alloc_parallel(%struct.dentry*, %struct.qstr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @d_in_lookup(%struct.dentry*) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @forget_all_cached_acls(%struct.inode*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local %struct.inode* @fuse_iget(i32, i64, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @d_lookup_done(%struct.dentry*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
