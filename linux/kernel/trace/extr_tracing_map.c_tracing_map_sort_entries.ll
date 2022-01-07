; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_sort_entries.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_sort_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map = type { i32, i32, i32, i32 }
%struct.tracing_map_sort_key = type { i32 }
%struct.tracing_map_sort_entry = type { i32 }
%struct.tracing_map_entry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracing_map_sort_entries(%struct.tracing_map* %0, %struct.tracing_map_sort_key* %1, i32 %2, %struct.tracing_map_sort_entry*** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tracing_map*, align 8
  %7 = alloca %struct.tracing_map_sort_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tracing_map_sort_entry***, align 8
  %10 = alloca i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)*, align 8
  %11 = alloca %struct.tracing_map_sort_entry*, align 8
  %12 = alloca %struct.tracing_map_sort_entry**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tracing_map_entry*, align 8
  store %struct.tracing_map* %0, %struct.tracing_map** %6, align 8
  store %struct.tracing_map_sort_key* %1, %struct.tracing_map_sort_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tracing_map_sort_entry*** %3, %struct.tracing_map_sort_entry**** %9, align 8
  %17 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %18 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @array_size(i32 8, i32 %19)
  %21 = call %struct.tracing_map_sort_entry** @vmalloc(i32 %20)
  store %struct.tracing_map_sort_entry** %21, %struct.tracing_map_sort_entry*** %12, align 8
  %22 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %23 = icmp ne %struct.tracing_map_sort_entry** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %134

27:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %75, %27
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %31 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %28
  %35 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %36 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call %struct.tracing_map_entry* @TRACING_MAP_ENTRY(i32 %37, i32 %38)
  store %struct.tracing_map_entry* %39, %struct.tracing_map_entry** %16, align 8
  %40 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %16, align 8
  %41 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %16, align 8
  %46 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %34
  br label %75

50:                                               ; preds = %44
  %51 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %16, align 8
  %52 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %16, align 8
  %57 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call %struct.tracing_map_sort_entry* @create_sort_entry(i32 %55, %struct.TYPE_2__* %58)
  %60 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %60, i64 %62
  store %struct.tracing_map_sort_entry* %59, %struct.tracing_map_sort_entry** %63, align 8
  %64 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %64, i64 %67
  %69 = load %struct.tracing_map_sort_entry*, %struct.tracing_map_sort_entry** %68, align 8
  %70 = icmp ne %struct.tracing_map_sort_entry* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %50
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  br label %129

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %28

78:                                               ; preds = %28
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %15, align 4
  br label %129

82:                                               ; preds = %78
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %87 = load %struct.tracing_map_sort_entry***, %struct.tracing_map_sort_entry**** %9, align 8
  store %struct.tracing_map_sort_entry** %86, %struct.tracing_map_sort_entry*** %87, align 8
  store i32 1, i32* %5, align 4
  br label %134

88:                                               ; preds = %82
  %89 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %92 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @detect_dups(%struct.tracing_map_sort_entry** %89, i32 %90, i32 %93)
  %95 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %96 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %97 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %96, i64 0
  %98 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @is_key(%struct.tracing_map* %95, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_key, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %10, align 8
  br label %104

103:                                              ; preds = %88
  store i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* @cmp_entries_sum, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %10, align 8
  br label %104

104:                                              ; preds = %103, %102
  %105 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %106 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %107 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %106, i64 0
  %108 = call i32 @set_sort_key(%struct.tracing_map* %105, %struct.tracing_map_sort_key* %107)
  %109 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)*, i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)** %10, align 8
  %112 = bitcast i32 (%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**)* %111 to i32 (i8*, i8*)*
  %113 = call i32 @sort(%struct.tracing_map_sort_entry** %109, i32 %110, i32 8, i32 (i8*, i8*)* %112, i32* null)
  %114 = load i32, i32* %8, align 4
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %125

116:                                              ; preds = %104
  %117 = load %struct.tracing_map*, %struct.tracing_map** %6, align 8
  %118 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %121 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %120, i64 0
  %122 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %7, align 8
  %123 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %122, i64 1
  %124 = call i32 @sort_secondary(%struct.tracing_map* %117, %struct.tracing_map_sort_entry** %118, i32 %119, %struct.tracing_map_sort_key* %121, %struct.tracing_map_sort_key* %123)
  br label %125

125:                                              ; preds = %116, %104
  %126 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %127 = load %struct.tracing_map_sort_entry***, %struct.tracing_map_sort_entry**** %9, align 8
  store %struct.tracing_map_sort_entry** %126, %struct.tracing_map_sort_entry*** %127, align 8
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %5, align 4
  br label %134

129:                                              ; preds = %81, %71
  %130 = load %struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry*** %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @tracing_map_destroy_sort_entries(%struct.tracing_map_sort_entry** %130, i32 %131)
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %129, %125, %85, %24
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.tracing_map_sort_entry** @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local %struct.tracing_map_entry* @TRACING_MAP_ENTRY(i32, i32) #1

declare dso_local %struct.tracing_map_sort_entry* @create_sort_entry(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @detect_dups(%struct.tracing_map_sort_entry**, i32, i32) #1

declare dso_local i64 @is_key(%struct.tracing_map*, i32) #1

declare dso_local i32 @cmp_entries_key(%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**) #1

declare dso_local i32 @cmp_entries_sum(%struct.tracing_map_sort_entry**, %struct.tracing_map_sort_entry**) #1

declare dso_local i32 @set_sort_key(%struct.tracing_map*, %struct.tracing_map_sort_key*) #1

declare dso_local i32 @sort(%struct.tracing_map_sort_entry**, i32, i32, i32 (i8*, i8*)*, i32*) #1

declare dso_local i32 @sort_secondary(%struct.tracing_map*, %struct.tracing_map_sort_entry**, i32, %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key*) #1

declare dso_local i32 @tracing_map_destroy_sort_entries(%struct.tracing_map_sort_entry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
