; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_elt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_elt = type { i8*, i8*, i8*, i8*, %struct.tracing_map* }
%struct.tracing_map = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tracing_map_elt*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracing_map_elt* (%struct.tracing_map*)* @tracing_map_elt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracing_map_elt* @tracing_map_elt_alloc(%struct.tracing_map* %0) #0 {
  %2 = alloca %struct.tracing_map_elt*, align 8
  %3 = alloca %struct.tracing_map*, align 8
  %4 = alloca %struct.tracing_map_elt*, align 8
  %5 = alloca i32, align 4
  store %struct.tracing_map* %0, %struct.tracing_map** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 40, i32 %6)
  %8 = bitcast i8* %7 to %struct.tracing_map_elt*
  store %struct.tracing_map_elt* %8, %struct.tracing_map_elt** %4, align 8
  %9 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %10 = icmp ne %struct.tracing_map_elt* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.tracing_map_elt* @ERR_PTR(i32 %13)
  store %struct.tracing_map_elt* %14, %struct.tracing_map_elt** %2, align 8
  br label %111

15:                                               ; preds = %1
  %16 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %17 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %18 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %17, i32 0, i32 4
  store %struct.tracing_map* %16, %struct.tracing_map** %18, align 8
  %19 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %20 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %25 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %27 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %106

33:                                               ; preds = %15
  %34 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %35 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 1, i32 %37)
  %39 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %40 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %42 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %106

48:                                               ; preds = %33
  %49 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %50 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kcalloc(i32 %51, i32 1, i32 %52)
  %54 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %55 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %57 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %106

63:                                               ; preds = %48
  %64 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %65 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kcalloc(i32 %66, i32 1, i32 %67)
  %69 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %70 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %72 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %106

78:                                               ; preds = %63
  %79 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %80 = call i32 @tracing_map_elt_init_fields(%struct.tracing_map_elt* %79)
  %81 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %82 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = icmp ne %struct.TYPE_2__* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %78
  %86 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %87 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %89, align 8
  %91 = icmp ne i32 (%struct.tracing_map_elt*)* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load %struct.tracing_map*, %struct.tracing_map** %3, align 8
  %94 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.tracing_map_elt*)*, i32 (%struct.tracing_map_elt*)** %96, align 8
  %98 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %99 = call i32 %97(%struct.tracing_map_elt* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %106

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %85, %78
  %105 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  store %struct.tracing_map_elt* %105, %struct.tracing_map_elt** %2, align 8
  br label %111

106:                                              ; preds = %102, %75, %60, %45, %30
  %107 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  %108 = call i32 @tracing_map_elt_free(%struct.tracing_map_elt* %107)
  %109 = load i32, i32* %5, align 4
  %110 = call %struct.tracing_map_elt* @ERR_PTR(i32 %109)
  store %struct.tracing_map_elt* %110, %struct.tracing_map_elt** %2, align 8
  br label %111

111:                                              ; preds = %106, %104, %11
  %112 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %2, align 8
  ret %struct.tracing_map_elt* %112
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.tracing_map_elt* @ERR_PTR(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @tracing_map_elt_init_fields(%struct.tracing_map_elt*) #1

declare dso_local i32 @tracing_map_elt_free(%struct.tracing_map_elt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
