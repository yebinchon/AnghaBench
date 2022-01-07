; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_handle_data_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_handle_data_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@REISERFS_DATA_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"switching to journaled data mode\0A\00", align 1
@REISERFS_DATA_ORDERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"switching to ordered data mode\0A\00", align 1
@REISERFS_DATA_WRITEBACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"switching to writeback data mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64)* @handle_data_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_data_mode(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* @REISERFS_DATA_LOG, align 4
  %7 = shl i32 1, %6
  %8 = sext i32 %7 to i64
  %9 = and i64 %5, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @reiserfs_data_log(%struct.super_block* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load i32, i32* @REISERFS_DATA_LOG, align 4
  %18 = call i32 @switch_data_mode(%struct.super_block* %16, i32 %17)
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = call i32 @reiserfs_info(%struct.super_block* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %15, %11
  br label %60

22:                                               ; preds = %2
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @REISERFS_DATA_ORDERED, align 4
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = and i64 %23, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.super_block*, %struct.super_block** %3, align 8
  %31 = call i32 @reiserfs_data_ordered(%struct.super_block* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = load i32, i32* @REISERFS_DATA_ORDERED, align 4
  %36 = call i32 @switch_data_mode(%struct.super_block* %34, i32 %35)
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = call i32 @reiserfs_info(%struct.super_block* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %29
  br label %59

40:                                               ; preds = %22
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @REISERFS_DATA_WRITEBACK, align 4
  %43 = shl i32 1, %42
  %44 = sext i32 %43 to i64
  %45 = and i64 %41, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = call i32 @reiserfs_data_writeback(%struct.super_block* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = load i32, i32* @REISERFS_DATA_WRITEBACK, align 4
  %54 = call i32 @switch_data_mode(%struct.super_block* %52, i32 %53)
  %55 = load %struct.super_block*, %struct.super_block** %3, align 8
  %56 = call i32 @reiserfs_info(%struct.super_block* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %47
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %21
  ret void
}

declare dso_local i32 @reiserfs_data_log(%struct.super_block*) #1

declare dso_local i32 @switch_data_mode(%struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_info(%struct.super_block*, i8*) #1

declare dso_local i32 @reiserfs_data_ordered(%struct.super_block*) #1

declare dso_local i32 @reiserfs_data_writeback(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
