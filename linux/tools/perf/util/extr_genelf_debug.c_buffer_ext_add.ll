; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_buffer_ext_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_buffer_ext_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_ext = type { i64, i64, i8* }

@BUFFER_EXT_DFL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_ext*, i8*, i64)* @buffer_ext_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_ext_add(%struct.buffer_ext* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_ext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.buffer_ext* %0, %struct.buffer_ext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %11 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %54, %3
  %14 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %15 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %23 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %26 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr i8, i8* %24, i64 %27
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @memcpy(i8* %28, i8* %29, i64 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %34 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %32
  store i64 %36, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %61

37:                                               ; preds = %13
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @BUFFER_EXT_DFL_SIZE, align 8
  store i64 %41, i64* %9, align 8
  br label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = shl i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %47 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i8* @realloc(i8* %48, i64 %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %61

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %57 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.buffer_ext*, %struct.buffer_ext** %5, align 8
  %60 = getelementptr inbounds %struct.buffer_ext, %struct.buffer_ext* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %13

61:                                               ; preds = %53, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
