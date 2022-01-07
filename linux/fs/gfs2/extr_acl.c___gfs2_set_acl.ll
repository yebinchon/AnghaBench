; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c___gfs2_set_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_acl.c___gfs2_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@GFS2_EATYPE_SYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gfs2_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @gfs2_acl_name(i32 %12)
  store i8* %13, i8** %11, align 8
  %14 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %15 = icmp ne %struct.posix_acl* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %18 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @posix_acl_xattr_size(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call i8* @kmalloc(i64 %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %16
  %30 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %30, i8* %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %54

37:                                               ; preds = %29
  br label %39

38:                                               ; preds = %3
  store i8* null, i8** %10, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @GFS2_EATYPE_SYS, align 4
  %45 = call i32 @__gfs2_xattr_set(%struct.inode* %40, i8* %41, i8* %42, i64 %43, i32 0, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %53 = call i32 @set_cached_acl(%struct.inode* %50, i32 %51, %struct.posix_acl* %52)
  br label %54

54:                                               ; preds = %49, %48, %36
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %26
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i8* @gfs2_acl_name(i32) #1

declare dso_local i64 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @__gfs2_xattr_set(%struct.inode*, i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
