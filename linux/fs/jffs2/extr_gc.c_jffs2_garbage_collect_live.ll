; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_gc.c_jffs2_garbage_collect_live.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_gc.c_jffs2_garbage_collect_live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, %struct.jffs2_eraseblock* }
%struct.jffs2_eraseblock = type { i32 }
%struct.jffs2_raw_node_ref = type { i32 }
%struct.jffs2_inode_info = type { i32, %struct.TYPE_2__*, %struct.jffs2_full_dirent*, i32, %struct.jffs2_full_dnode* }
%struct.TYPE_2__ = type { i32, %struct.jffs2_raw_node_ref* }
%struct.jffs2_full_dirent = type { i64, %struct.jffs2_raw_node_ref*, %struct.jffs2_full_dirent* }
%struct.jffs2_full_dnode = type { i64, %struct.jffs2_raw_node_ref* }
%struct.jffs2_node_frag = type { i64, i64, %struct.jffs2_full_dnode* }

@.str = private unnamed_addr constant [40 x i8] c"GC block is no longer gcblock. Restart\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"node to be GC'd was obsoleted in the meantime.\0A\00", align 1
@REF_PRISTINE = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Raw node at 0x%08x wasn't in node lists for ino #%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"But it's obsolete so we don't mind too much\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_raw_node_ref*, %struct.jffs2_inode_info*)* @jffs2_garbage_collect_live to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_garbage_collect_live(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, %struct.jffs2_raw_node_ref* %2, %struct.jffs2_inode_info* %3) #0 {
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_eraseblock*, align 8
  %7 = alloca %struct.jffs2_raw_node_ref*, align 8
  %8 = alloca %struct.jffs2_inode_info*, align 8
  %9 = alloca %struct.jffs2_node_frag*, align 8
  %10 = alloca %struct.jffs2_full_dnode*, align 8
  %11 = alloca %struct.jffs2_full_dirent*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %6, align 8
  store %struct.jffs2_raw_node_ref* %2, %struct.jffs2_raw_node_ref** %7, align 8
  store %struct.jffs2_inode_info* %3, %struct.jffs2_inode_info** %8, align 8
  store %struct.jffs2_full_dnode* null, %struct.jffs2_full_dnode** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %17 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %20 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %22, i32 0, i32 1
  %24 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %23, align 8
  %25 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %26 = icmp ne %struct.jffs2_eraseblock* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %29 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %243

