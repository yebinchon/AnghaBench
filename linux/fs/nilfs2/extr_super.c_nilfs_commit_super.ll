; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_commit_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_commit_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32, i32, %struct.nilfs_super_block** }
%struct.nilfs_super_block = type { i8*, i32 }

@NILFS_SB_COMMIT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_commit_super(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_super_block**, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  store %struct.the_nilfs* %10, %struct.the_nilfs** %5, align 8
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 4
  %13 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %12, align 8
  store %struct.nilfs_super_block** %13, %struct.nilfs_super_block*** %6, align 8
  %14 = call i32 (...) @ktime_get_real_seconds()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @cpu_to_le64(i32 %18)
  %20 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %21 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %20, i64 0
  %22 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %21, align 8
  %23 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 8
  %24 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %25 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %24, i64 0
  %26 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %25, align 8
  %27 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %29 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %31, i64 0
  %33 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %32, align 8
  %34 = bitcast %struct.nilfs_super_block* %33 to i8*
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @crc32_le(i32 %30, i8* %34, i32 %37)
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %41 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %40, i64 0
  %42 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %41, align 8
  %43 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @NILFS_SB_COMMIT_ALL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %2
  %48 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %49 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %48, i64 1
  %50 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %49, align 8
  %51 = icmp ne %struct.nilfs_super_block* %50, null
  br i1 %51, label %52, label %82

52:                                               ; preds = %47
  %53 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %54 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %53, i64 0
  %55 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %54, align 8
  %56 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %59 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %58, i64 1
  %60 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %59, align 8
  %61 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 8
  %62 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %63 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %62, i64 1
  %64 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %63, align 8
  %65 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %64, i32 0, i32 0
  store i8* null, i8** %65, align 8
  %66 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %67 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %70 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %69, i64 1
  %71 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %70, align 8
  %72 = bitcast %struct.nilfs_super_block* %71 to i8*
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %74 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @crc32_le(i32 %68, i8* %72, i32 %75)
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %6, align 8
  %79 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %78, i64 1
  %80 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %79, align 8
  %81 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  br label %82

82:                                               ; preds = %52, %47, %2
  %83 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %84 = call i32 @clear_nilfs_sb_dirty(%struct.the_nilfs* %83)
  %85 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %86 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = call i32 (...) @smp_wmb()
  %88 = load %struct.super_block*, %struct.super_block** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @nilfs_sync_super(%struct.super_block* %88, i32 %89)
  ret i32 %90
}

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @crc32_le(i32, i8*, i32) #1

declare dso_local i32 @clear_nilfs_sb_dirty(%struct.the_nilfs*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @nilfs_sync_super(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
