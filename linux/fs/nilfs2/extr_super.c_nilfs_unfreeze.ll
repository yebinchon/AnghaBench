; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_unfreeze.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_unfreeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @nilfs_unfreeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_unfreeze(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load %struct.super_block*, %struct.super_block** %3, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  store %struct.the_nilfs* %7, %struct.the_nilfs** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call i64 @sb_rdonly(%struct.super_block* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %14 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call i32 @nilfs_setup_super(%struct.super_block* %16, i32 0)
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 0
  %20 = call i32 @up_write(i32* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_setup_super(%struct.super_block*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
