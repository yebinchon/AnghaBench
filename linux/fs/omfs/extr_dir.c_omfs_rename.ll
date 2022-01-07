; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_dir.c_omfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @omfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dentry*, %struct.dentry** %10, align 8
  %16 = call %struct.inode* @d_inode(%struct.dentry* %15)
  store %struct.inode* %16, %struct.inode** %12, align 8
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = call %struct.inode* @d_inode(%struct.dentry* %17)
  store %struct.inode* %18, %struct.inode** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @RENAME_NOREPLACE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %62

27:                                               ; preds = %5
  %28 = load %struct.inode*, %struct.inode** %12, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = load %struct.dentry*, %struct.dentry** %10, align 8
  %33 = call i32 @omfs_remove(%struct.inode* %31, %struct.dentry* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %60

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = call i32 @omfs_delete_entry(%struct.dentry* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %60

44:                                               ; preds = %38
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @mark_inode_dirty(%struct.inode* %45)
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %13, align 8
  %49 = call i32 @omfs_add_link(%struct.dentry* %47, %struct.inode* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %60

53:                                               ; preds = %44
  %54 = load %struct.inode*, %struct.inode** %13, align 8
  %55 = call i32 @current_time(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %13, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %13, align 8
  %59 = call i32 @mark_inode_dirty(%struct.inode* %58)
  br label %60

60:                                               ; preds = %53, %52, %43, %36
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %24
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @omfs_remove(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @omfs_delete_entry(%struct.dentry*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @omfs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
