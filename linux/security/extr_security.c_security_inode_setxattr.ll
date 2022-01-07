; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_setxattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@inode_setxattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_inode_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = call i32 @d_backing_inode(%struct.dentry* %13)
  %15 = call i32 @IS_PRIVATE(i32 %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %57

19:                                               ; preds = %5
  %20 = load i32, i32* @inode_setxattr, align 4
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @call_int_hook(i32 %20, i32 1, %struct.dentry* %21, i8* %22, i8* %23, i64 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @cap_inode_setxattr(%struct.dentry* %30, i8* %31, i8* %32, i64 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %29, %19
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %57

41:                                               ; preds = %36
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @ima_inode_setxattr(%struct.dentry* %42, i8* %43, i8* %44, i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %57

51:                                               ; preds = %41
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @evm_inode_setxattr(%struct.dentry* %52, i8* %53, i8* %54, i64 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %51, %49, %39, %18
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @call_int_hook(i32, i32, %struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @cap_inode_setxattr(%struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @ima_inode_setxattr(%struct.dentry*, i8*, i8*, i64) #1

declare dso_local i32 @evm_inode_setxattr(%struct.dentry*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
