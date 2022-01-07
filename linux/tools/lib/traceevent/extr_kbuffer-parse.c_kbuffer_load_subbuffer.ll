; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_load_subbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_load_subbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32, i32, i32, i32, i64, i64, i8*, i64, i32, i8* }

@KBUFFER_FL_LONG_8 = common dso_local global i32 0, align 4
@COMMIT_MASK = common dso_local global i32 0, align 4
@MISSING_EVENTS = common dso_local global i64 0, align 8
@MISSING_STORED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kbuffer_load_subbuffer(%struct.kbuffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kbuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.kbuffer* %0, %struct.kbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %10 = icmp ne %struct.kbuffer* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %97

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %18 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %17, i32 0, i32 9
  store i8* %16, i8** %18, align 8
  %19 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @read_8(%struct.kbuffer* %19, i8* %20)
  %22 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %23 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr i8, i8* %24, i64 8
  store i8* %25, i8** %7, align 8
  %26 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %27 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %29 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @KBUFFER_FL_LONG_8, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %36 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %35, i32 0, i32 1
  store i32 16, i32* %36, align 4
  br label %40

37:                                               ; preds = %15
  %38 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %39 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %38, i32 0, i32 1
  store i32 12, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %43 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %41, i64 %45
  %47 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %48 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @read_long(%struct.kbuffer* %49, i8* %50)
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @COMMIT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %58 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @MISSING_EVENTS, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %40
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @MISSING_STORED, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %70 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %73 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = getelementptr i8, i8* %71, i64 %75
  store i8* %76, i8** %7, align 8
  %77 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @read_long(%struct.kbuffer* %77, i8* %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %82 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %63
  %84 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %85 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %84, i32 0, i32 3
  store i32 -1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %68
  br label %90

87:                                               ; preds = %40
  %88 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %89 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %86
  %91 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %92 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %94 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.kbuffer*, %struct.kbuffer** %4, align 8
  %96 = call i32 @next_event(%struct.kbuffer* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %90, %14
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @read_8(%struct.kbuffer*, i8*) #1

declare dso_local i8* @read_long(%struct.kbuffer*, i8*) #1

declare dso_local i32 @next_event(%struct.kbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
