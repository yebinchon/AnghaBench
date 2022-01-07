; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_wb_io_lists_depopulated.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_wb_io_lists_depopulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WB_has_dirty_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdi_writeback*)* @wb_io_lists_depopulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_io_lists_depopulated(%struct.bdi_writeback* %0) #0 {
  %2 = alloca %struct.bdi_writeback*, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %2, align 8
  %3 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %4 = call i64 @wb_has_dirty_io(%struct.bdi_writeback* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %8 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %7, i32 0, i32 5
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %6
  %12 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %13 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %12, i32 0, i32 4
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %18 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %17, i32 0, i32 3
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i32, i32* @WB_has_dirty_io, align 4
  %23 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %24 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %23, i32 0, i32 2
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %27 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %30 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i64 @atomic_long_sub_return(i32 %28, i32* %32)
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  br label %37

37:                                               ; preds = %21, %16, %11, %6, %1
  ret void
}

declare dso_local i64 @wb_has_dirty_io(%struct.bdi_writeback*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_long_sub_return(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
