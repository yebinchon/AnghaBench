; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c___relay_reset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c___relay_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32, %struct.TYPE_4__*, i64*, i64, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rchan_buf*, i32, i32*, i32)* }

@wakeup_readers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rchan_buf*, i32)* @__relay_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__relay_reset(%struct.rchan_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.rchan_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %10 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %9, i32 0, i32 11
  %11 = call i32 @init_waitqueue_head(i32* %10)
  %12 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %13 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %12, i32 0, i32 10
  %14 = call i32 @kref_init(i32* %13)
  %15 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %16 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %15, i32 0, i32 9
  %17 = load i32, i32* @wakeup_readers, align 4
  %18 = call i32 @init_irq_work(i32* %16, i32 %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %21 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %20, i32 0, i32 9
  %22 = call i32 @irq_work_sync(i32* %21)
  br label %23

23:                                               ; preds = %19, %8
  %24 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %25 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %24, i32 0, i32 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %27 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %29 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %31 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %33 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %36 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %38 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %53, %23
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %42 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %40, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %49 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %39

56:                                               ; preds = %39
  %57 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %58 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.rchan_buf*, i32, i32*, i32)*, i32 (%struct.rchan_buf*, i32, i32*, i32)** %62, align 8
  %64 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %65 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  %66 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %63(%struct.rchan_buf* %64, i32 %67, i32* null, i32 0)
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @irq_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
