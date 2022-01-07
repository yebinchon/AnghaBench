; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_cleanup_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_cleanup_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.nilfs_super_block = type { i64, i32 }

@NILFS_SB_COMMIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NILFS_SB_COMMIT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cleanup_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_super_block**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  store %struct.the_nilfs* %9, %struct.the_nilfs** %3, align 8
  %10 = load i32, i32* @NILFS_SB_COMMIT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block* %13, i32 0)
  store %struct.nilfs_super_block** %14, %struct.nilfs_super_block*** %4, align 8
  %15 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %16 = icmp ne %struct.nilfs_super_block** %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %1
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %23 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %22, i64 0
  %24 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %23, align 8
  %25 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %27 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %26, i64 0
  %28 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %27, align 8
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %30 = call i32 @nilfs_set_log_cursor(%struct.nilfs_super_block* %28, %struct.the_nilfs* %29)
  %31 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %31, i64 1
  %33 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %32, align 8
  %34 = icmp ne %struct.nilfs_super_block* %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %17
  %36 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %37 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %36, i64 0
  %38 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %37, align 8
  %39 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %42 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %41, i64 1
  %43 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %42, align 8
  %44 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %49 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %48, i64 0
  %50 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %49, align 8
  %51 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %54 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %53, i64 1
  %55 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %54, align 8
  %56 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 8
  %57 = load i32, i32* @NILFS_SB_COMMIT_ALL, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %47, %35, %17
  %59 = load %struct.super_block*, %struct.super_block** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @nilfs_commit_super(%struct.super_block* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %1
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @nilfs_set_log_cursor(%struct.nilfs_super_block*, %struct.the_nilfs*) #1

declare dso_local i32 @nilfs_commit_super(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
