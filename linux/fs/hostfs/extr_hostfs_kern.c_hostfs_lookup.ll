; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @hostfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @hostfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.inode* @hostfs_iget(i32 %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = call i64 @IS_ERR(%struct.inode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %48

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call i8* @dentry_name(%struct.dentry* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @read_name(%struct.inode* %26, i8* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @__putname(i8* %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i32 @iput(%struct.inode* %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.inode* @ERR_PTR(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi %struct.inode* [ null, %41 ], [ %44, %42 ]
  store %struct.inode* %46, %struct.inode** %7, align 8
  br label %47

47:                                               ; preds = %45, %31
  br label %48

48:                                               ; preds = %47, %17
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call %struct.dentry* @d_splice_alias(%struct.inode* %49, %struct.dentry* %50)
  ret %struct.dentry* %51
}

declare dso_local %struct.inode* @hostfs_iget(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i8* @dentry_name(%struct.dentry*) #1

declare dso_local i32 @read_name(%struct.inode*, i8*) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
