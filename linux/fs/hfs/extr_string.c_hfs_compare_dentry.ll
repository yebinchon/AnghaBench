; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_string.c_hfs_compare_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_string.c_hfs_compare_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i8* }

@HFS_NAMELEN = common dso_local global i32 0, align 4
@caseorder = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_compare_dentry(%struct.dentry* %0, i32 %1, i8* %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @HFS_NAMELEN, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load %struct.qstr*, %struct.qstr** %9, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HFS_NAMELEN, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %60

22:                                               ; preds = %15
  %23 = load i32, i32* @HFS_NAMELEN, align 4
  store i32 %23, i32* %7, align 4
  br label %32

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.qstr*, %struct.qstr** %9, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %60

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i8*, i8** %8, align 8
  store i8* %33, i8** %10, align 8
  %34 = load %struct.qstr*, %struct.qstr** %9, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %58, %32
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %7, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i64*, i64** @caseorder, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** @caseorder, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i64, i64* %49, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %60

58:                                               ; preds = %41
  br label %37

59:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %57, %30, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
