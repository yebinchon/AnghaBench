; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c___next_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c___next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i64, i64, i64 }

@KBUFFER_TYPE_TIME_EXTEND = common dso_local global i32 0, align 4
@KBUFFER_TYPE_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbuffer*)* @__next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__next_event(%struct.kbuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kbuffer*, align 8
  %4 = alloca i32, align 4
  store %struct.kbuffer* %0, %struct.kbuffer** %3, align 8
  br label %5

5:                                                ; preds = %30, %1
  %6 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %7 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %10 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %12 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %15 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %21 = call i32 @update_pointers(%struct.kbuffer* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @KBUFFER_TYPE_TIME_EXTEND, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @KBUFFER_TYPE_PADDING, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  br i1 %31, label %5, label %32

32:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @update_pointers(%struct.kbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
