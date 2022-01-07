; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_async.c_async_schedule_node_domain.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_async.c_async_schedule_node_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.async_domain = type { i64, i32 }
%struct.async_entry = type { i32, i32, i32, i64, %struct.async_domain*, i8*, i32 (i8*, i64)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@entry_count = common dso_local global i32 0, align 4
@MAX_WORK = common dso_local global i64 0, align 8
@async_lock = common dso_local global i32 0, align 4
@next_cookie = common dso_local global i32 0, align 4
@async_run_entry_fn = common dso_local global i32 0, align 4
@async_global_pending = common dso_local global i32 0, align 4
@PF_USED_ASYNC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@system_unbound_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @async_schedule_node_domain(i32 (i8*, i64)* %0, i8* %1, i32 %2, %struct.async_domain* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32 (i8*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.async_domain*, align 8
  %10 = alloca %struct.async_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 (i8*, i64)* %0, i32 (i8*, i64)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.async_domain* %3, %struct.async_domain** %9, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.async_entry* @kzalloc(i32 48, i32 %13)
  store %struct.async_entry* %14, %struct.async_entry** %10, align 8
  %15 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %16 = icmp ne %struct.async_entry* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call i64 @atomic_read(i32* @entry_count)
  %19 = load i64, i64* @MAX_WORK, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17, %4
  %22 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %23 = call i32 @kfree(%struct.async_entry* %22)
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @async_lock, i64 %24)
  %26 = load i32, i32* @next_cookie, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @next_cookie, align 4
  %28 = sext i32 %26 to i64
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @async_lock, i64 %29)
  %31 = load i32 (i8*, i64)*, i32 (i8*, i64)** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 %31(i8* %32, i64 %33)
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %5, align 8
  br label %91

36:                                               ; preds = %17
  %37 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %38 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %37, i32 0, i32 2
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %41 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %44 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %43, i32 0, i32 0
  %45 = load i32, i32* @async_run_entry_fn, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load i32 (i8*, i64)*, i32 (i8*, i64)** %6, align 8
  %48 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %49 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %48, i32 0, i32 6
  store i32 (i8*, i64)* %47, i32 (i8*, i64)** %49, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %52 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.async_domain*, %struct.async_domain** %9, align 8
  %54 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %55 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %54, i32 0, i32 4
  store %struct.async_domain* %53, %struct.async_domain** %55, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_lock_irqsave(i32* @async_lock, i64 %56)
  %58 = load i32, i32* @next_cookie, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @next_cookie, align 4
  %60 = sext i32 %58 to i64
  %61 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %62 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  store i64 %60, i64* %12, align 8
  %63 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %64 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %63, i32 0, i32 2
  %65 = load %struct.async_domain*, %struct.async_domain** %9, align 8
  %66 = getelementptr inbounds %struct.async_domain, %struct.async_domain* %65, i32 0, i32 1
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.async_domain*, %struct.async_domain** %9, align 8
  %69 = getelementptr inbounds %struct.async_domain, %struct.async_domain* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %36
  %73 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %74 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %73, i32 0, i32 1
  %75 = call i32 @list_add_tail(i32* %74, i32* @async_global_pending)
  br label %76

76:                                               ; preds = %72, %36
  %77 = call i32 @atomic_inc(i32* @entry_count)
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* @async_lock, i64 %78)
  %80 = load i32, i32* @PF_USED_ASYNC, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @system_unbound_wq, align 4
  %87 = load %struct.async_entry*, %struct.async_entry** %10, align 8
  %88 = getelementptr inbounds %struct.async_entry, %struct.async_entry* %87, i32 0, i32 0
  %89 = call i32 @queue_work_node(i32 %85, i32 %86, i32* %88)
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %76, %21
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local %struct.async_entry* @kzalloc(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kfree(%struct.async_entry*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work_node(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
