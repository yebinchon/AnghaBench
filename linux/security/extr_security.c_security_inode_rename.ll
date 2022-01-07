; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_rename.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@inode_rename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_inode_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
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
  %13 = load %struct.dentry*, %struct.dentry** %8, align 8
  %14 = call i32 @d_backing_inode(%struct.dentry* %13)
  %15 = call i64 @IS_PRIVATE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %5
  %18 = load %struct.dentry*, %struct.dentry** %10, align 8
  %19 = call i64 @d_is_positive(%struct.dentry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.dentry*, %struct.dentry** %10, align 8
  %23 = call i32 @d_backing_inode(%struct.dentry* %22)
  %24 = call i64 @IS_PRIVATE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br label %28

28:                                               ; preds = %26, %5
  %29 = phi i1 [ true, %5 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %58

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @RENAME_EXCHANGE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* @inode_rename, align 4
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load %struct.dentry*, %struct.dentry** %8, align 8
  %45 = call i32 @call_int_hook(i32 %40, i32 0, %struct.inode* %41, %struct.dentry* %42, %struct.inode* %43, %struct.dentry* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %58

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* @inode_rename, align 4
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = load %struct.dentry*, %struct.dentry** %10, align 8
  %57 = call i32 @call_int_hook(i32 %52, i32 0, %struct.inode* %53, %struct.dentry* %54, %struct.inode* %55, %struct.dentry* %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %48, %33
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_PRIVATE(i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local i64 @d_is_positive(%struct.dentry*) #1

declare dso_local i32 @call_int_hook(i32, i32, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
