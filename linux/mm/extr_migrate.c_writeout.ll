; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_writeout.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.page*, %struct.writeback_control*)* }
%struct.writeback_control = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32 }

@LLONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*)* @writeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeout(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.writeback_control, align 4
  %7 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %8 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 2
  %11 = load i32, i32* @LLONG_MAX, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %6, i32 0, i32 4
  %14 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.address_space*, %struct.address_space** %4, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %18, align 8
  %20 = icmp ne i32 (%struct.page*, %struct.writeback_control*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @clear_page_dirty_for_io(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %24
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @remove_migration_ptes(%struct.page* %32, %struct.page* %33, i32 0)
  %35 = load %struct.address_space*, %struct.address_space** %4, align 8
  %36 = getelementptr inbounds %struct.address_space, %struct.address_space* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.page*, %struct.writeback_control*)** %38, align 8
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 %39(%struct.page* %40, %struct.writeback_control* %6)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct.page*, %struct.page** %5, align 8
  %47 = call i32 @lock_page(%struct.page* %46)
  br label %48

48:                                               ; preds = %45, %31
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  br label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %28, %21
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @remove_migration_ptes(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
