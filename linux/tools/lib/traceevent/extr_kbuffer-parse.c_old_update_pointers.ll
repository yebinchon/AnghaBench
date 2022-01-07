; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_old_update_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_old_update_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32, i32, i32, i32, i32, i8* }

@TS_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kbuffer*)* @old_update_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_update_pointers(%struct.kbuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kbuffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.kbuffer* %0, %struct.kbuffer** %3, align 8
  %11 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %12 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %11, i32 0, i32 5
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %15 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %13, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i8* @read_4(%struct.kbuffer* %19, i8* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr i8, i8* %23, i64 4
  store i8* %24, i8** %10, align 8
  %25 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @type4host(%struct.kbuffer* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @len4host(%struct.kbuffer* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ts4host(%struct.kbuffer* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %73 [
    i32 130, label %35
    i32 129, label %41
    i32 128, label %57
  ]

35:                                               ; preds = %1
  %36 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %37 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %40 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %108

41:                                               ; preds = %1
  %42 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @read_4(%struct.kbuffer* %42, i8* %43)
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* @TS_SHIFT, align 8
  %47 = load i64, i64* %4, align 8
  %48 = shl i64 %47, %46
  store i64 %48, i64* %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr i8, i8* %55, i64 4
  store i8* %56, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %89

57:                                               ; preds = %1
  %58 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %59 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %62 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %64 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %67 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %69 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %72 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  store i32 -1, i32* %2, align 4
  br label %108

73:                                               ; preds = %1
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = mul i32 %77, 4
  store i32 %78, i32* %9, align 4
  br label %88

79:                                               ; preds = %73
  %80 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i8* @read_4(%struct.kbuffer* %80, i8* %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = sub i32 %84, 4
  store i32 %85, i32* %9, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr i8, i8* %86, i64 4
  store i8* %87, i8** %10, align 8
  br label %88

88:                                               ; preds = %79, %76
  br label %89

89:                                               ; preds = %88, %41
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %92 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = add i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @calc_index(%struct.kbuffer* %95, i8* %96)
  %98 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %99 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %101 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add i32 %102, %103
  %105 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  %106 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %89, %57, %35
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i8* @read_4(%struct.kbuffer*, i8*) #1

declare dso_local i32 @type4host(%struct.kbuffer*, i32) #1

declare dso_local i32 @len4host(%struct.kbuffer*, i32) #1

declare dso_local i32 @ts4host(%struct.kbuffer*, i32) #1

declare dso_local i32 @calc_index(%struct.kbuffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
