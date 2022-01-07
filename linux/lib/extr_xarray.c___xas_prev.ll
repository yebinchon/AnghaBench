; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c___xas_prev.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c___xas_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__xas_prev(%struct.xa_state* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca i8*, align 8
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  %5 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %6 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call i32 @xas_frozen(%struct.TYPE_8__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %12 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %17 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %22 = call i8* @set_bounds(%struct.xa_state* %21)
  store i8* %22, i8** %2, align 8
  br label %105

23:                                               ; preds = %15
  %24 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %25 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i64 @xas_not_node(%struct.TYPE_8__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %31 = call i8* @xas_load(%struct.xa_state* %30)
  store i8* %31, i8** %2, align 8
  br label %105

32:                                               ; preds = %23
  %33 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %34 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %37 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %40 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @get_offset(i32 %38, %struct.TYPE_8__* %41)
  %43 = icmp ne i32 %35, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %46 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %32
  br label %50

50:                                               ; preds = %80, %49
  %51 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %52 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %81

55:                                               ; preds = %50
  %56 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %57 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %63 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %65 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %68 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call %struct.TYPE_8__* @xa_parent(i32 %66, %struct.TYPE_8__* %69)
  %71 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %72 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %71, i32 0, i32 1
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %72, align 8
  %73 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %74 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %55
  %78 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %79 = call i8* @set_bounds(%struct.xa_state* %78)
  store i8* %79, i8** %2, align 8
  br label %105

80:                                               ; preds = %55
  br label %50

81:                                               ; preds = %50
  br label %82

82:                                               ; preds = %98, %81
  %83 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %84 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %87 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %90 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @xa_entry(i32 %85, %struct.TYPE_8__* %88, i32 %91)
  store i8* %92, i8** %4, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @xa_is_node(i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %82
  %97 = load i8*, i8** %4, align 8
  store i8* %97, i8** %2, align 8
  br label %105

98:                                               ; preds = %82
  %99 = load i8*, i8** %4, align 8
  %100 = call %struct.TYPE_8__* @xa_to_node(i8* %99)
  %101 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %102 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %101, i32 0, i32 1
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %102, align 8
  %103 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %104 = call i32 @xas_set_offset(%struct.xa_state* %103)
  br label %82

105:                                              ; preds = %96, %77, %29, %20
  %106 = load i8*, i8** %2, align 8
  ret i8* %106
}

declare dso_local i32 @xas_frozen(%struct.TYPE_8__*) #1

declare dso_local i8* @set_bounds(%struct.xa_state*) #1

declare dso_local i64 @xas_not_node(%struct.TYPE_8__*) #1

declare dso_local i8* @xas_load(%struct.xa_state*) #1

declare dso_local i32 @get_offset(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @xa_parent(i32, %struct.TYPE_8__*) #1

declare dso_local i8* @xa_entry(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @xa_is_node(i8*) #1

declare dso_local %struct.TYPE_8__* @xa_to_node(i8*) #1

declare dso_local i32 @xas_set_offset(%struct.xa_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
