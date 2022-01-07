; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_xattr.c_hfsplus_getxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_xattr.c_hfsplus_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@HFSPLUS_ATTR_MAX_STRLEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_getxattr(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %17 = load i32, i32* @HFSPLUS_ATTR_MAX_STRLEN, align 4
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %15, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %44

27:                                               ; preds = %6
  %28 = load i8*, i8** %15, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @strcpy(i8* %28, i8* %29)
  %31 = load i8*, i8** %15, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strcpy(i8* %33, i8* %34)
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @__hfsplus_getxattr(%struct.inode* %36, i8* %37, i8* %38, i64 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %27, %24
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @__hfsplus_getxattr(%struct.inode*, i8*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
