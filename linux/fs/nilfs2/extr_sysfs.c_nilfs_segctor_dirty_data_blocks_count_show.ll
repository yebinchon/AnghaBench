; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_segctor_dirty_data_blocks_count_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_segctor_dirty_data_blocks_count_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segctor_attr = type { i32 }
%struct.the_nilfs = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_segctor_attr*, %struct.the_nilfs*, i8*)* @nilfs_segctor_dirty_data_blocks_count_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_dirty_data_blocks_count_show(%struct.nilfs_segctor_attr* %0, %struct.the_nilfs* %1, i8* %2) #0 {
  %4 = alloca %struct.nilfs_segctor_attr*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.nilfs_segctor_attr* %0, %struct.nilfs_segctor_attr** %4, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %9 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %8, i32 0, i32 0
  %10 = call i32 @down_read(i32* %9)
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 1
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %15 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %14, i32 0, i32 0
  %16 = call i32 @up_read(i32* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  ret i32 %20
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
