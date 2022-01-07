; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32, i32, i8*, i8* }
%struct.dentry = type { i32 }
%struct.btstack = type { i32 }
%struct.component_name = type { i32 }
%struct.tlock = type { i32 }
%struct.dt_lock = type { i64, %struct.lv* }
%struct.lv = type { i32, i64 }
%struct.tblock = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.metapage = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"jfs_rename: %pd %pd\00", align 1
@JFS_LOOKUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@RDWRLOCK_NORMAL = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@COMMIT_MUTEX_SECOND_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_VICTIM = common dso_local global i32 0, align 4
@JFS_RENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"new_ip->i_nlink != 0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@JFS_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"jfs_rename didn't expect dtSearch to fail w/rc = %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"jfs_rename: dtInsert returned -EIO\00", align 1
@JFS_REMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"jfs_rename did not expect dtDelete to return rc = %d\00", align 1
@tlckDTREE = common dso_local global i32 0, align 4
@tlckBTROOT = common dso_local global i32 0, align 4
@tlckRELINK = common dso_local global i32 0, align 4
@COMMIT_SYNC = common dso_local global i32 0, align 4
@COMMIT_Stale = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"jfs_rename: returning %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @jfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btstack, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.component_name, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.component_name, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tlock*, align 8
  %21 = alloca %struct.dt_lock*, align 8
  %22 = alloca %struct.lv*, align 8
  %23 = alloca i32, align 4
  %24 = alloca [4 x %struct.inode*], align 16
  %25 = alloca %struct.tblock*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @RENAME_NOREPLACE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %588

