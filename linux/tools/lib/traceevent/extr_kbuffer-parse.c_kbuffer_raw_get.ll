; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_raw_get.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_raw_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32 }
%struct.kbuffer_raw_info = type { i32, i64, i32, i8* }

@KBUFFER_FL_LONG_8 = common dso_local global i32 0, align 4
@COMMIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kbuffer_raw_info* @kbuffer_raw_get(%struct.kbuffer* %0, i8* %1, %struct.kbuffer_raw_info* %2) #0 {
  %4 = alloca %struct.kbuffer_raw_info*, align 8
  %5 = alloca %struct.kbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kbuffer_raw_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.kbuffer* %0, %struct.kbuffer** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.kbuffer_raw_info* %2, %struct.kbuffer_raw_info** %7, align 8
  %15 = load %struct.kbuffer_raw_info*, %struct.kbuffer_raw_info** %7, align 8
  %16 = getelementptr inbounds %struct.kbuffer_raw_info, %struct.kbuffer_raw_info* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %14, align 8
  %18 = load %struct.kbuffer*, %struct.kbuffer** %5, align 8
  %19 = icmp ne %struct.kbuffer* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  store %struct.kbuffer_raw_info* null, %struct.kbuffer_raw_info** %4, align 8
  br label %76

24:                                               ; preds = %20
  %25 = load %struct.kbuffer*, %struct.kbuffer** %5, align 8
  %26 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @KBUFFER_FL_LONG_8, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 16, i32* %12, align 4
  br label %33

32:                                               ; preds = %24
  store i32 12, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.kbuffer*, %struct.kbuffer** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr i8, i8* %35, i64 8
  %37 = call i64 @read_long(%struct.kbuffer* %34, i8* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @COMMIT_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %33
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = icmp uge i8* %46, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45, %33
  store %struct.kbuffer_raw_info* null, %struct.kbuffer_raw_info** %4, align 8
  br label %76

56:                                               ; preds = %45
  %57 = load %struct.kbuffer*, %struct.kbuffer** %5, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @translate_data(%struct.kbuffer* %57, i8* %58, i8** %14, i64* %9, i32* %13)
  store i32 %59, i32* %10, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %60, i64 %62
  %64 = load %struct.kbuffer_raw_info*, %struct.kbuffer_raw_info** %7, align 8
  %65 = getelementptr inbounds %struct.kbuffer_raw_info, %struct.kbuffer_raw_info* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.kbuffer_raw_info*, %struct.kbuffer_raw_info** %7, align 8
  %68 = getelementptr inbounds %struct.kbuffer_raw_info, %struct.kbuffer_raw_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.kbuffer_raw_info*, %struct.kbuffer_raw_info** %7, align 8
  %71 = getelementptr inbounds %struct.kbuffer_raw_info, %struct.kbuffer_raw_info* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.kbuffer_raw_info*, %struct.kbuffer_raw_info** %7, align 8
  %74 = getelementptr inbounds %struct.kbuffer_raw_info, %struct.kbuffer_raw_info* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.kbuffer_raw_info*, %struct.kbuffer_raw_info** %7, align 8
  store %struct.kbuffer_raw_info* %75, %struct.kbuffer_raw_info** %4, align 8
  br label %76

76:                                               ; preds = %56, %55, %23
  %77 = load %struct.kbuffer_raw_info*, %struct.kbuffer_raw_info** %4, align 8
  ret %struct.kbuffer_raw_info* %77
}

declare dso_local i64 @read_long(%struct.kbuffer*, i8*) #1

declare dso_local i32 @translate_data(%struct.kbuffer*, i8*, i8**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
