; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c___tracing_map_insert.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c___tracing_map_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map_elt = type { i32 }
%struct.tracing_map = type { i32, i32, i32, i32, i32, i32 }
%struct.tracing_map_entry = type { i32, %struct.tracing_map_elt* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracing_map_elt* (%struct.tracing_map*, i8*, i32)* @__tracing_map_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracing_map_elt* @__tracing_map_insert(%struct.tracing_map* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tracing_map_elt*, align 8
  %5 = alloca %struct.tracing_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tracing_map_entry*, align 8
  %13 = alloca %struct.tracing_map_elt*, align 8
  %14 = alloca %struct.tracing_map_elt*, align 8
  store %struct.tracing_map* %0, %struct.tracing_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %17 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @jhash(i8* %15, i32 %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %26 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = sub nsw i32 32, %28
  %30 = ashr i32 %24, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %23, %97, %142, %145
  %32 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %33 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %39 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.tracing_map_entry* @TRACING_MAP_ENTRY(i32 %40, i32 %41)
  store %struct.tracing_map_entry* %42, %struct.tracing_map_entry** %12, align 8
  %43 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %12, align 8
  %44 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %100

48:                                               ; preds = %31
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %100

52:                                               ; preds = %48
  %53 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %12, align 8
  %54 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %53, i32 0, i32 1
  %55 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %54, align 8
  %56 = call %struct.tracing_map_elt* @READ_ONCE(%struct.tracing_map_elt* %55)
  store %struct.tracing_map_elt* %56, %struct.tracing_map_elt** %13, align 8
  %57 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %13, align 8
  %58 = icmp ne %struct.tracing_map_elt* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %13, align 8
  %62 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %65 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @keys_match(i8* %60, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %74 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %73, i32 0, i32 2
  %75 = call i32 @atomic64_inc(i32* %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %13, align 8
  store %struct.tracing_map_elt* %77, %struct.tracing_map_elt** %4, align 8
  br label %149

78:                                               ; preds = %59, %52
  %79 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %13, align 8
  %80 = icmp ne %struct.tracing_map_elt* %79, null
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %90 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %95 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %94, i32 0, i32 4
  %96 = call i32 @atomic64_inc(i32* %95)
  br label %148

97:                                               ; preds = %85
  br label %31

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %48, %31
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %145, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %148

107:                                              ; preds = %103
  %108 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %12, align 8
  %109 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @cmpxchg(i32* %109, i32 0, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %142, label %113

113:                                              ; preds = %107
  %114 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %115 = call %struct.tracing_map_elt* @get_free_elt(%struct.tracing_map* %114)
  store %struct.tracing_map_elt* %115, %struct.tracing_map_elt** %14, align 8
  %116 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %14, align 8
  %117 = icmp ne %struct.tracing_map_elt* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %120 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %119, i32 0, i32 4
  %121 = call i32 @atomic64_inc(i32* %120)
  %122 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %12, align 8
  %123 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  br label %148

124:                                              ; preds = %113
  %125 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %14, align 8
  %126 = getelementptr inbounds %struct.tracing_map_elt, %struct.tracing_map_elt* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %130 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32 %127, i8* %128, i32 %131)
  %133 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %14, align 8
  %134 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %12, align 8
  %135 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %134, i32 0, i32 1
  store %struct.tracing_map_elt* %133, %struct.tracing_map_elt** %135, align 8
  %136 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  %137 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %136, i32 0, i32 2
  %138 = call i32 @atomic64_inc(i32* %137)
  %139 = load %struct.tracing_map_entry*, %struct.tracing_map_entry** %12, align 8
  %140 = getelementptr inbounds %struct.tracing_map_entry, %struct.tracing_map_entry* %139, i32 0, i32 1
  %141 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %140, align 8
  store %struct.tracing_map_elt* %141, %struct.tracing_map_elt** %4, align 8
  br label %149

142:                                              ; preds = %107
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %31

145:                                              ; preds = %100
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %31

148:                                              ; preds = %118, %106, %93
  store %struct.tracing_map_elt* null, %struct.tracing_map_elt** %4, align 8
  br label %149

149:                                              ; preds = %148, %124, %76
  %150 = load %struct.tracing_map_elt*, %struct.tracing_map_elt** %4, align 8
  ret %struct.tracing_map_elt* %150
}

declare dso_local i32 @jhash(i8*, i32, i32) #1

declare dso_local %struct.tracing_map_entry* @TRACING_MAP_ENTRY(i32, i32) #1

declare dso_local %struct.tracing_map_elt* @READ_ONCE(%struct.tracing_map_elt*) #1

declare dso_local i64 @keys_match(i8*, i32, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local %struct.tracing_map_elt* @get_free_elt(%struct.tracing_map*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
