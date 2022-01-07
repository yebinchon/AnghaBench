; ModuleID = '/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c___create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c___create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32*, %struct.inode_operations* }
%struct.inode_operations = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, %struct.dentry*, %struct.inode_operations*)* @__create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__create_dir(i8* %0, %struct.dentry* %1, %struct.inode_operations* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode_operations*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode_operations* %2, %struct.inode_operations** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = call %struct.dentry* @start_creating(i8* %10, %struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %8, align 8
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  %14 = call i64 @IS_ERR(%struct.dentry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %66

17:                                               ; preds = %3
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.inode* @tracefs_get_inode(i32 %20)
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = icmp ne %struct.inode* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = call %struct.dentry* @failed_creating(%struct.dentry* %29)
  store %struct.dentry* %30, %struct.dentry** %4, align 8
  br label %66

31:                                               ; preds = %17
  %32 = load i32, i32* @S_IFDIR, align 4
  %33 = load i32, i32* @S_IRWXU, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @S_IRUGO, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @S_IXUGO, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode_operations*, %struct.inode_operations** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 2
  store %struct.inode_operations* %41, %struct.inode_operations** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  store i32* @simple_dir_operations, i32** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = call i32 @inc_nlink(%struct.inode* %46)
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = call i32 @d_instantiate(%struct.dentry* %48, %struct.inode* %49)
  %51 = load %struct.dentry*, %struct.dentry** %8, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.inode*, %struct.inode** %54, align 8
  %56 = call i32 @inc_nlink(%struct.inode* %55)
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.inode*, %struct.inode** %60, align 8
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = call i32 @fsnotify_mkdir(%struct.inode* %61, %struct.dentry* %62)
  %64 = load %struct.dentry*, %struct.dentry** %8, align 8
  %65 = call %struct.dentry* @end_creating(%struct.dentry* %64)
  store %struct.dentry* %65, %struct.dentry** %4, align 8
  br label %66

66:                                               ; preds = %31, %28, %16
  %67 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %67
}

declare dso_local %struct.dentry* @start_creating(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @tracefs_get_inode(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dentry* @failed_creating(%struct.dentry*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fsnotify_mkdir(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @end_creating(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
