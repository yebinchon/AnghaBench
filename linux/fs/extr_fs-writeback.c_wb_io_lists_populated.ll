; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_wb_io_lists_populated.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_wb_io_lists_populated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WB_has_dirty_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdi_writeback*)* @wb_io_lists_populated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_io_lists_populated(%struct.bdi_writeback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdi_writeback*, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %3, align 8
  %4 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %5 = call i64 @wb_has_dirty_io(%struct.bdi_writeback* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  %9 = load i32, i32* @WB_has_dirty_io, align 4
  %10 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %11 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %10, i32 0, i32 2
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %14 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %21 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %24 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @atomic_long_add(i32 %22, i32* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %8, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @wb_has_dirty_io(%struct.bdi_writeback*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
