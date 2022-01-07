; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kioctx = type { i32, %struct.page**, %struct.page** }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"pid(%d) [%d] page->count=%d\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kioctx*)* @aio_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aio_free_ring(%struct.kioctx* %0) #0 {
  %2 = alloca %struct.kioctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  store %struct.kioctx* %0, %struct.kioctx** %2, align 8
  %5 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %6 = call i32 @put_aio_ring_file(%struct.kioctx* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %46, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %10 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %19 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %18, i32 0, i32 1
  %20 = load %struct.page**, %struct.page*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.page*, %struct.page** %20, i64 %22
  %24 = load %struct.page*, %struct.page** %23, align 8
  %25 = call i32 @page_count(%struct.page* %24)
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %25)
  %27 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %28 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %27, i32 0, i32 1
  %29 = load %struct.page**, %struct.page*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.page*, %struct.page** %29, i64 %31
  %33 = load %struct.page*, %struct.page** %32, align 8
  store %struct.page* %33, %struct.page** %4, align 8
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %13
  br label %46

37:                                               ; preds = %13
  %38 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %39 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %38, i32 0, i32 1
  %40 = load %struct.page**, %struct.page*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page*, %struct.page** %40, i64 %42
  store %struct.page* null, %struct.page** %43, align 8
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @put_page(%struct.page* %44)
  br label %46

46:                                               ; preds = %37, %36
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %7

49:                                               ; preds = %7
  %50 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %51 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %50, i32 0, i32 1
  %52 = load %struct.page**, %struct.page*** %51, align 8
  %53 = icmp ne %struct.page** %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %56 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %55, i32 0, i32 1
  %57 = load %struct.page**, %struct.page*** %56, align 8
  %58 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %59 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %58, i32 0, i32 2
  %60 = load %struct.page**, %struct.page*** %59, align 8
  %61 = icmp ne %struct.page** %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %64 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %63, i32 0, i32 1
  %65 = load %struct.page**, %struct.page*** %64, align 8
  %66 = call i32 @kfree(%struct.page** %65)
  %67 = load %struct.kioctx*, %struct.kioctx** %2, align 8
  %68 = getelementptr inbounds %struct.kioctx, %struct.kioctx* %67, i32 0, i32 1
  store %struct.page** null, %struct.page*** %68, align 8
  br label %69

69:                                               ; preds = %62, %54, %49
  ret void
}

declare dso_local i32 @put_aio_ring_file(%struct.kioctx*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
