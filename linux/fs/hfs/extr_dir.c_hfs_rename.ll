; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_dir.c_hfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_dir.c_hfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @hfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @RENAME_NOREPLACE, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %64

21:                                               ; preds = %5
  %22 = load %struct.dentry*, %struct.dentry** %10, align 8
  %23 = call i64 @d_really_is_positive(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = call i32 @hfs_remove(%struct.inode* %26, %struct.dentry* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %64

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %21
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = load %struct.dentry*, %struct.dentry** %10, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = call i32 @hfs_cat_move(i32 %38, %struct.inode* %39, i32* %41, %struct.inode* %42, i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %34
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dentry*, %struct.dentry** %8, align 8
  %53 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %52)
  %54 = call %struct.TYPE_5__* @HFS_I(%struct.TYPE_4__* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dentry*, %struct.dentry** %10, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = call i32 @hfs_cat_build_key(i32 %51, i32* %55, i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %48, %34
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %31, %18
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @hfs_remove(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @hfs_cat_move(i32, %struct.inode*, i32*, %struct.inode*, i32*) #1

declare dso_local %struct.TYPE_4__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @hfs_cat_build_key(i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @HFS_I(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
