; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.component_name = type { i32 }
%struct.tblock = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"jfs_unlink: dip:0x%p name:%pd\00", align 1
@RDWRLOCK_NORMAL = common dso_local global i32 0, align 4
@COMMIT_MUTEX_PARENT = common dso_local global i32 0, align 4
@COMMIT_MUTEX_CHILD = common dso_local global i32 0, align 4
@JFS_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"jfs_unlink: dtDelete returned %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@COMMIT_SYNC = common dso_local global i32 0, align 4
@COMMIT_Stale = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"jfs_unlink: rc:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.component_name, align 4
  %10 = alloca [2 x %struct.inode*], align 16
  %11 = alloca %struct.tblock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call %struct.inode* @d_inode(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.inode* %16, %struct.dentry* %17)
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @dquot_initialize(%struct.inode* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %240

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @dquot_initialize(%struct.inode* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %240

30:                                               ; preds = %24
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = call i32 @get_UCSname(%struct.component_name* %9, %struct.dentry* %31)
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %240

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = load i32, i32* @RDWRLOCK_NORMAL, align 4
  %38 = call i32 @IWRITE_LOCK(%struct.inode* %36, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @txBegin(i32 %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* @COMMIT_MUTEX_PARENT, align 4
  %47 = call i32 @mutex_lock_nested(i32* %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* @COMMIT_MUTEX_CHILD, align 4
  %52 = call i32 @mutex_lock_nested(i32* %50, i32 %51)
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  store %struct.inode* %53, %struct.inode** %54, align 16
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 1
  store %struct.inode* %55, %struct.inode** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = load i32, i32* @JFS_REMOVE, align 4
  %63 = call i32 @dtDelete(i32 %60, %struct.inode* %61, %struct.component_name* %9, i32* %8, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %35
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @jfs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @txAbort(i32 %73, i32 1)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @txEnd(i32 %76)
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = call i32 @IWRITE_UNLOCK(%struct.inode* %86)
  br label %238

88:                                               ; preds = %35
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ASSERT(i64 %91)
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = call i32 @current_time(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %3, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 4
  store i32 %94, i32* %98, align 4
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 4
  store i32 %94, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = call i32 @mark_inode_dirty(%struct.inode* %101)
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = call i32 @inode_dec_link_count(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %149

109:                                              ; preds = %88
  %110 = load i32, i32* @COMMIT_Nolink, align 4
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = call i64 @test_cflag(i32 %110, %struct.inode* %111)
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = call i32 @commitZeroLink(i32 %117, %struct.inode* %118)
  store i32 %119, i32* %12, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @txAbort(i32 %122, i32 1)
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @txEnd(i32 %124)
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.inode*, %struct.inode** %3, align 8
  %131 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.inode*, %struct.inode** %7, align 8
  %135 = call i32 @IWRITE_UNLOCK(%struct.inode* %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %5, align 4
  br label %238

137:                                              ; preds = %109
  %138 = load i32, i32* %6, align 4
  %139 = call %struct.tblock* @tid_to_tblock(i32 %138)
  store %struct.tblock* %139, %struct.tblock** %11, align 8
  %140 = load i32, i32* @COMMIT_DELETE, align 4
  %141 = load %struct.tblock*, %struct.tblock** %11, align 8
  %142 = getelementptr inbounds %struct.tblock, %struct.tblock* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = load %struct.tblock*, %struct.tblock** %11, align 8
  %147 = getelementptr inbounds %struct.tblock, %struct.tblock* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store %struct.inode* %145, %struct.inode** %148, align 8
  br label %149

149:                                              ; preds = %137, %88
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* @COMMIT_SYNC, align 4
  store i32 %153, i32* %13, align 4
  br label %155

154:                                              ; preds = %149
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %154, %152
  %156 = load i32, i32* %6, align 4
  %157 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @txCommit(i32 %156, i32 2, %struct.inode** %157, i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @txEnd(i32 %160)
  %162 = load %struct.inode*, %struct.inode** %7, align 8
  %163 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %162)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load %struct.inode*, %struct.inode** %3, align 8
  %167 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %166)
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  br label %170

170:                                              ; preds = %202, %155
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = icmp eq i32 %174, 0
  br label %176

176:                                              ; preds = %173, %170
  %177 = phi i1 [ false, %170 ], [ %175, %173 ]
  br i1 %177, label %178, label %209

178:                                              ; preds = %176
  %179 = load %struct.inode*, %struct.inode** %3, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @txBegin(i32 %181, i32 0)
  store i32 %182, i32* %6, align 4
  %183 = load %struct.inode*, %struct.inode** %7, align 8
  %184 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %183)
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = call i32 @mutex_lock(i32* %185)
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.inode*, %struct.inode** %7, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @xtTruncate_pmap(i32 %187, %struct.inode* %188, i32 %189)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %178
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @txAbort(i32 %194, i32 1)
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %5, align 4
  br label %202

197:                                              ; preds = %178
  %198 = load i32, i32* %6, align 4
  %199 = getelementptr inbounds [2 x %struct.inode*], [2 x %struct.inode*]* %10, i64 0, i64 0
  %200 = load i32, i32* @COMMIT_SYNC, align 4
  %201 = call i32 @txCommit(i32 %198, i32 2, %struct.inode** %199, i32 %200)
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %197, %193
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @txEnd(i32 %203)
  %205 = load %struct.inode*, %struct.inode** %7, align 8
  %206 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %205)
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = call i32 @mutex_unlock(i32* %207)
  br label %170

209:                                              ; preds = %176
  %210 = load %struct.inode*, %struct.inode** %7, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* @COMMIT_Nolink, align 4
  %216 = load %struct.inode*, %struct.inode** %7, align 8
  %217 = call i32 @set_cflag(i32 %215, %struct.inode* %216)
  br label %218

218:                                              ; preds = %214, %209
  %219 = load %struct.inode*, %struct.inode** %7, align 8
  %220 = call i32 @IWRITE_UNLOCK(%struct.inode* %219)
  %221 = load i32, i32* @COMMIT_Stale, align 4
  %222 = load %struct.inode*, %struct.inode** %3, align 8
  %223 = call i64 @test_cflag(i32 %221, %struct.inode* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %218
  %226 = load %struct.inode*, %struct.inode** %3, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp sgt i32 %228, 1
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load %struct.inode*, %struct.inode** %3, align 8
  %232 = call i32 @jfs_truncate_nolock(%struct.inode* %231, i32 0)
  br label %233

233:                                              ; preds = %230, %225
  %234 = load i32, i32* @COMMIT_Stale, align 4
  %235 = load %struct.inode*, %struct.inode** %3, align 8
  %236 = call i32 @clear_cflag(i32 %234, %struct.inode* %235)
  br label %237

237:                                              ; preds = %233, %218
  br label %238

238:                                              ; preds = %237, %121, %75
  %239 = call i32 @free_UCSname(%struct.component_name* %9)
  br label %240

240:                                              ; preds = %238, %34, %29, %23
  %241 = load i32, i32* %5, align 4
  %242 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.dentry*) #1

declare dso_local i32 @IWRITE_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @txBegin(i32, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @dtDelete(i32, %struct.inode*, %struct.component_name*, i32*, i32) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local i32 @txAbort(i32, i32) #1

declare dso_local i32 @txEnd(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IWRITE_UNLOCK(%struct.inode*) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @commitZeroLink(i32, %struct.inode*) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local i32 @txCommit(i32, i32, %struct.inode**, i32) #1

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
