; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_mkdir_real.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_mkdir_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"overlayfs: failed lookup after mkdir (%pd2, err=%i).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry**, i32)* @ovl_mkdir_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_mkdir_real(%struct.inode* %0, %struct.dentry** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry** %1, %struct.dentry*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dentry**, %struct.dentry*** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load %struct.dentry*, %struct.dentry** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ovl_do_mkdir(%struct.inode* %13, %struct.dentry* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %10, align 8
  %23 = call i32 @d_unhashed(%struct.dentry* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %57

30:                                               ; preds = %21
  %31 = load %struct.dentry*, %struct.dentry** %10, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dentry*, %struct.dentry** %10, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dentry*, %struct.dentry** %10, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.dentry* @lookup_one_len(i32 %34, i32 %37, i32 %41)
  store %struct.dentry* %42, %struct.dentry** %9, align 8
  %43 = load %struct.dentry*, %struct.dentry** %9, align 8
  %44 = call i64 @IS_ERR(%struct.dentry* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.dentry* %47, i32 %48)
  %50 = load %struct.dentry*, %struct.dentry** %9, align 8
  %51 = call i32 @PTR_ERR(%struct.dentry* %50)
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %30
  %53 = load %struct.dentry*, %struct.dentry** %10, align 8
  %54 = call i32 @dput(%struct.dentry* %53)
  %55 = load %struct.dentry*, %struct.dentry** %9, align 8
  %56 = load %struct.dentry**, %struct.dentry*** %6, align 8
  store %struct.dentry* %55, %struct.dentry** %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %46, %29, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ovl_do_mkdir(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @pr_warn(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
