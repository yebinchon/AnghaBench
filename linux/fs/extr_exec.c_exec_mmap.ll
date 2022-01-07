; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_exec_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_exec_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__*, %struct.mm_struct*, %struct.mm_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32, i64, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*)* @exec_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %7, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = call i32 @mm_release(%struct.task_struct* %11, %struct.mm_struct* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %15 = icmp ne %struct.mm_struct* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %18 = call i32 @sync_mm_rss(%struct.mm_struct* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %28, i32 0, i32 0
  %30 = call i32 @up_read(i32* %29)
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %83

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %36 = call i32 @task_lock(%struct.task_struct* %35)
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 2
  %39 = load %struct.mm_struct*, %struct.mm_struct** %38, align 8
  store %struct.mm_struct* %39, %struct.mm_struct** %6, align 8
  %40 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %41 = call i32 @membarrier_exec_mmap(%struct.mm_struct* %40)
  %42 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 1
  store %struct.mm_struct* %42, %struct.mm_struct** %44, align 8
  %45 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %46 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 2
  store %struct.mm_struct* %45, %struct.mm_struct** %47, align 8
  %48 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %49 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %50 = call i32 @activate_mm(%struct.mm_struct* %48, %struct.mm_struct* %49)
  %51 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 1
  %53 = load %struct.mm_struct*, %struct.mm_struct** %52, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %56 = call i32 @vmacache_flush(%struct.task_struct* %55)
  %57 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %58 = call i32 @task_unlock(%struct.task_struct* %57)
  %59 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %60 = icmp ne %struct.mm_struct* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %34
  %62 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 0
  %64 = call i32 @up_read(i32* %63)
  %65 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %66 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %67 = icmp ne %struct.mm_struct* %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %75 = call i32 @setmax_mm_hiwater_rss(i32* %73, %struct.mm_struct* %74)
  %76 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %77 = call i32 @mm_update_next_owner(%struct.mm_struct* %76)
  %78 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %79 = call i32 @mmput(%struct.mm_struct* %78)
  store i32 0, i32* %2, align 4
  br label %83

80:                                               ; preds = %34
  %81 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %82 = call i32 @mmdrop(%struct.mm_struct* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %61, %27
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @mm_release(%struct.task_struct*, %struct.mm_struct*) #1

declare dso_local i32 @sync_mm_rss(%struct.mm_struct*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @membarrier_exec_mmap(%struct.mm_struct*) #1

declare dso_local i32 @activate_mm(%struct.mm_struct*, %struct.mm_struct*) #1

declare dso_local i32 @vmacache_flush(%struct.task_struct*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @setmax_mm_hiwater_rss(i32*, %struct.mm_struct*) #1

declare dso_local i32 @mm_update_next_owner(%struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