36:                                               ; preds = %5
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = ptrtoint %struct.dentry* %37 to i32
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  %40 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38, %struct.dentry* %39)
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i32 @dquot_initialize(%struct.inode* %41)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %584

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call i32 @dquot_initialize(%struct.inode* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %584

52:                                               ; preds = %46
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = call %struct.inode* @d_inode(%struct.dentry* %53)
  store %struct.inode* %54, %struct.inode** %17, align 8
  %55 = load %struct.dentry*, %struct.dentry** %10, align 8
  %56 = call %struct.inode* @d_inode(%struct.dentry* %55)
  store %struct.inode* %56, %struct.inode** %15, align 8
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = call i32 @get_UCSname(%struct.component_name* %16, %struct.dentry* %57)
  store i32 %58, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %584

61:                                               ; preds = %52
  %62 = load %struct.dentry*, %struct.dentry** %10, align 8
  %63 = call i32 @get_UCSname(%struct.component_name* %14, %struct.dentry* %62)
  store i32 %63, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %582

66:                                               ; preds = %61
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = load i32, i32* @JFS_LOOKUP, align 4
  %69 = call i32 @dtSearch(%struct.inode* %67, %struct.component_name* %16, i64* %13, %struct.btstack* %12, i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.inode*, %struct.inode** %17, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %66
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %18, align 4
  br label %580

81:                                               ; preds = %72
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = load i32, i32* @JFS_LOOKUP, align 4
  %84 = call i32 @dtSearch(%struct.inode* %82, %struct.component_name* %14, i64* %13, %struct.btstack* %12, i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %81
  %88 = load %struct.inode*, %struct.inode** %15, align 8
  %89 = icmp ne %struct.inode* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64, i64* %13, align 8
  %92 = load %struct.inode*, %struct.inode** %15, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %87
  %97 = load i32, i32* @ESTALE, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %18, align 4
  br label %580

99:                                               ; preds = %90
  br label %114

100:                                              ; preds = %81
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %580

106:                                              ; preds = %100
  %107 = load %struct.inode*, %struct.inode** %15, align 8
  %108 = icmp ne %struct.inode* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @ESTALE, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %18, align 4
  br label %580

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %99
  %115 = load %struct.inode*, %struct.inode** %17, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @S_ISDIR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load %struct.inode*, %struct.inode** %15, align 8
  %122 = icmp ne %struct.inode* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.inode*, %struct.inode** %15, align 8
  %125 = call i32 @dtEmpty(%struct.inode* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @ENOTEMPTY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %18, align 4
  br label %580

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %120
  br label %146

132:                                              ; preds = %114
  %133 = load %struct.inode*, %struct.inode** %15, align 8
  %134 = icmp ne %struct.inode* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load %struct.inode*, %struct.inode** %15, align 8
  %137 = load i32, i32* @RDWRLOCK_NORMAL, align 4
  %138 = call i32 @IWRITE_LOCK(%struct.inode* %136, i32 %137)
  %139 = load %struct.inode*, %struct.inode** %15, align 8
  %140 = call i32 @dquot_initialize(%struct.inode* %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %567

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %132
  br label %146

146:                                              ; preds = %145, %131
  %147 = load %struct.inode*, %struct.inode** %9, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @txBegin(i32 %149, i32 0)
  store i32 %150, i32* %19, align 4
  %151 = load %struct.inode*, %struct.inode** %9, align 8
  %152 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %151)
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %155 = call i32 @mutex_lock_nested(i32* %153, i32 %154)
  %156 = load %struct.inode*, %struct.inode** %17, align 8
  %157 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %160 = call i32 @mutex_lock_nested(i32* %158, i32 %159)
  %161 = load %struct.inode*, %struct.inode** %7, align 8
  %162 = load %struct.inode*, %struct.inode** %9, align 8
  %163 = icmp ne %struct.inode* %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %146
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %165)
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* @COMMIT_MUTEX_SECOND_PARENT, align 4
  %169 = call i32 @mutex_lock_nested(i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %164, %146
  %171 = load %struct.inode*, %struct.inode** %15, align 8
  %172 = icmp ne %struct.inode* %171, null
  br i1 %172, label %173, label %301

173:                                              ; preds = %170
  %174 = load %struct.inode*, %struct.inode** %15, align 8
  %175 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %174)
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* @COMMIT_MUTEX_VICTIM, align 4
  %178 = call i32 @mutex_lock_nested(i32* %176, i32 %177)
  %179 = load %struct.inode*, %struct.inode** %15, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %13, align 8
  %182 = load i32, i32* %19, align 4
  %183 = load %struct.inode*, %struct.inode** %9, align 8
  %184 = load %struct.inode*, %struct.inode** %17, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* @JFS_RENAME, align 4
  %188 = call i32 @dtModify(i32 %182, %struct.inode* %183, %struct.component_name* %14, i64* %13, i64 %186, i32 %187)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %173
  br label %471

192:                                              ; preds = %173
  %193 = load %struct.inode*, %struct.inode** %15, align 8
  %194 = call i32 @drop_nlink(%struct.inode* %193)
  %195 = load %struct.inode*, %struct.inode** %15, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @S_ISDIR(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %259

200:                                              ; preds = %192
  %201 = load %struct.inode*, %struct.inode** %15, align 8
  %202 = call i32 @drop_nlink(%struct.inode* %201)
  %203 = load %struct.inode*, %struct.inode** %15, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %247

207:                                              ; preds = %200
  %208 = load %struct.inode*, %struct.inode** %15, align 8
  %209 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %208)
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = call i32 @mutex_unlock(i32* %210)
  %212 = load %struct.inode*, %struct.inode** %7, align 8
  %213 = load %struct.inode*, %struct.inode** %9, align 8
  %214 = icmp ne %struct.inode* %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load %struct.inode*, %struct.inode** %7, align 8
  %217 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %216)
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = call i32 @mutex_unlock(i32* %218)
  br label %220

220:                                              ; preds = %215, %207
  %221 = load %struct.inode*, %struct.inode** %17, align 8
  %222 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = call i32 @mutex_unlock(i32* %223)
  %225 = load %struct.inode*, %struct.inode** %9, align 8
  %226 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %225)
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = call i32 @mutex_unlock(i32* %227)
  %229 = load %struct.inode*, %struct.inode** %17, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @S_ISDIR(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %220
  %235 = load %struct.inode*, %struct.inode** %15, align 8
  %236 = icmp ne %struct.inode* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.inode*, %struct.inode** %15, align 8
  %239 = call i32 @IWRITE_UNLOCK(%struct.inode* %238)
  br label %240

240:                                              ; preds = %237, %234, %220
  %241 = load %struct.inode*, %struct.inode** %15, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @jfs_error(i32 %243, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %245 = load i32, i32* @EIO, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %6, align 4
  br label %588

247:                                              ; preds = %200
  %248 = load i32, i32* %19, align 4
  %249 = call %struct.tblock* @tid_to_tblock(i32 %248)
  store %struct.tblock* %249, %struct.tblock** %25, align 8
  %250 = load i32, i32* @COMMIT_DELETE, align 4
  %251 = load %struct.tblock*, %struct.tblock** %25, align 8
  %252 = getelementptr inbounds %struct.tblock, %struct.tblock* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load %struct.inode*, %struct.inode** %15, align 8
  %256 = load %struct.tblock*, %struct.tblock** %25, align 8
  %257 = getelementptr inbounds %struct.tblock, %struct.tblock* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  store %struct.inode* %255, %struct.inode** %258, align 8
  br label %300

259:                                              ; preds = %192
  %260 = load %struct.inode*, %struct.inode** %15, align 8
  %261 = getelementptr inbounds %struct.inode, %struct.inode* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %292

264:                                              ; preds = %259
  %265 = load i32, i32* @COMMIT_Nolink, align 4
  %266 = load %struct.inode*, %struct.inode** %15, align 8
  %267 = call i64 @test_cflag(i32 %265, %struct.inode* %266)
  %268 = icmp ne i64 %267, 0
  %269 = xor i1 %268, true
  %270 = zext i1 %269 to i32
  %271 = call i32 @assert(i32 %270)
  %272 = load i32, i32* %19, align 4
  %273 = load %struct.inode*, %struct.inode** %15, align 8
  %274 = call i32 @commitZeroLink(i32 %272, %struct.inode* %273)
  store i32 %274, i32* %26, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %264
  %277 = load i32, i32* %19, align 4
  %278 = call i32 @txAbort(i32 %277, i32 1)
  %279 = load i32, i32* %26, align 4
  store i32 %279, i32* %18, align 4
  br label %471

280:                                              ; preds = %264
  %281 = load i32, i32* %19, align 4
  %282 = call %struct.tblock* @tid_to_tblock(i32 %281)
  store %struct.tblock* %282, %struct.tblock** %25, align 8
  %283 = load i32, i32* @COMMIT_DELETE, align 4
  %284 = load %struct.tblock*, %struct.tblock** %25, align 8
  %285 = getelementptr inbounds %struct.tblock, %struct.tblock* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load %struct.inode*, %struct.inode** %15, align 8
  %289 = load %struct.tblock*, %struct.tblock** %25, align 8
  %290 = getelementptr inbounds %struct.tblock, %struct.tblock* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  store %struct.inode* %288, %struct.inode** %291, align 8
  br label %299

292:                                              ; preds = %259
  %293 = load %struct.inode*, %struct.inode** %15, align 8
  %294 = call i8* @current_time(%struct.inode* %293)
  %295 = load %struct.inode*, %struct.inode** %15, align 8
  %296 = getelementptr inbounds %struct.inode, %struct.inode* %295, i32 0, i32 6
  store i8* %294, i8** %296, align 8
  %297 = load %struct.inode*, %struct.inode** %15, align 8
  %298 = call i32 @mark_inode_dirty(%struct.inode* %297)
  br label %299

299:                                              ; preds = %292, %280
  br label %300

300:                                              ; preds = %299, %247
  br label %337

301:                                              ; preds = %170
  %302 = load %struct.inode*, %struct.inode** %9, align 8
  %303 = load i32, i32* @JFS_CREATE, align 4
  %304 = call i32 @dtSearch(%struct.inode* %302, %struct.component_name* %14, i64* %13, %struct.btstack* %12, i32 %303)
  store i32 %304, i32* %18, align 4
  %305 = load i32, i32* %18, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load i32, i32* %18, align 4
  %309 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %308)
  br label %471

310:                                              ; preds = %301
  %311 = load %struct.inode*, %struct.inode** %17, align 8
  %312 = getelementptr inbounds %struct.inode, %struct.inode* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %13, align 8
  %314 = load i32, i32* %19, align 4
  %315 = load %struct.inode*, %struct.inode** %9, align 8
  %316 = call i32 @dtInsert(i32 %314, %struct.inode* %315, %struct.component_name* %14, i64* %13, %struct.btstack* %12)
  store i32 %316, i32* %18, align 4
  %317 = load i32, i32* %18, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %310
  %320 = load i32, i32* %18, align 4
  %321 = load i32, i32* @EIO, align 4
  %322 = sub nsw i32 0, %321
  %323 = icmp eq i32 %320, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %326

326:                                              ; preds = %324, %319
  br label %471

327:                                              ; preds = %310
  %328 = load %struct.inode*, %struct.inode** %17, align 8
  %329 = getelementptr inbounds %struct.inode, %struct.inode* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = call i64 @S_ISDIR(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %327
  %334 = load %struct.inode*, %struct.inode** %9, align 8
  %335 = call i32 @inc_nlink(%struct.inode* %334)
  br label %336

336:                                              ; preds = %333, %327
  br label %337

337:                                              ; preds = %336, %300
  %338 = load %struct.inode*, %struct.inode** %17, align 8
  %339 = getelementptr inbounds %struct.inode, %struct.inode* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %13, align 8
  %341 = load i32, i32* %19, align 4
  %342 = load %struct.inode*, %struct.inode** %7, align 8
  %343 = load i32, i32* @JFS_REMOVE, align 4
  %344 = call i32 @dtDelete(i32 %341, %struct.inode* %342, %struct.component_name* %16, i64* %13, i32 %343)
  store i32 %344, i32* %18, align 4
  %345 = load i32, i32* %18, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %337
  %348 = load i32, i32* %18, align 4
  %349 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* %19, align 4
  %351 = call i32 @txAbort(i32 %350, i32 1)
  br label %471

352:                                              ; preds = %337
  %353 = load %struct.inode*, %struct.inode** %17, align 8
  %354 = getelementptr inbounds %struct.inode, %struct.inode* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = call i64 @S_ISDIR(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %408

358:                                              ; preds = %352
  %359 = load %struct.inode*, %struct.inode** %7, align 8
  %360 = call i32 @drop_nlink(%struct.inode* %359)
  %361 = load %struct.inode*, %struct.inode** %7, align 8
  %362 = load %struct.inode*, %struct.inode** %9, align 8
  %363 = icmp ne %struct.inode* %361, %362
  br i1 %363, label %364, label %407

364:                                              ; preds = %358
  %365 = load %struct.inode*, %struct.inode** %9, align 8
  %366 = getelementptr inbounds %struct.inode, %struct.inode* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @cpu_to_le32(i64 %367)
  %369 = load %struct.inode*, %struct.inode** %17, align 8
  %370 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %369)
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  store i32 %368, i32* %373, align 4
  %374 = load i32, i32* %19, align 4
  %375 = load %struct.inode*, %struct.inode** %17, align 8
  %376 = load %struct.inode*, %struct.inode** %17, align 8
  %377 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %376)
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 1
  %379 = bitcast i32* %378 to %struct.metapage*
  %380 = load i32, i32* @tlckDTREE, align 4
  %381 = load i32, i32* @tlckBTROOT, align 4
  %382 = or i32 %380, %381
  %383 = load i32, i32* @tlckRELINK, align 4
  %384 = or i32 %382, %383
  %385 = call %struct.tlock* @txLock(i32 %374, %struct.inode* %375, %struct.metapage* %379, i32 %384)
  store %struct.tlock* %385, %struct.tlock** %20, align 8
  %386 = load %struct.tlock*, %struct.tlock** %20, align 8
  %387 = getelementptr inbounds %struct.tlock, %struct.tlock* %386, i32 0, i32 0
  %388 = bitcast i32* %387 to %struct.dt_lock*
  store %struct.dt_lock* %388, %struct.dt_lock** %21, align 8
  %389 = load %struct.dt_lock*, %struct.dt_lock** %21, align 8
  %390 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp eq i64 %391, 0
  %393 = zext i1 %392 to i32
  %394 = call i32 @ASSERT(i32 %393)
  %395 = load %struct.dt_lock*, %struct.dt_lock** %21, align 8
  %396 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %395, i32 0, i32 1
  %397 = load %struct.lv*, %struct.lv** %396, align 8
  %398 = getelementptr inbounds %struct.lv, %struct.lv* %397, i64 0
  store %struct.lv* %398, %struct.lv** %22, align 8
  %399 = load %struct.lv*, %struct.lv** %22, align 8
  %400 = getelementptr inbounds %struct.lv, %struct.lv* %399, i32 0, i32 1
  store i64 0, i64* %400, align 8
  %401 = load %struct.lv*, %struct.lv** %22, align 8
  %402 = getelementptr inbounds %struct.lv, %struct.lv* %401, i32 0, i32 0
  store i32 1, i32* %402, align 8
  %403 = load %struct.dt_lock*, %struct.dt_lock** %21, align 8
  %404 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = add nsw i64 %405, 1
  store i64 %406, i64* %404, align 8
  br label %407

407:                                              ; preds = %364, %358
  br label %408

408:                                              ; preds = %407, %352
  %409 = load %struct.inode*, %struct.inode** %17, align 8
  %410 = call i8* @current_time(%struct.inode* %409)
  %411 = load %struct.inode*, %struct.inode** %17, align 8
  %412 = getelementptr inbounds %struct.inode, %struct.inode* %411, i32 0, i32 6
  store i8* %410, i8** %412, align 8
  %413 = load %struct.inode*, %struct.inode** %17, align 8
  %414 = call i32 @mark_inode_dirty(%struct.inode* %413)
  %415 = load %struct.inode*, %struct.inode** %9, align 8
  %416 = call i8* @current_time(%struct.inode* %415)
  %417 = load %struct.inode*, %struct.inode** %9, align 8
  %418 = getelementptr inbounds %struct.inode, %struct.inode* %417, i32 0, i32 5
  store i8* %416, i8** %418, align 8
  %419 = load %struct.inode*, %struct.inode** %9, align 8
  %420 = getelementptr inbounds %struct.inode, %struct.inode* %419, i32 0, i32 6
  store i8* %416, i8** %420, align 8
  %421 = load %struct.inode*, %struct.inode** %9, align 8
  %422 = call i32 @mark_inode_dirty(%struct.inode* %421)
  store i32 0, i32* %23, align 4
  %423 = load %struct.inode*, %struct.inode** %17, align 8
  %424 = load i32, i32* %23, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %23, align 4
  %426 = sext i32 %424 to i64
  %427 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %24, i64 0, i64 %426
  store %struct.inode* %423, %struct.inode** %427, align 8
  %428 = load %struct.inode*, %struct.inode** %15, align 8
  %429 = icmp ne %struct.inode* %428, null
  br i1 %429, label %430, label %436

430:                                              ; preds = %408
  %431 = load %struct.inode*, %struct.inode** %15, align 8
  %432 = load i32, i32* %23, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %23, align 4
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %24, i64 0, i64 %434
  store %struct.inode* %431, %struct.inode** %435, align 8
  br label %436

436:                                              ; preds = %430, %408
  %437 = load %struct.inode*, %struct.inode** %7, align 8
  %438 = load i32, i32* %23, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %23, align 4
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %24, i64 0, i64 %440
  store %struct.inode* %437, %struct.inode** %441, align 8
  %442 = load %struct.inode*, %struct.inode** %7, align 8
  %443 = load %struct.inode*, %struct.inode** %9, align 8
  %444 = icmp ne %struct.inode* %442, %443
  br i1 %444, label %445, label %459

445:                                              ; preds = %436
  %446 = load %struct.inode*, %struct.inode** %9, align 8
  %447 = load i32, i32* %23, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %23, align 4
  %449 = sext i32 %447 to i64
  %450 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %24, i64 0, i64 %449
  store %struct.inode* %446, %struct.inode** %450, align 8
  %451 = load %struct.inode*, %struct.inode** %7, align 8
  %452 = call i8* @current_time(%struct.inode* %451)
  %453 = load %struct.inode*, %struct.inode** %7, align 8
  %454 = getelementptr inbounds %struct.inode, %struct.inode* %453, i32 0, i32 5
  store i8* %452, i8** %454, align 8
  %455 = load %struct.inode*, %struct.inode** %7, align 8
  %456 = getelementptr inbounds %struct.inode, %struct.inode* %455, i32 0, i32 6
  store i8* %452, i8** %456, align 8
  %457 = load %struct.inode*, %struct.inode** %7, align 8
  %458 = call i32 @mark_inode_dirty(%struct.inode* %457)
  br label %459

459:                                              ; preds = %445, %436
  %460 = load i32, i32* %26, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %459
  %463 = load i32, i32* @COMMIT_SYNC, align 4
  store i32 %463, i32* %27, align 4
  br label %465

464:                                              ; preds = %459
  store i32 0, i32* %27, align 4
  br label %465

465:                                              ; preds = %464, %462
  %466 = load i32, i32* %19, align 4
  %467 = load i32, i32* %23, align 4
  %468 = getelementptr inbounds [4 x %struct.inode*], [4 x %struct.inode*]* %24, i64 0, i64 0
  %469 = load i32, i32* %27, align 4
  %470 = call i32 @txCommit(i32 %466, i32 %467, %struct.inode** %468, i32 %469)
  store i32 %470, i32* %18, align 4
  br label %471

471:                                              ; preds = %465, %347, %326, %307, %276, %191
  %472 = load i32, i32* %19, align 4
  %473 = call i32 @txEnd(i32 %472)
  %474 = load %struct.inode*, %struct.inode** %15, align 8
  %475 = icmp ne %struct.inode* %474, null
  br i1 %475, label %476, label %481

476:                                              ; preds = %471
  %477 = load %struct.inode*, %struct.inode** %15, align 8
  %478 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %477)
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 0
  %480 = call i32 @mutex_unlock(i32* %479)
  br label %481

481:                                              ; preds = %476, %471
  %482 = load %struct.inode*, %struct.inode** %7, align 8
  %483 = load %struct.inode*, %struct.inode** %9, align 8
  %484 = icmp ne %struct.inode* %482, %483
  br i1 %484, label %485, label %490

485:                                              ; preds = %481
  %486 = load %struct.inode*, %struct.inode** %7, align 8
  %487 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %486)
  %488 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %487, i32 0, i32 0
  %489 = call i32 @mutex_unlock(i32* %488)
  br label %490

