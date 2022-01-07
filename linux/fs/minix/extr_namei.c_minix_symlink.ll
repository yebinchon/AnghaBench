; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_namei.c_minix_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_namei.c_minix_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @minix_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @ENAMETOOLONG, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load i32, i32* @S_IFLNK, align 4
  %26 = or i32 %25, 511
  %27 = call %struct.inode* @minix_new_inode(%struct.inode* %24, i32 %26, i32* %7)
  store %struct.inode* %27, %struct.inode** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %45

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 @minix_set_inode(%struct.inode* %32, i32 0)
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @page_symlink(%struct.inode* %34, i8* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %47

41:                                               ; preds = %31
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = call i32 @add_nondir(%struct.dentry* %42, %struct.inode* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %47, %41, %30, %22
  %46 = load i32, i32* %7, align 4
  ret i32 %46

47:                                               ; preds = %40
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = call i32 @inode_dec_link_count(%struct.inode* %48)
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = call i32 @iput(%struct.inode* %50)
  br label %45
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.inode* @minix_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local i32 @minix_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
