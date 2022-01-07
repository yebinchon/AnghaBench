; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_filter_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_add_filter_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_filter_type = type { i32, i32*, i32 }
%struct.tep_event_filter = type { i32, i32, %struct.tep_filter_type* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tep_filter_type* (%struct.tep_event_filter*, i32)* @add_filter_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tep_filter_type* @add_filter_type(%struct.tep_event_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.tep_filter_type*, align 8
  %4 = alloca %struct.tep_event_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_filter_type*, align 8
  %7 = alloca i32, align 4
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter* %8, i32 %9)
  store %struct.tep_filter_type* %10, %struct.tep_filter_type** %6, align 8
  %11 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %12 = icmp ne %struct.tep_filter_type* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  store %struct.tep_filter_type* %14, %struct.tep_filter_type** %3, align 8
  br label %109

15:                                               ; preds = %2
  %16 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %17 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %16, i32 0, i32 2
  %18 = load %struct.tep_filter_type*, %struct.tep_filter_type** %17, align 8
  %19 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %20 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 24, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.tep_filter_type* @realloc(%struct.tep_filter_type* %18, i32 %25)
  store %struct.tep_filter_type* %26, %struct.tep_filter_type** %6, align 8
  %27 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %28 = icmp ne %struct.tep_filter_type* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  store %struct.tep_filter_type* null, %struct.tep_filter_type** %3, align 8
  br label %109

30:                                               ; preds = %15
  %31 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %32 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %33 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %32, i32 0, i32 2
  store %struct.tep_filter_type* %31, %struct.tep_filter_type** %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %53, %30
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %37 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %42 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %41, i32 0, i32 2
  %43 = load %struct.tep_filter_type*, %struct.tep_filter_type** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %43, i64 %45
  %47 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %56

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %34

56:                                               ; preds = %51, %34
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %59 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %64 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %63, i32 0, i32 2
  %65 = load %struct.tep_filter_type*, %struct.tep_filter_type** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %65, i64 %68
  %70 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %71 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %70, i32 0, i32 2
  %72 = load %struct.tep_filter_type*, %struct.tep_filter_type** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %72, i64 %74
  %76 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %77 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = mul i64 24, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memmove(%struct.tep_filter_type* %69, %struct.tep_filter_type* %75, i32 %83)
  br label %85

85:                                               ; preds = %62, %56
  %86 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %87 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %86, i32 0, i32 2
  %88 = load %struct.tep_filter_type*, %struct.tep_filter_type** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %88, i64 %90
  store %struct.tep_filter_type* %91, %struct.tep_filter_type** %6, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %94 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %96 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @tep_find_event(i32 %97, i32 %98)
  %100 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %101 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  %103 = getelementptr inbounds %struct.tep_filter_type, %struct.tep_filter_type* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load %struct.tep_event_filter*, %struct.tep_event_filter** %4, align 8
  %105 = getelementptr inbounds %struct.tep_event_filter, %struct.tep_event_filter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.tep_filter_type*, %struct.tep_filter_type** %6, align 8
  store %struct.tep_filter_type* %108, %struct.tep_filter_type** %3, align 8
  br label %109

109:                                              ; preds = %85, %29, %13
  %110 = load %struct.tep_filter_type*, %struct.tep_filter_type** %3, align 8
  ret %struct.tep_filter_type* %110
}

declare dso_local %struct.tep_filter_type* @find_filter_type(%struct.tep_event_filter*, i32) #1

declare dso_local %struct.tep_filter_type* @realloc(%struct.tep_filter_type*, i32) #1

declare dso_local i32 @memmove(%struct.tep_filter_type*, %struct.tep_filter_type*, i32) #1

declare dso_local i32 @tep_find_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
