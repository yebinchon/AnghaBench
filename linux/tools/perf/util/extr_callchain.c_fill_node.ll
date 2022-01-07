; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_fill_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_fill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_node = type { i32, i64 }
%struct.callchain_cursor = type { i64, i64 }
%struct.callchain_cursor_node = type { i32, i32, %struct.TYPE_6__, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.callchain_list = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Warning: empty node in callchain tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"not enough memory for the code path tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.callchain_node*, %struct.callchain_cursor*)* @fill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_node(%struct.callchain_node* %0, %struct.callchain_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.callchain_node*, align 8
  %5 = alloca %struct.callchain_cursor*, align 8
  %6 = alloca %struct.callchain_cursor_node*, align 8
  %7 = alloca %struct.callchain_list*, align 8
  store %struct.callchain_node* %0, %struct.callchain_node** %4, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %5, align 8
  %8 = load %struct.callchain_cursor*, %struct.callchain_cursor** %5, align 8
  %9 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.callchain_cursor*, %struct.callchain_cursor** %5, align 8
  %12 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = load %struct.callchain_node*, %struct.callchain_node** %4, align 8
  %16 = getelementptr inbounds %struct.callchain_node, %struct.callchain_node* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.callchain_node*, %struct.callchain_node** %4, align 8
  %18 = getelementptr inbounds %struct.callchain_node, %struct.callchain_node* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @pr_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load %struct.callchain_cursor*, %struct.callchain_cursor** %5, align 8
  %25 = call %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor* %24)
  store %struct.callchain_cursor_node* %25, %struct.callchain_cursor_node** %6, align 8
  br label %26

26:                                               ; preds = %124, %23
  %27 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %28 = icmp ne %struct.callchain_cursor_node* %27, null
  br i1 %28, label %29, label %134

29:                                               ; preds = %26
  %30 = call %struct.callchain_list* @zalloc(i32 48)
  store %struct.callchain_list* %30, %struct.callchain_list** %7, align 8
  %31 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %32 = icmp ne %struct.callchain_list* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %135

35:                                               ; preds = %29
  %36 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %37 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %40 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %42 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %45 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %48 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @map__get(i32 %49)
  %51 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %52 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %55 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %58 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %60 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %124

63:                                               ; preds = %35
  %64 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %65 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %67 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %63
  %71 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %72 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %75 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %81 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %84 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %90 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %89, i32 0, i32 2
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %93 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %92, i32 0, i32 7
  %94 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %95 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %94, i32 0, i32 2
  %96 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %97 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %100 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @branch_type_count(%struct.TYPE_5__* %93, %struct.TYPE_6__* %95, i32 %98, i32 %101)
  br label %123

103:                                              ; preds = %63
  %104 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %105 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %108 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %112 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %114 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %117 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %119 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %122 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %103, %91
  br label %124

124:                                              ; preds = %123, %35
  %125 = load %struct.callchain_list*, %struct.callchain_list** %7, align 8
  %126 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %125, i32 0, i32 3
  %127 = load %struct.callchain_node*, %struct.callchain_node** %4, align 8
  %128 = getelementptr inbounds %struct.callchain_node, %struct.callchain_node* %127, i32 0, i32 0
  %129 = call i32 @list_add_tail(i32* %126, i32* %128)
  %130 = load %struct.callchain_cursor*, %struct.callchain_cursor** %5, align 8
  %131 = call i32 @callchain_cursor_advance(%struct.callchain_cursor* %130)
  %132 = load %struct.callchain_cursor*, %struct.callchain_cursor** %5, align 8
  %133 = call %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor* %132)
  store %struct.callchain_cursor_node* %133, %struct.callchain_cursor_node** %6, align 8
  br label %26

134:                                              ; preds = %26
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %33
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local %struct.callchain_cursor_node* @callchain_cursor_current(%struct.callchain_cursor*) #1

declare dso_local %struct.callchain_list* @zalloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @map__get(i32) #1

declare dso_local i32 @branch_type_count(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @callchain_cursor_advance(%struct.callchain_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
