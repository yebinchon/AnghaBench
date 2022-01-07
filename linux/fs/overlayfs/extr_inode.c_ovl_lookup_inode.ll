; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_lookup_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_lookup_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@ovl_inode_test = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ovl_lookup_inode(%struct.super_block* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %9, align 8
  %14 = ptrtoint %struct.inode* %13 to i64
  %15 = load i32, i32* @ovl_inode_test, align 4
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = call %struct.inode* @ilookup5(%struct.super_block* %12, i64 %14, i32 %15, %struct.inode* %16)
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi %struct.dentry* [ null, %25 ], [ %27, %26 ]
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi %struct.dentry* [ %33, %32 ], [ null, %34 ]
  %37 = call i32 @ovl_verify_inode(%struct.inode* %22, %struct.dentry* %29, %struct.dentry* %36, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i32 @iput(%struct.inode* %40)
  %42 = load i32, i32* @ESTALE, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.inode* @ERR_PTR(i32 %43)
  store %struct.inode* %44, %struct.inode** %4, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %46, %struct.inode** %4, align 8
  br label %47

47:                                               ; preds = %45, %39, %20
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %48
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i64, i32, %struct.inode*) #1

declare dso_local i32 @ovl_verify_inode(%struct.inode*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
