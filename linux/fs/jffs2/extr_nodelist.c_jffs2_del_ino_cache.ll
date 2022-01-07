; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_del_ino_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_del_ino_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i32, %struct.jffs2_inode_cache** }
%struct.jffs2_inode_cache = type { i64, i64, %struct.jffs2_inode_cache*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"del %p (ino #%u)\0A\00", align 1
@INO_STATE_READING = common dso_local global i64 0, align 8
@INO_STATE_CLEARING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_del_ino_cache(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_cache* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_inode_cache*, align 8
  %5 = alloca %struct.jffs2_inode_cache**, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_inode_cache* %1, %struct.jffs2_inode_cache** %4, align 8
  %6 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %7 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %8 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @dbg_inocache(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.jffs2_inode_cache* %6, i64 %9)
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %14, i32 0, i32 2
  %16 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %15, align 8
  %17 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %18 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = urem i64 %19, %22
  %24 = getelementptr inbounds %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %16, i64 %23
  store %struct.jffs2_inode_cache** %24, %struct.jffs2_inode_cache*** %5, align 8
  br label %25

25:                                               ; preds = %40, %2
  %26 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %27 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %26, align 8
  %28 = icmp ne %struct.jffs2_inode_cache* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %31 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %30, align 8
  %32 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %35 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br label %38

38:                                               ; preds = %29, %25
  %39 = phi i1 [ false, %25 ], [ %37, %29 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %42 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %41, align 8
  %43 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %42, i32 0, i32 2
  store %struct.jffs2_inode_cache** %43, %struct.jffs2_inode_cache*** %5, align 8
  br label %25

44:                                               ; preds = %38
  %45 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  %46 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %45, align 8
  %47 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %48 = icmp eq %struct.jffs2_inode_cache* %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %51 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %50, i32 0, i32 2
  %52 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %51, align 8
  %53 = load %struct.jffs2_inode_cache**, %struct.jffs2_inode_cache*** %5, align 8
  store %struct.jffs2_inode_cache* %52, %struct.jffs2_inode_cache** %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %56 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INO_STATE_READING, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %62 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INO_STATE_CLEARING, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %4, align 8
  %68 = call i32 @jffs2_free_inode_cache(%struct.jffs2_inode_cache* %67)
  br label %69

69:                                               ; preds = %66, %60, %54
  %70 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %71 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  ret void
}

declare dso_local i32 @dbg_inocache(i8*, %struct.jffs2_inode_cache*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jffs2_free_inode_cache(%struct.jffs2_inode_cache*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
