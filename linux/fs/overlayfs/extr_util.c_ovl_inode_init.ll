; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_inode_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_inode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i8*, i8*, %struct.dentry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ovl_inode_init(%struct.inode* %0, %struct.dentry* %1, %struct.dentry* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = icmp ne %struct.dentry* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %15

13:                                               ; preds = %4
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi %struct.dentry* [ %10, %12 ], [ %14, %13 ]
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_2__* @OVL_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store %struct.dentry* %21, %struct.dentry** %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = icmp ne %struct.dentry* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = call %struct.inode* @d_inode(%struct.dentry* %29)
  %31 = call i8* @igrab(%struct.inode* %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call %struct.TYPE_2__* @OVL_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %28, %25
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = icmp ne %struct.dentry* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = call %struct.inode* @d_inode(%struct.dentry* %39)
  %41 = call i8* @igrab(%struct.inode* %40)
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = call %struct.TYPE_2__* @OVL_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @ovl_copyattr(%struct.inode* %46, %struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @ovl_copyflags(%struct.inode* %49, %struct.inode* %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %45
  %57 = load %struct.inode*, %struct.inode** %9, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %45
  ret void
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @OVL_I(%struct.inode*) #1

declare dso_local i8* @igrab(%struct.inode*) #1

declare dso_local i32 @ovl_copyattr(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ovl_copyflags(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
