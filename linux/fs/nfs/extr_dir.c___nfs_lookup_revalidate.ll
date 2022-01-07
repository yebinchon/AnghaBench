; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c___nfs_lookup_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c___nfs_lookup_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type opaque

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i32 (%struct.inode*, %struct.dentry*, i32)*)* @__nfs_lookup_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfs_lookup_revalidate(%struct.dentry* %0, i32 %1, i32 (%struct.inode*, %struct.dentry*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.inode*, %struct.dentry*, i32)*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.inode*, %struct.dentry*, i32)* %2, i32 (%struct.inode*, %struct.dentry*, i32)** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @LOOKUP_RCU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dentry* @READ_ONCE(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %8, align 8
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  %21 = call %struct.inode* @d_inode_rcu(%struct.dentry* %20)
  store %struct.inode* %21, %struct.inode** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ECHILD, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %15
  %28 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %28(%struct.inode* %29, %struct.dentry* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.dentry* @READ_ONCE(i32 %36)
  %38 = icmp ne %struct.dentry* %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @ECHILD, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %56

42:                                               ; preds = %27
  br label %54

43:                                               ; preds = %3
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = call %struct.dentry* @dget_parent(%struct.dentry* %44)
  store %struct.dentry* %45, %struct.dentry** %8, align 8
  %46 = load i32 (%struct.inode*, %struct.dentry*, i32)*, i32 (%struct.inode*, %struct.dentry*, i32)** %7, align 8
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = call %struct.inode* @d_inode(%struct.dentry* %47)
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %46(%struct.inode* %48, %struct.dentry* %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.dentry*, %struct.dentry** %8, align 8
  %53 = call i32 @dput(%struct.dentry* %52)
  br label %54

54:                                               ; preds = %43, %42
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %39, %24
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.dentry* @READ_ONCE(i32) #1

declare dso_local %struct.inode* @d_inode_rcu(%struct.dentry*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
