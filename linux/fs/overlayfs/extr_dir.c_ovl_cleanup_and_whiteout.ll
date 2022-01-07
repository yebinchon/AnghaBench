; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_cleanup_and_whiteout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_cleanup_and_whiteout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }

@RENAME_EXCHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_cleanup_and_whiteout(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call %struct.dentry* @ovl_whiteout(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %9, align 8
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = call i32 @PTR_ERR(%struct.dentry* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.dentry*, %struct.dentry** %9, align 8
  %20 = call i64 @IS_ERR(%struct.dentry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %3
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = call i64 @d_is_dir(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @RENAME_EXCHANGE, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ovl_do_rename(%struct.inode* %31, %struct.dentry* %32, %struct.inode* %33, %struct.dentry* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %52

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = call i32 @ovl_cleanup(%struct.inode* %44, %struct.dentry* %45)
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %52, %47
  %49 = load %struct.dentry*, %struct.dentry** %9, align 8
  %50 = call i32 @dput(%struct.dentry* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %39
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load %struct.dentry*, %struct.dentry** %9, align 8
  %55 = call i32 @ovl_cleanup(%struct.inode* %53, %struct.dentry* %54)
  br label %48

56:                                               ; preds = %48, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.dentry* @ovl_whiteout(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @ovl_do_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_cleanup(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
