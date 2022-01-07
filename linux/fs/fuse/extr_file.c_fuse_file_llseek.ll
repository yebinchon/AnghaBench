; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @fuse_file_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_file_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %42 [
    i32 128, label %12
    i32 132, label %12
    i32 130, label %17
    i32 129, label %33
    i32 131, label %33
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @generic_file_llseek(%struct.file* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call i32 @inode_lock(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call i32 @fuse_update_attributes(%struct.inode* %20, %struct.file* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @generic_file_llseek(%struct.file* %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @inode_unlock(%struct.inode* %31)
  br label %45

33:                                               ; preds = %3, %3
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @inode_lock(%struct.inode* %34)
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @fuse_lseek(%struct.file* %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i32 @inode_unlock(%struct.inode* %40)
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %33, %30, %12
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fuse_update_attributes(%struct.inode*, %struct.file*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @fuse_lseek(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
