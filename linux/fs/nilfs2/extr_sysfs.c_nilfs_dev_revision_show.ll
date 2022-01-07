; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_dev_revision_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_dev_revision_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_dev_attr = type { i32 }
%struct.the_nilfs = type { %struct.nilfs_super_block** }
%struct.nilfs_super_block = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_dev_attr*, %struct.the_nilfs*, i8*)* @nilfs_dev_revision_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_dev_revision_show(%struct.nilfs_dev_attr* %0, %struct.the_nilfs* %1, i8* %2) #0 {
  %4 = alloca %struct.nilfs_dev_attr*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nilfs_super_block**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nilfs_dev_attr* %0, %struct.nilfs_dev_attr** %4, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %11 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %10, i32 0, i32 0
  %12 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %11, align 8
  store %struct.nilfs_super_block** %12, %struct.nilfs_super_block*** %7, align 8
  %13 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %14 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %13, i64 0
  %15 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %14, align 8
  %16 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  %20 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %19, i64 0
  %21 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %20, align 8
  %22 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  ret i32 %29
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
