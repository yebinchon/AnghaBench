; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@iget_test = common dso_local global i32 0, align 4
@iget_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @gfs2_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @gfs2_iget(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @iget_test, align 4
  %11 = load i32, i32* @iget_set, align 4
  %12 = call %struct.inode* @iget5_locked(%struct.super_block* %8, i32 %9, i32 %10, i32 %11, i32* %5)
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %16, %struct.inode** %3, align 8
  br label %26

17:                                               ; preds = %7
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i64 @is_bad_inode(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i32 @iput(%struct.inode* %22)
  br label %7

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %25, %struct.inode** %3, align 8
  br label %26

26:                                               ; preds = %24, %15
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %27
}

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, i32*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
