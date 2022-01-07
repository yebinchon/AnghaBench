; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_clear_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ocfs2_inode_info = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocfs2_super = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Inode=%lu\0A\00", align 1
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Clear inode of %llu, inode has io markers\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Clear inode of %llu, inode has unwritten extents\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Clear inode of %llu, inode has %u cache items\0A\00", align 1
@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Clear inode of %llu, inode has a bad flag\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Clear inode of %llu, inode is locked\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Clear inode of %llu, io_mutex is locked\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Clear inode of %llu, alloc_sem is locked\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Clear inode of %llu has open count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ocfs2_clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_inode_info*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %6)
  store %struct.ocfs2_inode_info* %7, %struct.ocfs2_inode_info** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ocfs2_super* @OCFS2_SB(i32 %10)
  store %struct.ocfs2_super* %11, %struct.ocfs2_super** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call i32 @clear_inode(%struct.inode* %12)
  %14 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %15 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_ocfs2_clear_inode(i64 %16, i32 %19)
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %22 = icmp eq %struct.ocfs2_super* %21, null
  %23 = zext i1 %22 to i32
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = call i32 @dquot_drop(%struct.inode* %29)
  %31 = load %struct.inode*, %struct.inode** %2, align 8
  %32 = call i32 @ocfs2_open_unlock(%struct.inode* %31)
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %34 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %35 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %34, i32 0, i32 10
  %36 = call i32 @ocfs2_mark_lockres_freeing(%struct.ocfs2_super* %33, i32* %35)
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %38 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %39 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %38, i32 0, i32 9
  %40 = call i32 @ocfs2_mark_lockres_freeing(%struct.ocfs2_super* %37, i32* %39)
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %42 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %43 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %42, i32 0, i32 8
  %44 = call i32 @ocfs2_mark_lockres_freeing(%struct.ocfs2_super* %41, i32* %43)
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %45, i32 0, i32 1
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 13
  %49 = call i32 @ocfs2_resv_discard(i32* %46, i32* %48)
  %50 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %51 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %50, i32 0, i32 13
  %52 = call i32 @ocfs2_resv_init_once(i32* %51)
  %53 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %54 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %1
  %60 = load %struct.inode*, %struct.inode** %2, align 8
  %61 = call i32 @ocfs2_checkpoint_inode(%struct.inode* %60)
  br label %62

62:                                               ; preds = %59, %1
  %63 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %64 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %63, i32 0, i32 12
  %65 = call i32 @list_empty(i32* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %70 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %74 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %73, i32 0, i32 11
  %75 = call i32 @list_empty(i32* %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %80 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %78, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load %struct.inode*, %struct.inode** %2, align 8
  %84 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %83, i32 0)
  %85 = load %struct.inode*, %struct.inode** %2, align 8
  %86 = call i32 @ocfs2_drop_inode_locks(%struct.inode* %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %62
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %92

92:                                               ; preds = %89, %62
  %93 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %94 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %93, i32 0, i32 10
  %95 = call i32 @ocfs2_lock_res_free(i32* %94)
  %96 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %97 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %96, i32 0, i32 9
  %98 = call i32 @ocfs2_lock_res_free(i32* %97)
  %99 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %100 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %99, i32 0, i32 8
  %101 = call i32 @ocfs2_lock_res_free(i32* %100)
  %102 = load %struct.inode*, %struct.inode** %2, align 8
  %103 = call %struct.TYPE_5__* @INODE_CACHE(%struct.inode* %102)
  %104 = call i32 @ocfs2_metadata_cache_exit(%struct.TYPE_5__* %103)
  %105 = load %struct.inode*, %struct.inode** %2, align 8
  %106 = call %struct.TYPE_5__* @INODE_CACHE(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %110 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.inode*, %struct.inode** %2, align 8
  %113 = call %struct.TYPE_5__* @INODE_CACHE(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %111, i32 %115)
  %117 = load %struct.inode*, %struct.inode** %2, align 8
  %118 = call %struct.TYPE_5__* @INODE_CACHE(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %127 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %125, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %128)
  %130 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %131 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %130, i32 0, i32 7
  %132 = call i32 @spin_is_locked(i32* %131)
  %133 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %134 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %135)
  %137 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %138 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %137, i32 0, i32 6
  %139 = call i32 @mutex_trylock(i32* %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %144 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %142, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %145)
  %147 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %148 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %147, i32 0, i32 6
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %151 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %150, i32 0, i32 5
  %152 = call i32 @down_write_trylock(i32* %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %157 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %155, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %158)
  %160 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %161 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %160, i32 0, i32 5
  %162 = call i32 @up_write(i32* %161)
  %163 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %164 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %167 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %170 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i32, i8*, i64, ...) @mlog_bug_on_msg(i32 %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %168, i32 %171)
  %173 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %174 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %173, i32 0, i32 1
  store i32 0, i32* %174, align 8
  %175 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %176 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %175, i32 0, i32 3
  store i64 0, i64* %176, align 8
  %177 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %178 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %180 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %4, align 8
  %185 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %184, i32 0, i32 2
  %186 = call i32 @jbd2_journal_release_jbd_inode(i32 %183, i32* %185)
  ret void
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_clear_inode(i64, i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, ...) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @ocfs2_open_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_lockres_freeing(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_resv_discard(i32*, i32*) #1

declare dso_local i32 @ocfs2_resv_init_once(i32*) #1

declare dso_local i32 @ocfs2_checkpoint_inode(%struct.inode*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_drop_inode_locks(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @ocfs2_metadata_cache_exit(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @jbd2_journal_release_jbd_inode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
