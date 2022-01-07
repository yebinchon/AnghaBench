; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_read_consume.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_read_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i64, i64, i64, i64, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchan_buf*, i64, i64)* @relay_file_read_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relay_file_read_consume(%struct.rchan_buf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %11 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %16 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %21 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %24 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %29 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %32 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %114

36:                                               ; preds = %27, %3
  %37 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %38 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %7, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %46 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %45, i32 0, i32 6
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %49 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @relay_subbufs_consumed(%struct.TYPE_2__* %47, i32 %50, i32 1)
  %52 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %53 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %36
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %57 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %64 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = urem i64 %65, %66
  store i64 %67, i64* %9, align 8
  br label %76

68:                                               ; preds = %54
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %71 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %70, i32 0, i32 6
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = udiv i64 %69, %74
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %68, %62
  %77 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %78 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %81 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %80, i32 0, i32 4
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %79, %85
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %76
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %92 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = urem i64 %93, %94
  %96 = icmp eq i64 %90, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %99 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %114

104:                                              ; preds = %97, %89
  %105 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %106 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %105, i32 0, i32 6
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %109 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @relay_subbufs_consumed(%struct.TYPE_2__* %107, i32 %110, i32 1)
  %112 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %113 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %35, %103, %104, %76
  ret void
}

declare dso_local i32 @relay_subbufs_consumed(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
