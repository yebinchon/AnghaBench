; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c___generic_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c___generic_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.kiocb = type { i32, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@IOCB_DIRECT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__generic_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca %struct.iov_iter*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %4, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 2
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %5, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %6, align 8
  %19 = load %struct.address_space*, %struct.address_space** %6, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %7, align 8
  store i64 0, i64* %8, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32* @inode_to_bdi(%struct.inode* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = call i64 @file_remove_privs(%struct.file* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %126

31:                                               ; preds = %2
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = call i64 @file_update_time(%struct.file* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %126

37:                                               ; preds = %31
  %38 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %39 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IOCB_DIRECT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %104

44:                                               ; preds = %37
  %45 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %46 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %47 = call i64 @generic_file_direct_write(%struct.kiocb* %45, %struct.iov_iter* %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %52 = call i32 @iov_iter_count(%struct.iov_iter* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call i64 @IS_DAX(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50, %44
  br label %126

59:                                               ; preds = %54
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %62 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %63 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = call i64 @generic_perform_write(%struct.file* %60, %struct.iov_iter* %61, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp slt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i64, i64* %10, align 8
  store i64 %72, i64* %9, align 8
  br label %126

73:                                               ; preds = %59
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %75, %76
  %78 = sub nsw i64 %77, 1
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %12, align 4
  %80 = load %struct.address_space*, %struct.address_space** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @filemap_write_and_wait_range(%struct.address_space* %80, i32 %81, i32 %82)
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %73
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %90 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %8, align 8
  %94 = load %struct.address_space*, %struct.address_space** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = call i32 @invalidate_mapping_pages(%struct.address_space* %94, i32 %97, i32 %100)
  br label %103

102:                                              ; preds = %73
  br label %103

103:                                              ; preds = %102, %86
  br label %125

104:                                              ; preds = %37
  %105 = load %struct.file*, %struct.file** %5, align 8
  %106 = load %struct.iov_iter*, %struct.iov_iter** %4, align 8
  %107 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %108 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @generic_perform_write(%struct.file* %105, %struct.iov_iter* %106, i32 %109)
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp sgt i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i64 @likely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %119 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  br label %124

124:                                              ; preds = %116, %104
  br label %125

125:                                              ; preds = %124, %103
  br label %126

126:                                              ; preds = %125, %71, %58, %36, %30
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32* null, i32** %128, align 8
  %129 = load i64, i64* %8, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i64, i64* %8, align 8
  br label %135

133:                                              ; preds = %126
  %134 = load i64, i64* %9, align 8
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i64 [ %132, %131 ], [ %134, %133 ]
  ret i64 %136
}

declare dso_local i32* @inode_to_bdi(%struct.inode*) #1

declare dso_local i64 @file_remove_privs(%struct.file*) #1

declare dso_local i64 @file_update_time(%struct.file*) #1

declare dso_local i64 @generic_file_direct_write(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @IS_DAX(%struct.inode*) #1

declare dso_local i64 @generic_perform_write(%struct.file*, %struct.iov_iter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @filemap_write_and_wait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @invalidate_mapping_pages(%struct.address_space*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
