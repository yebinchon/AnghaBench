; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_translate_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i8*, i32, i32 }

@__read_8_sw = common dso_local global i32 0, align 4
@__read_4_sw = common dso_local global i32 0, align 4
@KBUFFER_FL_BIG_ENDIAN = common dso_local global i8* null, align 8
@__read_8 = common dso_local global i32 0, align 4
@__read_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kbuffer_translate_data(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kbuffer, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32, i32* @__read_8_sw, align 4
  %17 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @__read_4_sw, align 4
  %19 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = call i64 (...) @host_is_bigendian()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %25

23:                                               ; preds = %15
  %24 = load i8*, i8** @KBUFFER_FL_BIG_ENDIAN, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i8* [ null, %22 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  br label %41

28:                                               ; preds = %3
  %29 = load i32, i32* @__read_8, align 4
  %30 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @__read_4, align 4
  %32 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = call i64 (...) @host_is_bigendian()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i8*, i8** @KBUFFER_FL_BIG_ENDIAN, align 8
  br label %38

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i8* [ %36, %35 ], [ null, %37 ]
  %40 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %9, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %25
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @translate_data(%struct.kbuffer* %9, i8* %42, i8** %12, i64* %8, i32* %11)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %46 [
    i32 130, label %45
    i32 129, label %45
    i32 128, label %45
  ]

45:                                               ; preds = %41, %41, %41
  store i8* null, i8** %4, align 8
  br label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %12, align 8
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

declare dso_local i64 @host_is_bigendian(...) #1

declare dso_local i32 @translate_data(%struct.kbuffer*, i8*, i8**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
