; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sq_offload_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_io_sq_offload_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.io_ring_ctx = type { i32, i32*, i8**, i64, i32*, i64, i32 }
%struct.io_uring_params = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@IORING_SETUP_SQPOLL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@IORING_SETUP_SQ_AFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@io_sq_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"io_uring-sq\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"io_ring-wq\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_FREEZABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"io_ring-write-wq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ring_ctx*, %struct.io_uring_params*)* @io_sq_offload_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_sq_offload_start(%struct.io_ring_ctx* %0, %struct.io_uring_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_ring_ctx*, align 8
  %5 = alloca %struct.io_uring_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.io_ring_ctx* %0, %struct.io_ring_ctx** %4, align 8
  store %struct.io_uring_params* %1, %struct.io_uring_params** %5, align 8
  %8 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %8, i32 0, i32 6
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @mmgrab(i32* %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IORING_SETUP_SQPOLL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %101

26:                                               ; preds = %2
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %30 = call i32 @capable(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %156

33:                                               ; preds = %26
  %34 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %35 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @msecs_to_jiffies(i32 %36)
  %38 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  %40 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = load i64, i64* @HZ, align 8
  %46 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %46, i32 0, i32 5
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %33
  %49 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %50 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IORING_SETUP_SQ_AFF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %48
  %56 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %57 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @nr_cpu_ids, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %156

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @cpu_online(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %156

70:                                               ; preds = %65
  %71 = load i32, i32* @io_sq_thread, align 4
  %72 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32* @kthread_create_on_cpu(i32 %71, %struct.io_ring_ctx* %72, i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  br label %83

77:                                               ; preds = %48
  %78 = load i32, i32* @io_sq_thread, align 4
  %79 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %80 = call i32* @kthread_create(i32 %78, %struct.io_ring_ctx* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @IS_ERR(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @PTR_ERR(i32* %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %94, i32 0, i32 4
  store i32* null, i32** %95, align 8
  br label %156

96:                                               ; preds = %83
  %97 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %98 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @wake_up_process(i32* %99)
  br label %112

101:                                              ; preds = %2
  %102 = load %struct.io_uring_params*, %struct.io_uring_params** %5, align 8
  %103 = getelementptr inbounds %struct.io_uring_params, %struct.io_uring_params* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IORING_SETUP_SQ_AFF, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %156

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %96
  %113 = load i32, i32* @WQ_UNBOUND, align 4
  %114 = load i32, i32* @WQ_FREEZABLE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %118, 1
  %120 = call i32 (...) @num_online_cpus()
  %121 = mul nsw i32 2, %120
  %122 = call i32 @min(i64 %119, i32 %121)
  %123 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %122)
  %124 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %125 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %124, i32 0, i32 2
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  store i8* %123, i8** %127, align 8
  %128 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %129 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %128, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %112
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %156

137:                                              ; preds = %112
  %138 = load i32, i32* @WQ_UNBOUND, align 4
  %139 = load i32, i32* @WQ_FREEZABLE, align 4
  %140 = or i32 %138, %139
  %141 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %140, i32 2)
  %142 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %143 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %142, i32 0, i32 2
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  store i8* %141, i8** %145, align 8
  %146 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %147 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %146, i32 0, i32 2
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 1
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %137
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %6, align 4
  br label %156

155:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %166

156:                                              ; preds = %152, %134, %108, %89, %69, %64, %32
  %157 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %158 = call i32 @io_finish_async(%struct.io_ring_ctx* %157)
  %159 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %160 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @mmdrop(i32* %161)
  %163 = load %struct.io_ring_ctx*, %struct.io_ring_ctx** %4, align 8
  %164 = getelementptr inbounds %struct.io_ring_ctx, %struct.io_ring_ctx* %163, i32 0, i32 1
  store i32* null, i32** %164, align 8
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %156, %155
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mmgrab(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32* @kthread_create_on_cpu(i32, %struct.io_ring_ctx*, i32, i8*) #1

declare dso_local i32* @kthread_create(i32, %struct.io_ring_ctx*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @wake_up_process(i32*) #1

declare dso_local i8* @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @io_finish_async(%struct.io_ring_ctx*) #1

declare dso_local i32 @mmdrop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
