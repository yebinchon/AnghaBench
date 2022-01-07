; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_acl.c_orangefs_init_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_acl.c_orangefs_init_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32*, i32* }
%struct.posix_acl = type { i32 }
%struct.iattr = type { i32, i64 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_init_acl(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iattr, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @posix_acl_create(%struct.inode* %14, i64* %8, %struct.posix_acl** %6, %struct.posix_acl** %7)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %22 = icmp ne %struct.posix_acl* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %26 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %27 = call i32 @__orangefs_set_acl(%struct.inode* %24, %struct.posix_acl* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %29 = call i32 @posix_acl_release(%struct.posix_acl* %28)
  br label %33

30:                                               ; preds = %20
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %35 = icmp ne %struct.posix_acl* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %42 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %43 = call i32 @__orangefs_set_acl(%struct.inode* %40, %struct.posix_acl* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %46 = call i32 @posix_acl_release(%struct.posix_acl* %45)
  br label %50

47:                                               ; preds = %33
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = call i32 @memset(%struct.iattr* %9, i32 0, i32 16)
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* @ATTR_MODE, align 4
  %64 = getelementptr inbounds %struct.iattr, %struct.iattr* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 8
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @__orangefs_setattr(%struct.inode* %67, %struct.iattr* %9)
  br label %69

69:                                               ; preds = %56, %50
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @posix_acl_create(%struct.inode*, i64*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @__orangefs_set_acl(%struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @memset(%struct.iattr*, i32, i32) #1

declare dso_local i32 @__orangefs_setattr(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
