; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_read_at_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_read_at_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kbuffer_read_at_offset(%struct.kbuffer* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.kbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  store %struct.kbuffer* %0, %struct.kbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %10 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %16 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %14, %13
  %21 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %22 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %23 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kbuffer_load_subbuffer(%struct.kbuffer* %21, i32 %24)
  %26 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = call i8* @kbuffer_read_event(%struct.kbuffer* %26, i64* %27)
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %42, %20
  %30 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %31 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = call i8* @kbuffer_next_event(%struct.kbuffer* %36, i64* %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %43

42:                                               ; preds = %35
  br label %29

43:                                               ; preds = %41, %29
  %44 = load i8*, i8** %7, align 8
  ret i8* %44
}

declare dso_local i32 @kbuffer_load_subbuffer(%struct.kbuffer*, i32) #1

declare dso_local i8* @kbuffer_read_event(%struct.kbuffer*, i64*) #1

declare dso_local i8* @kbuffer_next_event(%struct.kbuffer*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
