; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_lzo_decompress_threadfn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_lzo_decompress_threadfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_data = type { i32, i32, i32, i64, i64, i32, i64, i32, i32*, i32 }

@LZO_UNC_SIZE = common dso_local global i64 0, align 8
@LZO_HEADER = common dso_local global i64 0, align 8
@clean_pages_on_decompress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lzo_decompress_threadfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzo_decompress_threadfn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dec_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.dec_data*
  store %struct.dec_data* %5, %struct.dec_data** %3, align 8
  br label %6

6:                                                ; preds = %1, %71
  %7 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %8 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %11 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %10, i32 0, i32 7
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
  %24 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %25 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %24, i32 0, i32 8
  store i32* null, i32** %25, align 8
  %26 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %27 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %29 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %28, i32 0, i32 2
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %32 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %31, i32 0, i32 1
  %33 = call i32 @wake_up(i32* %32)
  br label %78

34:                                               ; preds = %17
  %35 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %36 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %35, i32 0, i32 7
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load i64, i64* @LZO_UNC_SIZE, align 8
  %39 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %40 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %42 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LZO_HEADER, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %47 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %50 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %53 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %52, i32 0, i32 3
  %54 = call i32 @lzo1x_decompress_safe(i64 %45, i32 %48, i64 %51, i64* %53)
  %55 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %56 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @clean_pages_on_decompress, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %34
  %60 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %61 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %64 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %67 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  %70 = call i32 @flush_icache_range(i64 %62, i64 %69)
  br label %71

71:                                               ; preds = %59, %34
  %72 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %73 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %72, i32 0, i32 2
  %74 = call i32 @atomic_set(i32* %73, i32 1)
  %75 = load %struct.dec_data*, %struct.dec_data** %3, align 8
  %76 = getelementptr inbounds %struct.dec_data, %struct.dec_data* %75, i32 0, i32 1
  %77 = call i32 @wake_up(i32* %76)
  br label %6

78:                                               ; preds = %23
  ret i32 0
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lzo1x_decompress_safe(i64, i32, i64, i64*) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