490:                                              ; preds = %485, %481
  %491 = load %struct.inode*, %struct.inode** %17, align 8
  %492 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %491)
  %493 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %492, i32 0, i32 0
  %494 = call i32 @mutex_unlock(i32* %493)
  %495 = load %struct.inode*, %struct.inode** %9, align 8
  %496 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %495)
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 0
  %498 = call i32 @mutex_unlock(i32* %497)
  br label %499

499:                                              ; preds = %530, %490
  %500 = load i32, i32* %26, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %499
  %503 = load i32, i32* %18, align 4
  %504 = icmp eq i32 %503, 0
  br label %505

505:                                              ; preds = %502, %499
  %506 = phi i1 [ false, %499 ], [ %504, %502 ]
  br i1 %506, label %507, label %537

507:                                              ; preds = %505
  %508 = load %struct.inode*, %struct.inode** %15, align 8
  %509 = getelementptr inbounds %struct.inode, %struct.inode* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = call i32 @txBegin(i32 %510, i32 0)
  store i32 %511, i32* %19, align 4
  %512 = load %struct.inode*, %struct.inode** %15, align 8
  %513 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %512)
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 0
  %515 = call i32 @mutex_lock(i32* %514)
  %516 = load i32, i32* %19, align 4
  %517 = load %struct.inode*, %struct.inode** %15, align 8
  %518 = load i32, i32* %26, align 4
  %519 = call i32 @xtTruncate_pmap(i32 %516, %struct.inode* %517, i32 %518)
  store i32 %519, i32* %26, align 4
  %520 = load i32, i32* %26, align 4
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %507
  %523 = load i32, i32* %19, align 4
  %524 = call i32 @txAbort(i32 %523, i32 1)
  %525 = load i32, i32* %26, align 4
  store i32 %525, i32* %18, align 4
  br label %530