32:                                               ; preds = %4
  %33 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %34 = call i64 @ref_obsolete(%struct.jffs2_raw_node_ref* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %38 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %243

41:                                               ; preds = %32
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %46 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %45, i32 0, i32 4
  %47 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %46, align 8
  %48 = icmp ne %struct.jffs2_full_dnode* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %41
  %50 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %51 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %50, i32 0, i32 4
  %52 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %51, align 8
  %53 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %52, i32 0, i32 1
  %54 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %53, align 8
  %55 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %56 = icmp eq %struct.jffs2_raw_node_ref* %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %59 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %58, i32 0, i32 4
  %60 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %59, align 8
  store %struct.jffs2_full_dnode* %60, %struct.jffs2_full_dnode** %10, align 8
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %62 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %63 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %64 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %10, align 8
  %65 = call i32 @jffs2_garbage_collect_metadata(%struct.jffs2_sb_info* %61, %struct.jffs2_eraseblock* %62, %struct.jffs2_inode_info* %63, %struct.jffs2_full_dnode* %64)
  store i32 %65, i32* %15, align 4
  br label %243

66:                                               ; preds = %49, %41
  %67 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %68 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %67, i32 0, i32 3
  %69 = call %struct.jffs2_node_frag* @frag_first(i32* %68)
  store %struct.jffs2_node_frag* %69, %struct.jffs2_node_frag** %9, align 8
  br label %70

70:                                               ; preds = %115, %66
  %71 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %72 = icmp ne %struct.jffs2_node_frag* %71, null
  br i1 %72, label %73, label %118

73:                                               ; preds = %70
  %74 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %75 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %74, i32 0, i32 2
  %76 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %75, align 8
  %77 = icmp ne %struct.jffs2_full_dnode* %76, null
  br i1 %77, label %78, label %114

78:                                               ; preds = %73
  %79 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %80 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %79, i32 0, i32 2
  %81 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %80, align 8
  %82 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %81, i32 0, i32 1
  %83 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %82, align 8
  %84 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %85 = icmp eq %struct.jffs2_raw_node_ref* %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %78
  %87 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %88 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %87, i32 0, i32 2
  %89 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %88, align 8
  store %struct.jffs2_full_dnode* %89, %struct.jffs2_full_dnode** %10, align 8
  %90 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %91 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %94 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %14, align 8
  %99 = icmp ne i64 %97, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %86
  %101 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %102 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %100, %86
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %107 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %106, i32 0, i32 2
  %108 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %107, align 8
  %109 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %118

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %78, %73
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %117 = call %struct.jffs2_node_frag* @frag_next(%struct.jffs2_node_frag* %116)
  store %struct.jffs2_node_frag* %117, %struct.jffs2_node_frag** %9, align 8
  br label %70

118:                                              ; preds = %112, %70
  %119 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %10, align 8
  %120 = icmp ne %struct.jffs2_full_dnode* %119, null
  br i1 %120, label %121, label %178

121:                                              ; preds = %118
  %122 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %123 = call i64 @ref_flags(%struct.jffs2_raw_node_ref* %122)
  %124 = load i64, i64* @REF_PRISTINE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %152

126:                                              ; preds = %121
  %127 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %128 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %129 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %132 = call i32 @jffs2_garbage_collect_pristine(%struct.jffs2_sb_info* %127, %struct.TYPE_2__* %130, %struct.jffs2_raw_node_ref* %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %126
  %136 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %137 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %139, align 8
  %141 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %142 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %141, i32 0, i32 2
  %143 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %142, align 8
  %144 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %143, i32 0, i32 1
  store %struct.jffs2_raw_node_ref* %140, %struct.jffs2_raw_node_ref** %144, align 8
  br label %145

145:                                              ; preds = %135, %126
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @EBADFD, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %243

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %121
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* @PAGE_SHIFT, align 8
  %155 = ashr i64 %153, %154
  %156 = load i64, i64* %13, align 8
  %157 = sub nsw i64 %156, 1
  %158 = load i64, i64* @PAGE_SHIFT, align 8
  %159 = ashr i64 %157, %158
  %160 = icmp slt i64 %155, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %152
  %162 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %163 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %164 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %165 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %10, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* %13, align 8
  %168 = call i32 @jffs2_garbage_collect_hole(%struct.jffs2_sb_info* %162, %struct.jffs2_eraseblock* %163, %struct.jffs2_inode_info* %164, %struct.jffs2_full_dnode* %165, i64 %166, i64 %167)
  store i32 %168, i32* %15, align 4
  br label %177

169:                                              ; preds = %152
  %170 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %171 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %172 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %173 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %10, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = call i32 @jffs2_garbage_collect_dnode(%struct.jffs2_sb_info* %170, %struct.jffs2_eraseblock* %171, %struct.jffs2_inode_info* %172, %struct.jffs2_full_dnode* %173, i64 %174, i64 %175)
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %169, %161
  br label %243

178:                                              ; preds = %118
  %179 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %180 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %179, i32 0, i32 2
  %181 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %180, align 8
  store %struct.jffs2_full_dirent* %181, %struct.jffs2_full_dirent** %11, align 8
  br label %182

182:                                              ; preds = %193, %178
  %183 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %184 = icmp ne %struct.jffs2_full_dirent* %183, null
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %187 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %186, i32 0, i32 1
  %188 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %187, align 8
  %189 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %190 = icmp eq %struct.jffs2_raw_node_ref* %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %197

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %195 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %194, i32 0, i32 2
  %196 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %195, align 8
  store %struct.jffs2_full_dirent* %196, %struct.jffs2_full_dirent** %11, align 8
  br label %182

197:                                              ; preds = %191, %182
  %198 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %199 = icmp ne %struct.jffs2_full_dirent* %198, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %202 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %207 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %208 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %209 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %210 = call i32 @jffs2_garbage_collect_dirent(%struct.jffs2_sb_info* %206, %struct.jffs2_eraseblock* %207, %struct.jffs2_inode_info* %208, %struct.jffs2_full_dirent* %209)
  store i32 %210, i32* %15, align 4
  br label %242

211:                                              ; preds = %200, %197
  %212 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %213 = icmp ne %struct.jffs2_full_dirent* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %216 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %217 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %218 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %11, align 8
  %219 = call i32 @jffs2_garbage_collect_deletion_dirent(%struct.jffs2_sb_info* %215, %struct.jffs2_eraseblock* %216, %struct.jffs2_inode_info* %217, %struct.jffs2_full_dirent* %218)
  store i32 %219, i32* %15, align 4
  br label %241

220:                                              ; preds = %211
  %221 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %222 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %221)
  %223 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %224 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %223, i32 0, i32 1
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %222, i32 %227)
  %229 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %230 = call i64 @ref_obsolete(%struct.jffs2_raw_node_ref* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %220
  %233 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %240

234:                                              ; preds = %220
  %235 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %236 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %7, align 8
  %237 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %236)
  %238 = call i32 @jffs2_dbg_dump_node(%struct.jffs2_sb_info* %235, i32 %237)
  %239 = call i32 (...) @BUG()
  br label %240

240:                                              ; preds = %234, %232
  br label %241

241:                                              ; preds = %240, %214
  br label %242

242:                                              ; preds = %241, %205
  br label %243

243:                                              ; preds = %242, %177, %150, %57, %36, %27
  %244 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %245 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %244, i32 0, i32 0
  %246 = call i32 @mutex_unlock(i32* %245)
  %247 = load i32, i32* %15, align 4
  ret i32 %247
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jffs2_dbg(i32, i8*) #1

declare dso_local i64 @ref_obsolete(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @jffs2_garbage_collect_metadata(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_inode_info*, %struct.jffs2_full_dnode*) #1

declare dso_local %struct.jffs2_node_frag* @frag_first(i32*) #1

declare dso_local %struct.jffs2_node_frag* @frag_next(%struct.jffs2_node_frag*) #1

declare dso_local i64 @ref_flags(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @jffs2_garbage_collect_pristine(%struct.jffs2_sb_info*, %struct.TYPE_2__*, %struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @jffs2_garbage_collect_hole(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_inode_info*, %struct.jffs2_full_dnode*, i64, i64) #1

declare dso_local i32 @jffs2_garbage_collect_dnode(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_inode_info*, %struct.jffs2_full_dnode*, i64, i64) #1

declare dso_local i32 @jffs2_garbage_collect_dirent(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_inode_info*, %struct.jffs2_full_dirent*) #1

declare dso_local i32 @jffs2_garbage_collect_deletion_dirent(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_inode_info*, %struct.jffs2_full_dirent*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @ref_offset(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @jffs2_dbg_dump_node(%struct.jffs2_sb_info*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
