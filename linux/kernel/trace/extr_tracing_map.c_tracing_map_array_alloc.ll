; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_array_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_array_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_array = type { i32, i32, i32, i32, i32, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tracing_map_array* @tracing_map_array_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tracing_map_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tracing_map_array*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tracing_map_array* @kzalloc(i32 32, i32 %8)
  store %struct.tracing_map_array* %9, %struct.tracing_map_array** %6, align 8
  %10 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %11 = icmp ne %struct.tracing_map_array* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.tracing_map_array* null, %struct.tracing_map_array** %3, align 8
  br label %107

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @roundup_pow_of_two(i32 %14)
  %16 = sub i32 %15, 1
  %17 = call i8* @fls(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %20 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %23 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 1, %24
  %26 = sdiv i32 %21, %25
  %27 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %28 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %31 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = udiv i32 %29, %32
  %34 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %35 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %37 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %13
  %41 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %42 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %13
  %44 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %45 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @fls(i32 %46)
  %48 = getelementptr i8, i8* %47, i64 -1
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %51 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %53 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 1, %54
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %58 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %60 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8** @kcalloc(i32 %61, i32 8, i32 %62)
  %64 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %65 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %64, i32 0, i32 5
  store i8** %63, i8*** %65, align 8
  %66 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %67 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %66, i32 0, i32 5
  %68 = load i8**, i8*** %67, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %43
  br label %104

71:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %75 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i64 @get_zeroed_page(i32 %79)
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %83 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %82, i32 0, i32 5
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %81, i8** %87, align 8
  %88 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %89 = getelementptr inbounds %struct.tracing_map_array, %struct.tracing_map_array* %88, i32 0, i32 5
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %78
  br label %104

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %72

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %104, %101
  %103 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  store %struct.tracing_map_array* %103, %struct.tracing_map_array** %3, align 8
  br label %107

104:                                              ; preds = %96, %70
  %105 = load %struct.tracing_map_array*, %struct.tracing_map_array** %6, align 8
  %106 = call i32 @tracing_map_array_free(%struct.tracing_map_array* %105)
  store %struct.tracing_map_array* null, %struct.tracing_map_array** %6, align 8
  br label %102

107:                                              ; preds = %102, %12
  %108 = load %struct.tracing_map_array*, %struct.tracing_map_array** %3, align 8
  ret %struct.tracing_map_array* %108
}

declare dso_local %struct.tracing_map_array* @kzalloc(i32, i32) #1

declare dso_local i8* @fls(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @tracing_map_array_free(%struct.tracing_map_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