526:                                              ; preds = %507
  %527 = load i32, i32* %19, align 4
  %528 = load i32, i32* @COMMIT_SYNC, align 4
  %529 = call i32 @txCommit(i32 %527, i32 1, %struct.inode** %15, i32 %528)
  store i32 %529, i32* %18, align 4
  br label %530

530:                                              ; preds = %526, %522
  %531 = load i32, i32* %19, align 4
  %532 = call i32 @txEnd(i32 %531)
  %533 = load %struct.inode*, %struct.inode** %15, align 8
  %534 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %533)
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 0
  %536 = call i32 @mutex_unlock(i32* %535)
  br label %499

537:                                              ; preds = %505
  %538 = load %struct.inode*, %struct.inode** %15, align 8
  %539 = icmp ne %struct.inode* %538, null
  br i1 %539, label %540, label %549

540:                                              ; preds = %537
  %541 = load %struct.inode*, %struct.inode** %15, align 8
  %542 = getelementptr inbounds %struct.inode, %struct.inode* %541, i32 0, i32 1
  %543 = load i64, i64* %542, align 8
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %549

545:                                              ; preds = %540
  %546 = load i32, i32* @COMMIT_Nolink, align 4
  %547 = load %struct.inode*, %struct.inode** %15, align 8
  %548 = call i32 @set_cflag(i32 %546, %struct.inode* %547)
  br label %549

