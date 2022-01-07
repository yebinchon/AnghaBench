; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i64 }
%struct.blk_plug = type { i32 }
%struct.mpage_data = type { i32, i32*, i32, i32 }

@__mpage_writepage = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpage_writepages(%struct.address_space* %0, %struct.writeback_control* %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_plug, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpage_data, align 8
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 @blk_start_plug(%struct.blk_plug* %7)
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.address_space*, %struct.address_space** %4, align 8
  %16 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %17 = call i32 @generic_writepages(%struct.address_space* %15, %struct.writeback_control* %16)
  store i32 %17, i32* %8, align 4
  br label %48

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %9, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %9, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %9, i32 0, i32 2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %9, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %26 = load i32, i32* @__mpage_writepage, align 4
  %27 = call i32 @write_cache_pages(%struct.address_space* %24, %struct.writeback_control* %25, i32 %26, %struct.mpage_data* %9)
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %9, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %18
  %32 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %33 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WB_SYNC_ALL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @REQ_SYNC, align 4
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @REQ_OP_WRITE, align 4
  %43 = load i32, i32* %10, align 4
  %44 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %9, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @mpage_bio_submit(i32 %42, i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %40, %18
  br label %48

48:                                               ; preds = %47, %14
  %49 = call i32 @blk_finish_plug(%struct.blk_plug* %7)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @generic_writepages(%struct.address_space*, %struct.writeback_control*) #1

declare dso_local i32 @write_cache_pages(%struct.address_space*, %struct.writeback_control*, i32, %struct.mpage_data*) #1

declare dso_local i32 @mpage_bio_submit(i32, i32, i32*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
