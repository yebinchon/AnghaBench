; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_lzo_compress_threadfn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_lzo_compress_threadfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_data = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32 }

@LZO_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lzo_compress_threadfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzo_compress_threadfn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cmp_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cmp_data*
  store %struct.cmp_data* %5, %struct.cmp_data** %3, align 8
  br label %6

6:                                                ; preds = %1, %34
  %7 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %8 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %11 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %10, i32 0, i32 8
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = call i64 (...) @kthread_should_stop()
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i1 [ true, %6 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @wait_event(i32 %9, i32 %19)
  %21 = call i64 (...) @kthread_should_stop()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %25 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %24, i32 0, i32 9
  store i32* null, i32** %25, align 8
  %26 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %27 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %29 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %28, i32 0, i32 2
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %32 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %31, i32 0, i32 1
  %33 = call i32 @wake_up(i32* %32)
  br label %63

34:                                               ; preds = %17
  %35 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %36 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %35, i32 0, i32 8
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %39 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %42 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %45 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LZO_HEADER, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %50 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %49, i32 0, i32 4
  %51 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %52 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lzo1x_1_compress(i32 %40, i32 %43, i64 %48, i32* %50, i32 %53)
  %55 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %56 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %58 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %57, i32 0, i32 2
  %59 = call i32 @atomic_set(i32* %58, i32 1)
  %60 = load %struct.cmp_data*, %struct.cmp_data** %3, align 8
  %61 = getelementptr inbounds %struct.cmp_data, %struct.cmp_data* %60, i32 0, i32 1
  %62 = call i32 @wake_up(i32* %61)
  br label %6

63:                                               ; preds = %23
  ret i32 0
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lzo1x_1_compress(i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
