; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_scan_block.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_scan_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i64, i32 }

@BYTES_PER_POINTER = common dso_local global i8* null, align 8
@kmemleak_lock = common dso_local global i32 0, align 4
@min_addr = common dso_local global i64 0, align 8
@max_addr = common dso_local global i64 0, align 8
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.kmemleak_object*)* @scan_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_block(i8* %0, i8* %1, %struct.kmemleak_object* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kmemleak_object*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.kmemleak_object*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.kmemleak_object* %2, %struct.kmemleak_object** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** @BYTES_PER_POINTER, align 8
  %17 = call i64* @PTR_ALIGN(i8* %15, i8* %16)
  store i64* %17, i64** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** @BYTES_PER_POINTER, align 8
  %20 = getelementptr i8, i8* %19, i64 -1
  %21 = ptrtoint i8* %18 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @read_lock_irqsave(i32* @kmemleak_lock, i64 %25)
  %27 = load i64*, i64** %8, align 8
  store i64* %27, i64** %7, align 8
  br label %28

28:                                               ; preds = %106, %3
  %29 = load i64*, i64** %7, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = icmp ult i64* %29, %30
  br i1 %31, label %32, label %109

32:                                               ; preds = %28
  %33 = call i64 (...) @scan_should_stop()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %109

36:                                               ; preds = %32
  %37 = call i32 (...) @kasan_disable_current()
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %13, align 8
  %40 = call i32 (...) @kasan_enable_current()
  %41 = load i64, i64* %13, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i64 @kasan_reset_tag(i8* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @min_addr, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @max_addr, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %36
  br label %106

52:                                               ; preds = %47
  %53 = load i64, i64* %13, align 8
  %54 = call %struct.kmemleak_object* @lookup_object(i64 %53, i32 1)
  store %struct.kmemleak_object* %54, %struct.kmemleak_object** %12, align 8
  %55 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %56 = icmp ne %struct.kmemleak_object* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %106

58:                                               ; preds = %52
  %59 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %60 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  %61 = icmp eq %struct.kmemleak_object* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %106

63:                                               ; preds = %58
  %64 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %65 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %64, i32 0, i32 1
  %66 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %67 = call i32 @spin_lock_nested(i32* %65, i32 %66)
  %68 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %69 = call i64 @color_gray(%struct.kmemleak_object* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %73 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  br label %78

75:                                               ; preds = %63
  store i64 0, i64* %14, align 8
  %76 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %77 = call i32 @update_refs(%struct.kmemleak_object* %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %80 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load i64, i64* %14, align 8
  %86 = call %struct.kmemleak_object* @lookup_object(i64 %85, i32 0)
  store %struct.kmemleak_object* %86, %struct.kmemleak_object** %12, align 8
  %87 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %88 = icmp ne %struct.kmemleak_object* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %106

90:                                               ; preds = %84
  %91 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %92 = load %struct.kmemleak_object*, %struct.kmemleak_object** %6, align 8
  %93 = icmp eq %struct.kmemleak_object* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %106

95:                                               ; preds = %90
  %96 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %97 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %96, i32 0, i32 1
  %98 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %99 = call i32 @spin_lock_nested(i32* %97, i32 %98)
  %100 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %101 = call i32 @update_refs(%struct.kmemleak_object* %100)
  %102 = load %struct.kmemleak_object*, %struct.kmemleak_object** %12, align 8
  %103 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %102, i32 0, i32 1
  %104 = call i32 @spin_unlock(i32* %103)
  br label %105

105:                                              ; preds = %95, %78
  br label %106

106:                                              ; preds = %105, %94, %89, %62, %57, %51
  %107 = load i64*, i64** %7, align 8
  %108 = getelementptr inbounds i64, i64* %107, i32 1
  store i64* %108, i64** %7, align 8
  br label %28

109:                                              ; preds = %35, %28
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @read_unlock_irqrestore(i32* @kmemleak_lock, i64 %110)
  ret void
}

declare dso_local i64* @PTR_ALIGN(i8*, i8*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @scan_should_stop(...) #1

declare dso_local i32 @kasan_disable_current(...) #1

declare dso_local i32 @kasan_enable_current(...) #1

declare dso_local i64 @kasan_reset_tag(i8*) #1

declare dso_local %struct.kmemleak_object* @lookup_object(i64, i32) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i64 @color_gray(%struct.kmemleak_object*) #1

declare dso_local i32 @update_refs(%struct.kmemleak_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
