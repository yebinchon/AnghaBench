; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_file_write_and_wait_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_file_write_and_wait_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32 }

@WB_SYNC_ALL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_write_and_wait_range(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  store %struct.address_space* %12, %struct.address_space** %9, align 8
  %13 = load %struct.address_space*, %struct.address_space** %9, align 8
  %14 = call i64 @mapping_needs_writeback(%struct.address_space* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.address_space*, %struct.address_space** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @WB_SYNC_ALL, align 4
  %21 = call i32 @__filemap_fdatawrite_range(%struct.address_space* %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.address_space*, %struct.address_space** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @__filemap_fdatawait_range(%struct.address_space* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = call i32 @file_check_and_advance_wb_err(%struct.file* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i64 @mapping_needs_writeback(%struct.address_space*) #1

declare dso_local i32 @__filemap_fdatawrite_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @__filemap_fdatawait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @file_check_and_advance_wb_err(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
