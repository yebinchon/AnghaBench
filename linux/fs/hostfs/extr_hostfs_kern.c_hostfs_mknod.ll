; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @hostfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.inode* @hostfs_iget(i32 %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = call i64 @IS_ERR(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call i32 @PTR_ERR(%struct.inode* %21)
  store i32 %22, i32* %12, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = call i8* @dentry_name(%struct.dentry* %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %62

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @init_special_inode(%struct.inode* %32, i32 %33, i32 %34)
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @MAJOR(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @MINOR(i32 %40)
  %42 = call i32 @do_mknod(i8* %36, i32 %37, i32 %39, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %59

46:                                               ; preds = %31
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @read_name(%struct.inode* %47, i8* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @__putname(i8* %50)
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %62

55:                                               ; preds = %46
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call i32 @d_instantiate(%struct.dentry* %56, %struct.inode* %57)
  store i32 0, i32* %5, align 4
  br label %67

59:                                               ; preds = %45
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @__putname(i8* %60)
  br label %62

62:                                               ; preds = %59, %54, %30
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call i32 @iput(%struct.inode* %63)
  br label %65

65:                                               ; preds = %62, %20
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %55
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.inode* @hostfs_iget(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i8* @dentry_name(%struct.dentry*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @do_mknod(i8*, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @read_name(%struct.inode*, i8*) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
