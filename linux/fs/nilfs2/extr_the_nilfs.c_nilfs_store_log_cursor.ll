; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_store_log_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_the_nilfs.c_nilfs_store_log_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.nilfs_super_block = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"pointed segment number is out of range: segnum=%llu, nsegments=%lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.nilfs_super_block*)* @nilfs_store_log_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_store_log_cursor(%struct.the_nilfs* %0, %struct.nilfs_super_block* %1) #0 {
  %3 = alloca %struct.the_nilfs*, align 8
  %4 = alloca %struct.nilfs_super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %3, align 8
  store %struct.nilfs_super_block* %1, %struct.nilfs_super_block** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %4, align 8
  %7 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i8* @le64_to_cpu(i32 %8)
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %11 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %4, align 8
  %13 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le64_to_cpu(i32 %14)
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %4, align 8
  %19 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le64_to_cpu(i32 %20)
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %23 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %25 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %24, i32 0, i32 6
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %33 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @nilfs_get_segnum_of_block(%struct.the_nilfs* %34, i8* %37)
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %40 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %42 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr i8, i8* %43, i64 1
  %45 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %46 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %48 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %51 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %2
  %55 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %56 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %60 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %63 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @nilfs_msg(i32 %57, i32 %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %54, %2
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i64 @nilfs_get_segnum_of_block(%struct.the_nilfs*, i8*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
