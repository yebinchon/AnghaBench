; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @hostfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.inode* @hostfs_iget(i32 %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = call i64 @IS_ERR(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call i32 @PTR_ERR(%struct.inode* %22)
  store i32 %23, i32* %12, align 4
  br label %68

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = call i8* @dentry_name(%struct.dentry* %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %65

32:                                               ; preds = %24
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 511
  %36 = call i32 @file_create(i8* %33, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %12, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @read_name(%struct.inode* %42, i8* %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @__putname(i8* %46)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %65

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = call %struct.TYPE_2__* @HOSTFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @FMODE_READ, align 4
  %57 = load i32, i32* @FMODE_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = call %struct.TYPE_2__* @HOSTFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call i32 @d_instantiate(%struct.dentry* %62, %struct.inode* %63)
  store i32 0, i32* %5, align 4
  br label %70

65:                                               ; preds = %50, %31
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = call i32 @iput(%struct.inode* %66)
  br label %68

68:                                               ; preds = %65, %21
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %51
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.inode* @hostfs_iget(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i8* @dentry_name(%struct.dentry*) #1

declare dso_local i32 @file_create(i8*, i32) #1

declare dso_local i32 @read_name(%struct.inode*, i8*) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local %struct.TYPE_2__* @HOSTFS_I(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
