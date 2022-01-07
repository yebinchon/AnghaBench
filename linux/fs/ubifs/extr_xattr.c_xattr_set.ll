; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xattr_handler = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"xattr '%s', host ino %lu ('%pd'), size %zd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* @xattr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_set(%struct.xattr_handler* %0, %struct.dentry* %1, %struct.inode* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xattr_handler*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.xattr_handler* %0, %struct.xattr_handler** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i8*, i8** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %11, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dentry*, %struct.dentry** %10, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @dbg_gen(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, %struct.dentry* %20, i64 %21)
  %23 = load %struct.xattr_handler*, %struct.xattr_handler** %9, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i8* @xattr_full_name(%struct.xattr_handler* %23, i8* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %7
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @ubifs_xattr_set(%struct.inode* %29, i8* %30, i8* %31, i64 %32, i32 %33, i32 1)
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %7
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @ubifs_xattr_remove(%struct.inode* %36, i8* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @dbg_gen(i8*, i8*, i32, %struct.dentry*, i64) #1

declare dso_local i8* @xattr_full_name(%struct.xattr_handler*, i8*) #1

declare dso_local i32 @ubifs_xattr_set(%struct.inode*, i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @ubifs_xattr_remove(%struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
