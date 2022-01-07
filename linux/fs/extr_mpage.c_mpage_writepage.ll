; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i64 }
%struct.mpage_data = type { i32*, i32, i32, i32 }

@WB_SYNC_ALL = common dso_local global i64 0, align 8
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpage_writepage(%struct.page* %0, i32 %1, %struct.writeback_control* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca %struct.mpage_data, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.writeback_control* %2, %struct.writeback_control** %6, align 8
  %10 = bitcast %struct.mpage_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %7, i32 0, i32 2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %15 = call i32 @__mpage_writepage(%struct.page* %13, %struct.writeback_control* %14, %struct.mpage_data* %7)
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %7, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %21 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WB_SYNC_ALL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @REQ_SYNC, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @REQ_OP_WRITE, align 4
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.mpage_data, %struct.mpage_data* %7, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @mpage_bio_submit(i32 %30, i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %28, %3
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__mpage_writepage(%struct.page*, %struct.writeback_control*, %struct.mpage_data*) #2

declare dso_local i32 @mpage_bio_submit(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
