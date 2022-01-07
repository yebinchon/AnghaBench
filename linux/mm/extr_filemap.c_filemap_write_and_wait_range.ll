; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_filemap_write_and_wait_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_filemap_write_and_wait_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }

@WB_SYNC_ALL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filemap_write_and_wait_range(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = call i64 @mapping_needs_writeback(%struct.address_space* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @WB_SYNC_ALL, align 4
  %17 = call i32 @__filemap_fdatawrite_range(%struct.address_space* %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load %struct.address_space*, %struct.address_space** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @filemap_fdatawait_range(%struct.address_space* %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %22
  br label %35

32:                                               ; preds = %12
  %33 = load %struct.address_space*, %struct.address_space** %4, align 8
  %34 = call i32 @filemap_check_errors(%struct.address_space* %33)
  br label %35

35:                                               ; preds = %32, %31
  br label %39

36:                                               ; preds = %3
  %37 = load %struct.address_space*, %struct.address_space** %4, align 8
  %38 = call i32 @filemap_check_errors(%struct.address_space* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i64 @mapping_needs_writeback(%struct.address_space*) #1

declare dso_local i32 @__filemap_fdatawrite_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @filemap_fdatawait_range(%struct.address_space*, i32, i32) #1

declare dso_local i32 @filemap_check_errors(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