549:                                              ; preds = %545, %540, %537
  %550 = load i32, i32* @COMMIT_Stale, align 4
  %551 = load %struct.inode*, %struct.inode** %7, align 8
  %552 = call i64 @test_cflag(i32 %550, %struct.inode* %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %566

554:                                              ; preds = %549
  %555 = load %struct.inode*, %struct.inode** %7, align 8
  %556 = getelementptr inbounds %struct.inode, %struct.inode* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 8
  %558 = icmp sgt i32 %557, 1
  br i1 %558, label %559, label %562

559:                                              ; preds = %554
  %560 = load %struct.inode*, %struct.inode** %7, align 8
  %561 = call i32 @jfs_truncate_nolock(%struct.inode* %560, i32 0)
  br label %562

562:                                              ; preds = %559, %554
  %563 = load i32, i32* @COMMIT_Stale, align 4
  %564 = load %struct.inode*, %struct.inode** %7, align 8
  %565 = call i32 @clear_cflag(i32 %563, %struct.inode* %564)
  br label %566

566:                                              ; preds = %562, %549
  br label %567

567:                                              ; preds = %566, %143
  %568 = load %struct.inode*, %struct.inode** %15, align 8
  %569 = icmp ne %struct.inode* %568, null
  br i1 %569, label %570, label %579

570:                                              ; preds = %567
  %571 = load %struct.inode*, %struct.inode** %15, align 8
  %572 = getelementptr inbounds %struct.inode, %struct.inode* %571, i32 0, i32 3
  %573 = load i32, i32* %572, align 4
  %574 = call i64 @S_ISDIR(i32 %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %579, label %576

576:                                              ; preds = %570
  %577 = load %struct.inode*, %struct.inode** %15, align 8
  %578 = call i32 @IWRITE_UNLOCK(%struct.inode* %577)
  br label %579

579:                                              ; preds = %576, %570, %567
  br label %580

580:                                              ; preds = %579, %127, %109, %105, %96, %78
  %581 = call i32 @free_UCSname(%struct.component_name* %14)
  br label %582

582:                                              ; preds = %580, %65
  %583 = call i32 @free_UCSname(%struct.component_name* %16)
  br label %584

584:                                              ; preds = %582, %60, %51, %45
  %585 = load i32, i32* %18, align 4
  %586 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %585)
  %587 = load i32, i32* %18, align 4
  store i32 %587, i32* %6, align 4
  br label %588

588:                                              ; preds = %584, %240, %33
  %589 = load i32, i32* %6, align 4
  ret i32 %589
}

declare dso_local i32 @jfs_info(i8*, i32, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i64*, %struct.btstack*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @dtEmpty(%struct.inode*) #1

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @dtModify(i32, %struct.inode*, %struct.component_name*, i64*, i64, i32) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @commitZeroLink(i32, %struct.inode*) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i32 @dtInsert(i32, %struct.inode*, %struct.component_name*, i64*, %struct.btstack*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @dtDelete(i32, %struct.inode*, %struct.component_name*, i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xtTruncate_pmap(i32, %struct.inode*, i32) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

declare dso_local i32 @jfs_truncate_nolock(%struct.inode*, i32) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
