; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_copy_file_checks.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_copy_file_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_copy_file_checks(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.file*, %struct.file** %8, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %14, align 8
  %21 = load %struct.file*, %struct.file** %10, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %15, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = load %struct.file*, %struct.file** %10, align 8
  %27 = call i32 @generic_file_rw_checks(%struct.file* %25, %struct.file* %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* %18, align 4
  store i32 %31, i32* %7, align 4
  br label %108

32:                                               ; preds = %6
  %33 = load %struct.inode*, %struct.inode** %15, align 8
  %34 = call i64 @IS_IMMUTABLE(%struct.inode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %108

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %14, align 8
  %41 = call i64 @IS_SWAPFILE(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.inode*, %struct.inode** %15, align 8
  %45 = call i64 @IS_SWAPFILE(%struct.inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @ETXTBSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %108

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %16, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %11, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @EOVERFLOW, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %108

65:                                               ; preds = %56
  %66 = load %struct.inode*, %struct.inode** %14, align 8
  %67 = call i64 @i_size_read(%struct.inode* %66)
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %17, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i64 0, i64* %16, align 8
  br label %78

72:                                               ; preds = %65
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub nsw i64 %74, %75
  %77 = call i64 @min(i64 %73, i64 %76)
  store i64 %77, i64* %16, align 8
  br label %78

78:                                               ; preds = %72, %71
  %79 = load %struct.file*, %struct.file** %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @generic_write_check_limits(%struct.file* %79, i64 %80, i64* %16)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %7, align 4
  br label %108

86:                                               ; preds = %78
  %87 = load %struct.inode*, %struct.inode** %14, align 8
  %88 = load %struct.inode*, %struct.inode** %15, align 8
  %89 = icmp eq %struct.inode* %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %16, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i64, i64* %9, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %98, %99
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %108

105:                                              ; preds = %96, %90, %86
  %106 = load i64, i64* %16, align 8
  %107 = load i64*, i64** %12, align 8
  store i64 %106, i64* %107, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %102, %84, %62, %47, %36, %30
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @generic_file_rw_checks(%struct.file*, %struct.file*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @generic_write_check_limits(%struct.file*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
