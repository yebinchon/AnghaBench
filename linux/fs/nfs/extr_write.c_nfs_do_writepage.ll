; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_do_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_do_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i32 }
%struct.nfs_pageio_descriptor = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, %struct.nfs_pageio_descriptor*)* @nfs_do_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_do_writepage(%struct.page* %0, %struct.writeback_control* %1, %struct.nfs_pageio_descriptor* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.nfs_pageio_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store %struct.nfs_pageio_descriptor* %2, %struct.nfs_pageio_descriptor** %6, align 8
  %8 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %6, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @page_index(%struct.page* %9)
  %11 = call i32 @nfs_pageio_cond_complete(%struct.nfs_pageio_descriptor* %8, i32 %10)
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %6, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i32 @nfs_page_async_flush(%struct.nfs_pageio_descriptor* %12, %struct.page* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %20, %struct.page* %21)
  %23 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @nfs_pageio_cond_complete(%struct.nfs_pageio_descriptor*, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @nfs_page_async_flush(%struct.nfs_pageio_descriptor*, %struct.page*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
