; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_xarray.c___xas_next.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_xarray.c___xas_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@XA_CHUNK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__xas_next(%struct.xa_state* %0) #0 {
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
  %14 = add nsw i32 %13, 1
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
  br label %106

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
  br label %106

32:                                               ; preds = %23
  %33 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %34 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %37 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %40 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i64 @get_offset(i32 %38, %struct.TYPE_8__* %41)
  %43 = icmp ne i64 %35, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %46 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44, %32
  br label %50

50:                                               ; preds = %81, %49
  %51 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %52 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XA_CHUNK_SIZE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %58 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %64 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %66 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %69 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call %struct.TYPE_8__* @xa_parent(i32 %67, %struct.TYPE_8__* %70)
  %72 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %73 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %72, i32 0, i32 1
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  %74 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %75 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %56
  %79 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %80 = call i8* @set_bounds(%struct.xa_state* %79)
  store i8* %80, i8** %2, align 8
  br label %106

81:                                               ; preds = %56
  br label %50

82:                                               ; preds = %50
  br label %83

83:                                               ; preds = %99, %82
  %84 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %85 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %88 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %91 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @xa_entry(i32 %86, %struct.TYPE_8__* %89, i64 %92)
  store i8* %93, i8** %4, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @xa_is_node(i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %83
  %98 = load i8*, i8** %4, align 8
  store i8* %98, i8** %2, align 8
  br label %106

99:                                               ; preds = %83
  %100 = load i8*, i8** %4, align 8
  %101 = call %struct.TYPE_8__* @xa_to_node(i8* %100)
  %102 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %103 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %102, i32 0, i32 1
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %103, align 8
  %104 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %105 = call i32 @xas_set_offset(%struct.xa_state* %104)
  br label %83

106:                                              ; preds = %97, %78, %29, %20
  %107 = load i8*, i8** %2, align 8
  ret i8* %107
}

declare dso_local i32 @xas_frozen(%struct.TYPE_8__*) #1

declare dso_local i8* @set_bounds(%struct.xa_state*) #1

declare dso_local i64 @xas_not_node(%struct.TYPE_8__*) #1

declare dso_local i8* @xas_load(%struct.xa_state*) #1

declare dso_local i64 @get_offset(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @xa_parent(i32, %struct.TYPE_8__*) #1

declare dso_local i8* @xa_entry(i32, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @xa_is_node(i8*) #1

declare dso_local %struct.TYPE_8__* @xa_to_node(i8*) #1

declare dso_local i32 @xas_set_offset(%struct.xa_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
