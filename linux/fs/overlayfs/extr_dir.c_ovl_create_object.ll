; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32, i32 }
%struct.ovl_cattr = type { i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I_CREATING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i32, i8*)* @ovl_create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_create_object(%struct.dentry* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ovl_cattr, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %11, i32 0, i32 0
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %11, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %11, i32 0, i32 2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call i32 @ovl_want_write(%struct.dentry* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %72

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.inode* @ovl_new_inode(i32 %27, i32 %28, i32 %29)
  store %struct.inode* %30, %struct.inode** %10, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %69

34:                                               ; preds = %22
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load i32, i32* @I_CREATING, align 4
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @inode_init_owner(%struct.inode* %46, i32 %51, i32 %52)
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %11, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = call i32 @ovl_create_or_link(%struct.dentry* %58, %struct.inode* %59, %struct.ovl_cattr* %11, i32 0)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load %struct.dentry*, %struct.dentry** %5, align 8
  %63 = call %struct.inode* @d_inode(%struct.dentry* %62)
  %64 = icmp ne %struct.inode* %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %34
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = call i32 @iput(%struct.inode* %66)
  br label %68

68:                                               ; preds = %65, %34
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i32 @ovl_drop_write(%struct.dentry* %70)
  br label %72

72:                                               ; preds = %69, %21
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @ovl_want_write(%struct.dentry*) #1

declare dso_local %struct.inode* @ovl_new_inode(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, i32, i32) #1

declare dso_local i32 @ovl_create_or_link(%struct.dentry*, %struct.inode*, %struct.ovl_cattr*, i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ovl_drop_write(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
