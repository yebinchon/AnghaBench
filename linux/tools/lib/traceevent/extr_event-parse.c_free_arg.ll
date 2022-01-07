; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_free_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_free_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_print_arg = type { i32, %struct.tep_print_arg*, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.tep_print_arg* }
%struct.TYPE_14__ = type { %struct.tep_print_arg*, %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_13__ = type { %struct.tep_print_arg* }
%struct.TYPE_24__ = type { %struct.tep_print_arg* }
%struct.TYPE_23__ = type { %struct.tep_print_arg* }
%struct.TYPE_22__ = type { %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_21__ = type { %struct.tep_print_arg*, %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_20__ = type { %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_19__ = type { i32, %struct.tep_print_arg* }
%struct.TYPE_18__ = type { i32, %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_17__ = type { %struct.tep_print_arg* }
%struct.TYPE_16__ = type { %struct.tep_print_arg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_print_arg*)* @free_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_arg(%struct.tep_print_arg* %0) #0 {
  %2 = alloca %struct.tep_print_arg*, align 8
  %3 = alloca %struct.tep_print_arg*, align 8
  store %struct.tep_print_arg* %0, %struct.tep_print_arg** %2, align 8
  %4 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %5 = icmp ne %struct.tep_print_arg* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %137

7:                                                ; preds = %1
  %8 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %9 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %133 [
    i32 143, label %11
    i32 138, label %17
    i32 137, label %23
    i32 129, label %38
    i32 135, label %48
    i32 134, label %48
    i32 133, label %57
    i32 128, label %70
    i32 130, label %80
    i32 141, label %80
    i32 142, label %86
    i32 140, label %92
    i32 139, label %92
    i32 131, label %98
    i32 136, label %112
    i32 132, label %132
  ]

11:                                               ; preds = %7
  %12 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %13 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %12, i32 0, i32 13
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.tep_print_arg*, %struct.tep_print_arg** %14, align 8
  %16 = call i32 @free(%struct.tep_print_arg* %15)
  br label %134

17:                                               ; preds = %7
  %18 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %19 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %18, i32 0, i32 12
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.tep_print_arg*, %struct.tep_print_arg** %20, align 8
  %22 = call i32 @free(%struct.tep_print_arg* %21)
  br label %134

23:                                               ; preds = %7
  %24 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %25 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = load %struct.tep_print_arg*, %struct.tep_print_arg** %26, align 8
  call void @free_arg(%struct.tep_print_arg* %27)
  %28 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %29 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.tep_print_arg*, %struct.tep_print_arg** %30, align 8
  %32 = call i32 @free(%struct.tep_print_arg* %31)
  %33 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %34 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @free_flag_sym(i32 %36)
  br label %134

38:                                               ; preds = %7
  %39 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %40 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %39, i32 0, i32 10
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load %struct.tep_print_arg*, %struct.tep_print_arg** %41, align 8
  call void @free_arg(%struct.tep_print_arg* %42)
  %43 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %44 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @free_flag_sym(i32 %46)
  br label %134

48:                                               ; preds = %7, %7
  %49 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %50 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load %struct.tep_print_arg*, %struct.tep_print_arg** %51, align 8
  call void @free_arg(%struct.tep_print_arg* %52)
  %53 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %54 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load %struct.tep_print_arg*, %struct.tep_print_arg** %55, align 8
  call void @free_arg(%struct.tep_print_arg* %56)
  br label %134

57:                                               ; preds = %7
  %58 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %59 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  %61 = load %struct.tep_print_arg*, %struct.tep_print_arg** %60, align 8
  call void @free_arg(%struct.tep_print_arg* %61)
  %62 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %63 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load %struct.tep_print_arg*, %struct.tep_print_arg** %64, align 8
  call void @free_arg(%struct.tep_print_arg* %65)
  %66 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %67 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.tep_print_arg*, %struct.tep_print_arg** %68, align 8
  call void @free_arg(%struct.tep_print_arg* %69)
  br label %134

70:                                               ; preds = %7
  %71 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %72 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.tep_print_arg*, %struct.tep_print_arg** %73, align 8
  %75 = call i32 @free(%struct.tep_print_arg* %74)
  %76 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %77 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load %struct.tep_print_arg*, %struct.tep_print_arg** %78, align 8
  call void @free_arg(%struct.tep_print_arg* %79)
  br label %134

80:                                               ; preds = %7, %7
  %81 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %82 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load %struct.tep_print_arg*, %struct.tep_print_arg** %83, align 8
  %85 = call i32 @free(%struct.tep_print_arg* %84)
  br label %134

86:                                               ; preds = %7
  %87 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %88 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load %struct.tep_print_arg*, %struct.tep_print_arg** %89, align 8
  %91 = call i32 @free(%struct.tep_print_arg* %90)
  br label %134

92:                                               ; preds = %7, %7
  %93 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %94 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.tep_print_arg*, %struct.tep_print_arg** %95, align 8
  %97 = call i32 @free(%struct.tep_print_arg* %96)
  br label %134

98:                                               ; preds = %7
  %99 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %100 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load %struct.tep_print_arg*, %struct.tep_print_arg** %101, align 8
  %103 = call i32 @free(%struct.tep_print_arg* %102)
  %104 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %105 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load %struct.tep_print_arg*, %struct.tep_print_arg** %106, align 8
  call void @free_arg(%struct.tep_print_arg* %107)
  %108 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %109 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load %struct.tep_print_arg*, %struct.tep_print_arg** %110, align 8
  call void @free_arg(%struct.tep_print_arg* %111)
  br label %134

112:                                              ; preds = %7
  br label %113

113:                                              ; preds = %119, %112
  %114 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %115 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load %struct.tep_print_arg*, %struct.tep_print_arg** %116, align 8
  %118 = icmp ne %struct.tep_print_arg* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %121 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load %struct.tep_print_arg*, %struct.tep_print_arg** %122, align 8
  store %struct.tep_print_arg* %123, %struct.tep_print_arg** %3, align 8
  %124 = load %struct.tep_print_arg*, %struct.tep_print_arg** %3, align 8
  %125 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %124, i32 0, i32 1
  %126 = load %struct.tep_print_arg*, %struct.tep_print_arg** %125, align 8
  %127 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %128 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store %struct.tep_print_arg* %126, %struct.tep_print_arg** %129, align 8
  %130 = load %struct.tep_print_arg*, %struct.tep_print_arg** %3, align 8
  call void @free_arg(%struct.tep_print_arg* %130)
  br label %113

131:                                              ; preds = %113
  br label %134

132:                                              ; preds = %7
  br label %133

133:                                              ; preds = %7, %132
  br label %134

134:                                              ; preds = %133, %131, %98, %92, %86, %80, %70, %57, %48, %38, %23, %17, %11
  %135 = load %struct.tep_print_arg*, %struct.tep_print_arg** %2, align 8
  %136 = call i32 @free(%struct.tep_print_arg* %135)
  br label %137

137:                                              ; preds = %134, %6
  ret void
}

declare dso_local i32 @free(%struct.tep_print_arg*) #1

declare dso_local i32 @free_flag_sym(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
