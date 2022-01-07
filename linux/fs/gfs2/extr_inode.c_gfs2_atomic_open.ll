; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_atomic_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_atomic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.file = type { i32 }

@O_EXCL = common dso_local global i32 0, align 4
@FMODE_OPENED = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32)* @gfs2_atomic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_atomic_open(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @O_EXCL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = call i32 @d_in_lookup(%struct.dentry* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  br label %64

25:                                               ; preds = %5
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = load %struct.file*, %struct.file** %9, align 8
  %29 = call %struct.dentry* @__gfs2_lookup(%struct.inode* %26, %struct.dentry* %27, %struct.file* %28)
  store %struct.dentry* %29, %struct.dentry** %12, align 8
  %30 = load %struct.dentry*, %struct.dentry** %12, align 8
  %31 = call i64 @IS_ERR(%struct.dentry* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.dentry*, %struct.dentry** %12, align 8
  %35 = call i32 @PTR_ERR(%struct.dentry* %34)
  store i32 %35, i32* %6, align 4
  br label %81

36:                                               ; preds = %25
  %37 = load %struct.dentry*, %struct.dentry** %12, align 8
  %38 = icmp ne %struct.dentry* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %40, %struct.dentry** %8, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.dentry*, %struct.dentry** %8, align 8
  %43 = call i64 @d_really_is_positive(%struct.dentry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.file*, %struct.file** %9, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FMODE_OPENED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load %struct.file*, %struct.file** %9, align 8
  %54 = load %struct.dentry*, %struct.dentry** %12, align 8
  %55 = call i32 @finish_no_open(%struct.file* %53, %struct.dentry* %54)
  store i32 %55, i32* %6, align 4
  br label %81

56:                                               ; preds = %45
  %57 = load %struct.dentry*, %struct.dentry** %12, align 8
  %58 = call i32 @dput(%struct.dentry* %57)
  store i32 0, i32* %6, align 4
  br label %81

59:                                               ; preds = %41
  %60 = load %struct.dentry*, %struct.dentry** %12, align 8
  %61 = icmp ne %struct.dentry* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  br label %64

64:                                               ; preds = %59, %24
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @O_CREAT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %81

72:                                               ; preds = %64
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = load %struct.dentry*, %struct.dentry** %8, align 8
  %75 = load %struct.file*, %struct.file** %9, align 8
  %76 = load i32, i32* @S_IFREG, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @gfs2_create_inode(%struct.inode* %73, %struct.dentry* %74, %struct.file* %75, i32 %78, i32 0, i32* null, i32 0, i32 %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %72, %69, %56, %52, %33
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @d_in_lookup(%struct.dentry*) #1

declare dso_local %struct.dentry* @__gfs2_lookup(%struct.inode*, %struct.dentry*, %struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @finish_no_open(%struct.file*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gfs2_create_inode(%struct.inode*, %struct.dentry*, %struct.file*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
