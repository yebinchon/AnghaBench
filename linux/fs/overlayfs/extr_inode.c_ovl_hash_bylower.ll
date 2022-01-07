; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_hash_bylower.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_hash_bylower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, %struct.ovl_fs* }
%struct.ovl_fs = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry*, %struct.dentry*, %struct.dentry*)* @ovl_hash_bylower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_hash_bylower(%struct.super_block* %0, %struct.dentry* %1, %struct.dentry* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ovl_fs*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load %struct.ovl_fs*, %struct.ovl_fs** %12, align 8
  store %struct.ovl_fs* %13, %struct.ovl_fs** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

17:                                               ; preds = %4
  %18 = load %struct.dentry*, %struct.dentry** %9, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %55

21:                                               ; preds = %17
  %22 = load %struct.ovl_fs*, %struct.ovl_fs** %10, align 8
  %23 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %55

27:                                               ; preds = %21
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = call i32 @ovl_indexdir(%struct.super_block* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = call i32 @d_is_dir(%struct.dentry* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %55

45:                                               ; preds = %38, %34, %30
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = icmp ne %struct.dentry* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %55

54:                                               ; preds = %50, %45
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53, %44, %26, %20, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ovl_indexdir(%struct.super_block*) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
