; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_export.c_squashfs_export_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_export.c_squashfs_export_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Entered squashfs_export_iget\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i32)* @squashfs_export_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @squashfs_export_iget(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENOENT, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.dentry* @ERR_PTR(i32 %8)
  store %struct.dentry* %9, %struct.dentry** %6, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @squashfs_inode_lookup(%struct.super_block* %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @squashfs_iget(%struct.super_block* %17, i64 %18, i32 %19)
  %21 = call %struct.dentry* @d_obtain_alias(i32 %20)
  store %struct.dentry* %21, %struct.dentry** %6, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %23
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @squashfs_inode_lookup(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @squashfs_iget(%struct.super_block*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
