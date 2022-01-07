; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c___filemap_fdatawrite_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c___filemap_fdatawrite_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i32, i32, i32, i32 }

@LONG_MAX = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__filemap_fdatawrite_range(%struct.address_space* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.writeback_control, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %11, i32 0, i32 0
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %11, i32 0, i32 1
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %11, i32 0, i32 2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %11, i32 0, i32 3
  %19 = load i32, i32* @LONG_MAX, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.address_space*, %struct.address_space** %6, align 8
  %21 = call i32 @mapping_cap_writeback_dirty(%struct.address_space* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.address_space*, %struct.address_space** %6, align 8
  %25 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %26 = call i32 @mapping_tagged(%struct.address_space* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load %struct.address_space*, %struct.address_space** %6, align 8
  %31 = getelementptr inbounds %struct.address_space, %struct.address_space* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wbc_attach_fdatawrite_inode(%struct.writeback_control* %11, i32 %32)
  %34 = load %struct.address_space*, %struct.address_space** %6, align 8
  %35 = call i32 @do_writepages(%struct.address_space* %34, %struct.writeback_control* %11)
  store i32 %35, i32* %10, align 4
  %36 = call i32 @wbc_detach_inode(%struct.writeback_control* %11)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %29, %28
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @mapping_cap_writeback_dirty(%struct.address_space*) #1

declare dso_local i32 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i32 @wbc_attach_fdatawrite_inode(%struct.writeback_control*, i32) #1

declare dso_local i32 @do_writepages(%struct.address_space*, %struct.writeback_control*) #1

declare dso_local i32 @wbc_detach_inode(%struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
