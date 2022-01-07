; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @nilfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.the_nilfs*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 0
  %6 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  store %struct.the_nilfs* %6, %struct.the_nilfs** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @nilfs_detach_log_writer(%struct.super_block* %7)
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call i32 @sb_rdonly(%struct.super_block* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 3
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = call i32 @nilfs_cleanup_super(%struct.super_block* %16)
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 3
  %20 = call i32 @up_write(i32* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %23 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @iput(i32 %24)
  %26 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %27 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iput(i32 %28)
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %31 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iput(i32 %32)
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %3, align 8
  %35 = call i32 @destroy_nilfs(%struct.the_nilfs* %34)
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  store %struct.the_nilfs* null, %struct.the_nilfs** %37, align 8
  ret void
}

declare dso_local i32 @nilfs_detach_log_writer(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_cleanup_super(%struct.super_block*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @destroy_nilfs(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
