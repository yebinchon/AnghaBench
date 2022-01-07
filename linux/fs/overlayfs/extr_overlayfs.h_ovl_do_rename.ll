; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_overlayfs.h_ovl_do_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_overlayfs.h_ovl_do_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"rename(%pd2, %pd2, 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"...rename(%pd2, %pd2, ...) = %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ovl_do_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_do_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %9, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.dentry* %12, %struct.dentry* %13, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @vfs_rename(%struct.inode* %16, %struct.dentry* %17, %struct.inode* %18, %struct.dentry* %19, i32* null, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = load %struct.dentry*, %struct.dentry** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %25, %struct.dentry* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %5
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @vfs_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
