; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_real.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_create_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64 }
%struct.ovl_cattr = type { i32, i32, i32, i64 }

@ESTALE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @ovl_create_real(%struct.inode* %0, %struct.dentry* %1, %struct.ovl_cattr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ovl_cattr*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.ovl_cattr* %2, %struct.ovl_cattr** %7, align 8
  %9 = load %struct.dentry*, %struct.dentry** %6, align 8
  %10 = call i64 @IS_ERR(%struct.dentry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %13, %struct.dentry** %4, align 8
  br label %100

14:                                               ; preds = %3
  %15 = load i32, i32* @ESTALE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %90

22:                                               ; preds = %14
  %23 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %24 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %29 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = call i32 @ovl_do_link(i64 %30, %struct.inode* %31, %struct.dentry* %32)
  store i32 %33, i32* %8, align 4
  br label %74

34:                                               ; preds = %22
  %35 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %36 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @S_IFMT, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %70 [
    i32 129, label %40
    i32 132, label %47
    i32 133, label %53
    i32 134, label %53
    i32 131, label %53
    i32 128, label %53
    i32 130, label %63
  ]

40:                                               ; preds = %34
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %44 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ovl_do_create(%struct.inode* %41, %struct.dentry* %42, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %73

47:                                               ; preds = %34
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %50 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ovl_mkdir_real(%struct.inode* %48, %struct.dentry** %6, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %73

53:                                               ; preds = %34, %34, %34, %34
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %57 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %60 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ovl_do_mknod(%struct.inode* %54, %struct.dentry* %55, i32 %58, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %73

63:                                               ; preds = %34
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = load %struct.ovl_cattr*, %struct.ovl_cattr** %7, align 8
  %67 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ovl_do_symlink(%struct.inode* %64, %struct.dentry* %65, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %73

70:                                               ; preds = %34
  %71 = load i32, i32* @EPERM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %63, %53, %47, %40
  br label %74

74:                                               ; preds = %73, %27
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load %struct.dentry*, %struct.dentry** %6, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @WARN_ON(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %77, %74
  br label %90

90:                                               ; preds = %89, %21
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.dentry*, %struct.dentry** %6, align 8
  %95 = call i32 @dput(%struct.dentry* %94)
  %96 = load i32, i32* %8, align 4
  %97 = call %struct.dentry* @ERR_PTR(i32 %96)
  store %struct.dentry* %97, %struct.dentry** %4, align 8
  br label %100

98:                                               ; preds = %90
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %99, %struct.dentry** %4, align 8
  br label %100

100:                                              ; preds = %98, %93, %12
  %101 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %101
}

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_do_link(i64, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ovl_do_create(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_mkdir_real(%struct.inode*, %struct.dentry**, i32) #1

declare dso_local i32 @ovl_do_mknod(%struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ovl_do_symlink(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
