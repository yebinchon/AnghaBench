; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_crc32_threadfn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_crc32_threadfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crc_data = type { i32, i32, i32, i32**, i32*, i32*, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @crc32_threadfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32_threadfn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.crc_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.crc_data*
  store %struct.crc_data* %6, %struct.crc_data** %3, align 8
  br label %7

7:                                                ; preds = %1, %70
  %8 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %9 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %12 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %11, i32 0, i32 6
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = call i64 (...) @kthread_should_stop()
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i1 [ true, %7 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @wait_event(i32 %10, i32 %20)
  %22 = call i64 (...) @kthread_should_stop()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %26 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %25, i32 0, i32 7
  store i32* null, i32** %26, align 8
  %27 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %28 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %27, i32 0, i32 2
  %29 = call i32 @atomic_set(i32* %28, i32 1)
  %30 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %31 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %30, i32 0, i32 1
  %32 = call i32 @wake_up(i32* %31)
  br label %77

33:                                               ; preds = %18
  %34 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %35 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %34, i32 0, i32 6
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %67, %33
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %40 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %45 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %49 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %56 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %55, i32 0, i32 3
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @crc32_le(i32 %47, i32 %54, i32 %62)
  %64 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %65 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %43
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %37

70:                                               ; preds = %37
  %71 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %72 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %71, i32 0, i32 2
  %73 = call i32 @atomic_set(i32* %72, i32 1)
  %74 = load %struct.crc_data*, %struct.crc_data** %3, align 8
  %75 = getelementptr inbounds %struct.crc_data, %struct.crc_data* %74, i32 0, i32 1
  %76 = call i32 @wake_up(i32* %75)
  br label %7

77:                                               ; preds = %24
  ret i32 0
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @crc32_le(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
