; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_verify_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_verify_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.dentry*, i32)* @ovl_verify_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_verify_inode(%struct.inode* %0, %struct.dentry* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISDIR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i64 @ovl_inode_lower(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %56

26:                                               ; preds = %21, %18
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = icmp ne %struct.dentry* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call i64 @ovl_inode_upper(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %56

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %34, %15, %4
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = icmp ne %struct.dentry* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i64 @ovl_inode_lower(%struct.inode* %39)
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = call i64 @d_inode(%struct.dentry* %41)
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %56

45:                                               ; preds = %38, %35
  %46 = load %struct.dentry*, %struct.dentry** %8, align 8
  %47 = icmp ne %struct.dentry* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i64 @ovl_inode_upper(%struct.inode* %49)
  %51 = load %struct.dentry*, %struct.dentry** %8, align 8
  %52 = call i64 @d_inode(%struct.dentry* %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %56

55:                                               ; preds = %48, %45
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %54, %44, %33, %25
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @ovl_inode_lower(%struct.inode*) #1

declare dso_local i64 @ovl_inode_upper(%struct.inode*) #1

declare dso_local i64 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
