; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_prepare_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_prepare_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_super_block = type { i64 }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, %struct.nilfs_super_block** }

@NILFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"superblock broke\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nilfs_super_block** @nilfs_prepare_super(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.nilfs_super_block**, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.nilfs_super_block**, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  store %struct.the_nilfs* %10, %struct.the_nilfs** %6, align 8
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 1
  %13 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %12, align 8
  store %struct.nilfs_super_block** %13, %struct.nilfs_super_block*** %7, align 8
  %14 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %15 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %14, i64 0
  %16 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %15, align 8
  %17 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @NILFS_SUPER_MAGIC, align 4
  %20 = call i64 @cpu_to_le16(i32 %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %2
  %23 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %24 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %23, i64 1
  %25 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %24, align 8
  %26 = icmp ne %struct.nilfs_super_block* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %29 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %28, i64 1
  %30 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %29, align 8
  %31 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @NILFS_SUPER_MAGIC, align 4
  %34 = call i64 @cpu_to_le16(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %38 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %37, i64 0
  %39 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %38, align 8
  %40 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %41 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %40, i64 1
  %42 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %41, align 8
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(%struct.nilfs_super_block* %39, %struct.nilfs_super_block* %42, i32 %45)
  br label %51

47:                                               ; preds = %27, %22
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = load i32, i32* @KERN_CRIT, align 4
  %50 = call i32 @nilfs_msg(%struct.super_block* %48, i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.nilfs_super_block** null, %struct.nilfs_super_block*** %3, align 8
  br label %91

51:                                               ; preds = %36
  br label %78

52:                                               ; preds = %2
  %53 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %54 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %53, i64 1
  %55 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %54, align 8
  %56 = icmp ne %struct.nilfs_super_block* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %59 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %58, i64 1
  %60 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %59, align 8
  %61 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @NILFS_SUPER_MAGIC, align 4
  %64 = call i64 @cpu_to_le16(i32 %63)
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %68 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %67, i64 1
  %69 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %68, align 8
  %70 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %71 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %70, i64 0
  %72 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %71, align 8
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %74 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memcpy(%struct.nilfs_super_block* %69, %struct.nilfs_super_block* %72, i32 %75)
  br label %77

77:                                               ; preds = %66, %57, %52
  br label %78

78:                                               ; preds = %77, %51
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %83 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %82, i64 1
  %84 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %83, align 8
  %85 = icmp ne %struct.nilfs_super_block* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %88 = call i32 @nilfs_swap_super_block(%struct.the_nilfs* %87)
  br label %89

89:                                               ; preds = %86, %81, %78
  %90 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  store %struct.nilfs_super_block** %90, %struct.nilfs_super_block*** %3, align 8
  br label %91

91:                                               ; preds = %89, %47
  %92 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %3, align 8
  ret %struct.nilfs_super_block** %92
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(%struct.nilfs_super_block*, %struct.nilfs_super_block*, i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @nilfs_swap_super_block(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
