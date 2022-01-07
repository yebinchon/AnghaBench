; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sockfs_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sockfs_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@ERANGE = common dso_local global i64 0, align 8
@XATTR_NAME_SOCKPROTONAME_LEN = common dso_local global i64 0, align 8
@XATTR_NAME_SOCKPROTONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dentry*, i8*, i64)* @sockfs_listxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sockfs_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i32 @d_inode(%struct.dentry* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @security_inode_listsecurity(i32 %11, i8* %12, i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %4, align 8
  br label %61

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @ERANGE, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %61

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %32, %19
  %37 = load i64, i64* @XATTR_NAME_SOCKPROTONAME_LEN, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* @ERANGE, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %4, align 8
  br label %61

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @XATTR_NAME_SOCKPROTONAME, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @memcpy(i8* %52, i32 %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %51, %36
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %48, %29, %17
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i64 @security_inode_listsecurity(i32, i8*, i64) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
