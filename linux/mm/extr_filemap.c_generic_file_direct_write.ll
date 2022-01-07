; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_direct_write.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_file_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i64, %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { {}* }
%struct.inode = type { i32, i32 }
%struct.iov_iter = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@IOCB_NOWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_file_direct_write(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 2
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %6, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %7, align 8
  %19 = load %struct.address_space*, %struct.address_space** %7, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 2
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %8, align 8
  %22 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %23 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %26 = call i64 @iov_iter_count(%struct.iov_iter* %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = lshr i64 %30, %31
  store i64 %32, i64* %12, align 8
  %33 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %34 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IOCB_NOWAIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %2
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %44, %45
  %47 = sub i64 %46, 1
  %48 = call i64 @filemap_range_has_page(i32 %42, i64 %43, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %144

53:                                               ; preds = %39
  br label %66

54:                                               ; preds = %2
  %55 = load %struct.address_space*, %struct.address_space** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %57, %58
  %60 = sub i64 %59, 1
  %61 = call i32 @filemap_write_and_wait_range(%struct.address_space* %55, i64 %56, i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %142

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.address_space*, %struct.address_space** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @PAGE_SHIFT, align 8
  %70 = lshr i64 %68, %69
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @invalidate_inode_pages2_range(%struct.address_space* %67, i64 %70, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %144

81:                                               ; preds = %75
  br label %142

82:                                               ; preds = %66
  %83 = load %struct.address_space*, %struct.address_space** %7, align 8
  %84 = getelementptr inbounds %struct.address_space, %struct.address_space* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = bitcast {}** %86 to i32 (%struct.kiocb*, %struct.iov_iter*)**
  %88 = load i32 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, %struct.iov_iter*)** %87, align 8
  %89 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %90 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %91 = call i32 %88(%struct.kiocb* %89, %struct.iov_iter* %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.address_space*, %struct.address_space** %7, align 8
  %93 = getelementptr inbounds %struct.address_space, %struct.address_space* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  %97 = load %struct.address_space*, %struct.address_space** %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @PAGE_SHIFT, align 8
  %100 = lshr i64 %98, %99
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @invalidate_inode_pages2_range(%struct.address_space* %97, i64 %100, i64 %101)
  br label %103

103:                                              ; preds = %96, %82
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %11, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = call i64 @i_size_read(%struct.inode* %116)
  %118 = icmp ugt i64 %115, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %106
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @S_ISBLK(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @i_size_write(%struct.inode* %126, i64 %127)
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = call i32 @mark_inode_dirty(%struct.inode* %129)
  br label %131

131:                                              ; preds = %125, %119, %106
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %134 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %103
  %136 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %139 = call i64 @iov_iter_count(%struct.iov_iter* %138)
  %140 = sub i64 %137, %139
  %141 = call i32 @iov_iter_revert(%struct.iov_iter* %136, i64 %140)
  br label %142

142:                                              ; preds = %135, %81, %64
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %80, %50
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @filemap_range_has_page(i32, i64, i64) #1

declare dso_local i32 @filemap_write_and_wait_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @invalidate_inode_pages2_range(%struct.address_space*, i64, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @iov_iter_revert(%struct.iov_iter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
