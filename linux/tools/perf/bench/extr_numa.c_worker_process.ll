; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_worker_process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_worker_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.thread_data*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.thread_data = type { i32, i32, i32, i32, i32*, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"process %d\00", align 1
@g = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c" # process %2d global mem: %p, process mem: %p\0A\00", align 1
@worker_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @worker_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_process(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = call i32 @pthread_mutex_init(i32* %3, i32* null)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @set_taskname(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.thread_data*, %struct.thread_data** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %21, i64 %23
  store %struct.thread_data* %24, %struct.thread_data** %4, align 8
  %25 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %26 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bind_to_memnode(i32 %27)
  %29 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %30 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bind_to_cpumask(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32* @zalloc(i32 %39)
  store i32* %40, i32** %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @setup_private_data(i32 %44)
  store i32* %45, i32** %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %58

51:                                               ; preds = %1
  %52 = load i32, i32* %2, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %51, %1
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %109, %58
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %59
  %67 = load i32, i32* %2, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %67, %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.thread_data*, %struct.thread_data** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %77, i64 %79
  store %struct.thread_data* %80, %struct.thread_data** %4, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %83 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %82, i32 0, i32 6
  store i32* %81, i32** %83, align 8
  %84 = load i32, i32* %2, align 4
  %85 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %86 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %89 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %92 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = call i32 (...) @rand()
  %94 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %95 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %97 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %96, i32 0, i32 3
  store i32 -1, i32* %97, align 4
  %98 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %99 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %98, i32 0, i32 4
  store i32* %3, i32** %99, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* @worker_thread, align 4
  %105 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %106 = call i32 @pthread_create(i32* %103, i32* null, i32 %104, %struct.thread_data* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @BUG_ON(i32 %107)
  br label %109

109:                                              ; preds = %66
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %59

112:                                              ; preds = %59
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %129, %112
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pthread_join(i32 %125, i32* null)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @BUG_ON(i32 %127)
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %113

132:                                              ; preds = %113
  %133 = load i32*, i32** %6, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @free_data(i32* %133, i32 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @free(i32* %139)
  ret void
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @set_taskname(i8*, i32) #1

declare dso_local i32 @bind_to_memnode(i32) #1

declare dso_local i32 @bind_to_cpumask(i32) #1

declare dso_local i32* @zalloc(i32) #1

declare dso_local i32* @setup_private_data(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32*) #1

declare dso_local i32 @rand(...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.thread_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @free_data(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
