; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_set_log_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_set_log_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_super_block = type { i8*, i8*, i8*, i8* }
%struct.the_nilfs = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_set_log_cursor(%struct.nilfs_super_block* %0, %struct.the_nilfs* %1) #0 {
  %3 = alloca %struct.nilfs_super_block*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca i32, align 4
  store %struct.nilfs_super_block* %0, %struct.nilfs_super_block** %3, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %4, align 8
  %6 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %7 = call i32 @nilfs_count_free_blocks(%struct.the_nilfs* %6, i32* %5)
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @cpu_to_le64(i32 %8)
  %10 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %13 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @cpu_to_le64(i32 %17)
  %19 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %3, align 8
  %20 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %22 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le64(i32 %23)
  %25 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %3, align 8
  %26 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %28 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_le64(i32 %29)
  %31 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %3, align 8
  %32 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %34 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local i32 @nilfs_count_free_blocks(%struct.the_nilfs*, i32*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
