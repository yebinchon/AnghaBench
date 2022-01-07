; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_setup_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_setup_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32 }
%struct.nilfs_super_block = type { i8*, i32, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@NILFS_ERROR_FS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mounting fs with errors\00", align 1
@NILFS_DFL_MAX_MNT_COUNT = common dso_local global i32 0, align 4
@NILFS_VALID_FS = common dso_local global i32 0, align 4
@NILFS_SB_COMMIT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @nilfs_setup_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_setup_super(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.nilfs_super_block**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %11, align 8
  store %struct.the_nilfs* %12, %struct.the_nilfs** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block* %13, i32 0)
  store %struct.nilfs_super_block** %14, %struct.nilfs_super_block*** %7, align 8
  %15 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %16 = icmp ne %struct.nilfs_super_block** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %71

24:                                               ; preds = %20
  %25 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %26 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %25, i64 0
  %27 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %26, align 8
  %28 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @le16_to_cpu(i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %31, i64 0
  %33 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %32, align 8
  %34 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @le16_to_cpu(i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %38 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NILFS_ERROR_FS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load i32, i32* @KERN_WARNING, align 4
  %46 = call i32 @nilfs_msg(%struct.super_block* %44, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %24
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @NILFS_DFL_MAX_MNT_COUNT, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %54 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %53, i64 0
  %55 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %54, align 8
  %56 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %55, i32 0, i32 3
  store i8* %52, i8** %56, align 8
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %62 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %61, i64 0
  %63 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %62, align 8
  %64 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %63, i32 0, i32 2
  store i8* %60, i8** %64, align 8
  %65 = call i32 (...) @ktime_get_real_seconds()
  %66 = call i32 @cpu_to_le64(i32 %65)
  %67 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %68 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %67, i64 0
  %69 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %68, align 8
  %70 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 8
  br label %71

71:                                               ; preds = %57, %23
  %72 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %73 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %72, i64 0
  %74 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %73, align 8
  %75 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @le16_to_cpu(i8* %76)
  %78 = load i32, i32* @NILFS_VALID_FS, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = call i8* @cpu_to_le16(i32 %80)
  %82 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %83 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %82, i64 0
  %84 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %83, align 8
  %85 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %84, i32 0, i32 0
  store i8* %81, i8** %85, align 8
  %86 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %87 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %86, i64 1
  %88 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %87, align 8
  %89 = icmp ne %struct.nilfs_super_block* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %71
  %91 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %92 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %91, i64 1
  %93 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %92, align 8
  %94 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %95 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %94, i64 0
  %96 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %95, align 8
  %97 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %98 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(%struct.nilfs_super_block* %93, %struct.nilfs_super_block* %96, i32 %99)
  br label %101

101:                                              ; preds = %90, %71
  %102 = load %struct.super_block*, %struct.super_block** %4, align 8
  %103 = load i32, i32* @NILFS_SB_COMMIT_ALL, align 4
  %104 = call i32 @nilfs_commit_super(%struct.super_block* %102, i32 %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @memcpy(%struct.nilfs_super_block*, %struct.nilfs_super_block*, i32) #1

declare dso_local i32 @nilfs_commit_super(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
