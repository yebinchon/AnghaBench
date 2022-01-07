; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }

@XATTR_CREATE = common dso_local global i32 0, align 4
@EXT4_HT_XATTR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_xattr_set(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.super_block*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %15, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call i32 @dquot_initialize(%struct.inode* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %7, align 4
  br label %80

29:                                               ; preds = %6
  br label %30

30:                                               ; preds = %71, %29
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @XATTR_CREATE, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @ext4_xattr_set_credits(%struct.inode* %31, i64 %32, i32 %35, i32* %18)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %7, align 4
  br label %80

41:                                               ; preds = %30
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = load i32, i32* @EXT4_HT_XATTR, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32* @ext4_journal_start(%struct.inode* %42, i32 %43, i32 %44)
  store i32* %45, i32** %14, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @PTR_ERR(i32* %50)
  store i32 %51, i32* %16, align 4
  br label %78

52:                                               ; preds = %41
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @ext4_xattr_set_handle(i32* %53, %struct.inode* %54, i32 %55, i8* %56, i8* %57, i64 %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @ext4_journal_stop(i32* %61)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load %struct.super_block*, %struct.super_block** %15, align 8
  %69 = call i64 @ext4_should_retry_alloc(%struct.super_block* %68, i32* %17)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %30

72:                                               ; preds = %67, %52
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %19, align 4
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %75, %72
  br label %78

78:                                               ; preds = %77, %49
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %39, %27
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_set_credits(%struct.inode*, i64, i32, i32*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_xattr_set_handle(i32*, %struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
