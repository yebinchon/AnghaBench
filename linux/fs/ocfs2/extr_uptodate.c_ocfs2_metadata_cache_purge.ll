; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_purge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_uptodate.c_ocfs2_metadata_cache_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.ocfs2_caching_info = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.rb_root }

@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4
@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Owner %llu, count = %u, purged = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_metadata_cache_purge(%struct.ocfs2_caching_info* %0) #0 {
  %2 = alloca %struct.ocfs2_caching_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rb_root, align 4
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %2, align 8
  %7 = bitcast %struct.rb_root* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  %8 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %9 = icmp ne %struct.ocfs2_caching_info* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %21 = call i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info* %20)
  %22 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %23 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %31 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %34 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @trace_ocfs2_metadata_cache_purge(i64 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %16
  %41 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast %struct.rb_root* %6 to i8*
  %45 = bitcast %struct.rb_root* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %46

46:                                               ; preds = %40, %16
  %47 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %48 = call i32 @ocfs2_metadata_cache_reset(%struct.ocfs2_caching_info* %47, i32 0)
  %49 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %50 = call i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info* %49)
  %51 = call i32 @ocfs2_purge_copied_metadata_tree(%struct.rb_root* %6)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* @ML_ERROR, align 4
  %60 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %2, align 8
  %61 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @mlog(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %54, %46
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info*) #2

declare dso_local i32 @trace_ocfs2_metadata_cache_purge(i64, i32, i32) #2

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #2

declare dso_local i32 @ocfs2_metadata_cache_reset(%struct.ocfs2_caching_info*, i32) #2

declare dso_local i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info*) #2

declare dso_local i32 @ocfs2_purge_copied_metadata_tree(%struct.rb_root*) #2

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
