; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i64, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { {}* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

@IOCB_DIRECT = common dso_local global i32 0, align 4
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generic_file_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %12 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %13 = call i64 @iov_iter_count(%struct.iov_iter* %12)
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %127

17:                                               ; preds = %2
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IOCB_DIRECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %122

24:                                               ; preds = %17
  %25 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 2
  %27 = load %struct.file*, %struct.file** %26, align 8
  store %struct.file* %27, %struct.file** %8, align 8
  %28 = load %struct.file*, %struct.file** %8, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load %struct.address_space*, %struct.address_space** %29, align 8
  store %struct.address_space* %30, %struct.address_space** %9, align 8
  %31 = load %struct.address_space*, %struct.address_space** %9, align 8
  %32 = getelementptr inbounds %struct.address_space, %struct.address_space* %31, i32 0, i32 1
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %10, align 8
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i64 @i_size_read(%struct.inode* %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IOCB_NOWAIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %24
  %43 = load %struct.address_space*, %struct.address_space** %9, align 8
  %44 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %45 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %48 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %49, %50
  %52 = sub i64 %51, 1
  %53 = call i64 @filemap_range_has_page(%struct.address_space* %43, i64 %46, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i64, i64* @EAGAIN, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %3, align 8
  br label %129

58:                                               ; preds = %42
  br label %75

59:                                               ; preds = %24
  %60 = load %struct.address_space*, %struct.address_space** %9, align 8
  %61 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %62 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %65 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %66, %67
  %69 = sub i64 %68, 1
  %70 = call i64 @filemap_write_and_wait_range(%struct.address_space* %60, i64 %63, i64 %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %127

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.file*, %struct.file** %8, align 8
  %77 = call i32 @file_accessed(%struct.file* %76)
  %78 = load %struct.address_space*, %struct.address_space** %9, align 8
  %79 = getelementptr inbounds %struct.address_space, %struct.address_space* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = bitcast {}** %81 to i64 (%struct.kiocb*, %struct.iov_iter*)**
  %83 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %82, align 8
  %84 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %85 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %86 = call i64 %83(%struct.kiocb* %84, %struct.iov_iter* %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp uge i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %75
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %92 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %6, align 8
  %97 = sub i64 %96, %95
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %89, %75
  %99 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %102 = call i64 @iov_iter_count(%struct.iov_iter* %101)
  %103 = sub i64 %100, %102
  %104 = call i32 @iov_iter_revert(%struct.iov_iter* %99, i64 %103)
  %105 = load i64, i64* %7, align 8
  %106 = icmp ult i64 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %98
  %108 = load i64, i64* %6, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %112 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = load %struct.inode*, %struct.inode** %10, align 8
  %118 = call i64 @IS_DAX(%struct.inode* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %110, %107, %98
  br label %127

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %17
  %123 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %124 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i64 @generic_file_buffered_read(%struct.kiocb* %123, %struct.iov_iter* %124, i64 %125)
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %122, %120, %73, %16
  %128 = load i64, i64* %7, align 8
  store i64 %128, i64* %3, align 8
  br label %129

129:                                              ; preds = %127, %55
  %130 = load i64, i64* %3, align 8
  ret i64 %130
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @filemap_range_has_page(%struct.address_space*, i64, i64) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i32 @iov_iter_revert(%struct.iov_iter*, i64) #1

declare dso_local i64 @IS_DAX(%struct.inode*) #1

declare dso_local i64 @generic_file_buffered_read(%struct.kiocb*, %struct.iov_iter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
