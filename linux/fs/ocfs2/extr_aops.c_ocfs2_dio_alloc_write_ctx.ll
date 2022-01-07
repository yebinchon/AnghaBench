; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_dio_alloc_write_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_dio_alloc_write_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dio_write_ctxt = type { i32, i64, i64, i32 }
%struct.buffer_head = type { %struct.ocfs2_dio_write_ctxt* }

@GFP_NOFS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_dio_write_ctxt* (%struct.buffer_head*, i32*)* @ocfs2_dio_alloc_write_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_dio_write_ctxt* @ocfs2_dio_alloc_write_ctx(%struct.buffer_head* %0, i32* %1) #0 {
  %3 = alloca %struct.ocfs2_dio_write_ctxt*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_dio_write_ctxt*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_dio_write_ctxt* null, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 0
  %9 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %8, align 8
  %10 = icmp ne %struct.ocfs2_dio_write_ctxt* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %13, align 8
  store %struct.ocfs2_dio_write_ctxt* %14, %struct.ocfs2_dio_write_ctxt** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call %struct.ocfs2_dio_write_ctxt* @kmalloc(i32 32, i32 %16)
  store %struct.ocfs2_dio_write_ctxt* %17, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %18 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %19 = icmp eq %struct.ocfs2_dio_write_ctxt* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.ocfs2_dio_write_ctxt* null, %struct.ocfs2_dio_write_ctxt** %3, align 8
  br label %38

21:                                               ; preds = %15
  %22 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %23 = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, %struct.ocfs2_dio_write_ctxt* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %26 = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, %struct.ocfs2_dio_write_ctxt* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, %struct.ocfs2_dio_write_ctxt* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @task_pid_nr(i32 %29)
  %31 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, %struct.ocfs2_dio_write_ctxt* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %6, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  store %struct.ocfs2_dio_write_ctxt* %33, %struct.ocfs2_dio_write_ctxt** %35, align 8
  %36 = load i32*, i32** %5, align 8
  store i32 1, i32* %36, align 4
  %37 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %6, align 8
  store %struct.ocfs2_dio_write_ctxt* %37, %struct.ocfs2_dio_write_ctxt** %3, align 8
  br label %38

38:                                               ; preds = %21, %20, %11
  %39 = load %struct.ocfs2_dio_write_ctxt*, %struct.ocfs2_dio_write_ctxt** %3, align 8
  ret %struct.ocfs2_dio_write_ctxt* %39
}

declare dso_local %struct.ocfs2_dio_write_ctxt* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @task_pid_nr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
