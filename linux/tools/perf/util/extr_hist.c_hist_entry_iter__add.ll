; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry_iter__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hist_entry_iter__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry_iter = type { i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)*, %struct.TYPE_2__*, i64, i32, i32, i32 }
%struct.addr_location = type opaque
%struct.TYPE_2__ = type { i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i64 (%struct.hist_entry_iter*, %struct.addr_location.0*)* }
%struct.addr_location.0 = type { i32 }
%struct.map = type { i32 }

@callchain_cursor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hist_entry_iter__add(%struct.hist_entry_iter* %0, %struct.addr_location.0* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_entry_iter*, align 8
  %7 = alloca %struct.addr_location.0*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.map*, align 8
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %6, align 8
  store %struct.addr_location.0* %1, %struct.addr_location.0** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.map* null, %struct.map** %12, align 8
  %13 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %14 = icmp ne %struct.addr_location.0* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %17 = getelementptr inbounds %struct.addr_location.0, %struct.addr_location.0* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.map* @map__get(i32 %18)
  store %struct.map* %19, %struct.map** %12, align 8
  br label %20

20:                                               ; preds = %15, %4
  %21 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %22 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %25 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %24, i32 0, i32 4
  %26 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %27 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @sample__resolve_callchain(i32 %23, i32* @callchain_cursor, i32* %25, i32 %28, %struct.addr_location.0* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.map*, %struct.map** %12, align 8
  %36 = call i32 @map__put(%struct.map* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %150

38:                                               ; preds = %20
  %39 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %40 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)** %42, align 8
  %44 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %45 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %46 = call i32 %43(%struct.hist_entry_iter* %44, %struct.addr_location.0* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %133

50:                                               ; preds = %38
  %51 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %52 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)** %54, align 8
  %56 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %57 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %58 = call i32 %55(%struct.hist_entry_iter* %56, %struct.addr_location.0* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %133

62:                                               ; preds = %50
  %63 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %64 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %69 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %68, i32 0, i32 0
  %70 = load i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)** %69, align 8
  %71 = icmp ne i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %74 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %73, i32 0, i32 0
  %75 = load i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)** %74, align 8
  %76 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %77 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %78 = bitcast %struct.addr_location.0* %77 to %struct.addr_location*
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 %75(%struct.hist_entry_iter* %76, %struct.addr_location* %78, i32 1, i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %133

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %67, %62
  br label %86

86:                                               ; preds = %131, %85
  %87 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %88 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i64 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i64 (%struct.hist_entry_iter*, %struct.addr_location.0*)** %90, align 8
  %92 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %93 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %94 = call i64 %91(%struct.hist_entry_iter* %92, %struct.addr_location.0* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %132

96:                                               ; preds = %86
  %97 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %98 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)** %100, align 8
  %102 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %103 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %104 = call i32 %101(%struct.hist_entry_iter* %102, %struct.addr_location.0* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %132

108:                                              ; preds = %96
  %109 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %110 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %115 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %114, i32 0, i32 0
  %116 = load i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)** %115, align 8
  %117 = icmp ne i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %120 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %119, i32 0, i32 0
  %121 = load i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)** %120, align 8
  %122 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %123 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %124 = bitcast %struct.addr_location.0* %123 to %struct.addr_location*
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 %121(%struct.hist_entry_iter* %122, %struct.addr_location* %124, i32 0, i8* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %133

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %113, %108
  br label %86

132:                                              ; preds = %107, %86
  br label %133

133:                                              ; preds = %132, %129, %83, %61, %49
  %134 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %135 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)*, i32 (%struct.hist_entry_iter*, %struct.addr_location.0*)** %137, align 8
  %139 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %6, align 8
  %140 = load %struct.addr_location.0*, %struct.addr_location.0** %7, align 8
  %141 = call i32 %138(%struct.hist_entry_iter* %139, %struct.addr_location.0* %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %144, %133
  %147 = load %struct.map*, %struct.map** %12, align 8
  %148 = call i32 @map__put(%struct.map* %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %34
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.map* @map__get(i32) #1

declare dso_local i32 @sample__resolve_callchain(i32, i32*, i32*, i32, %struct.addr_location.0*, i32) #1

declare dso_local i32 @map__put(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
