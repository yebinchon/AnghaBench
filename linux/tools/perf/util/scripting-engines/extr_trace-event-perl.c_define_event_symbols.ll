; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_event_symbols.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_event_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_print_arg = type { i32, %struct.tep_print_arg*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { %struct.tep_print_arg*, %struct.tep_print_arg*, i32 }
%struct.TYPE_15__ = type { %struct.tep_print_arg* }
%struct.TYPE_14__ = type { %struct.tep_print_arg*, %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_13__ = type { %struct.tep_print_arg*, %struct.tep_print_arg* }
%struct.TYPE_12__ = type { i32, %struct.tep_print_arg* }
%struct.TYPE_11__ = type { i32, i32, %struct.tep_print_arg* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@cur_field_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@zero_flag_atom = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported print arg type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_event*, i8*, %struct.tep_print_arg*)* @define_event_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_event_symbols(%struct.tep_event* %0, i8* %1, %struct.tep_print_arg* %2) #0 {
  %4 = alloca %struct.tep_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tep_print_arg*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.tep_print_arg* %2, %struct.tep_print_arg** %6, align 8
  %7 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %8 = icmp eq %struct.tep_print_arg* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %144

10:                                               ; preds = %3
  %11 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %12 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %131 [
    i32 132, label %14
    i32 143, label %15
    i32 138, label %23
    i32 137, label %31
    i32 129, label %52
    i32 135, label %69
    i32 134, label %69
    i32 133, label %82
    i32 141, label %101
    i32 140, label %101
    i32 139, label %101
    i32 130, label %101
    i32 142, label %101
    i32 128, label %102
    i32 131, label %109
    i32 136, label %130
  ]

14:                                               ; preds = %10
  br label %133

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @cur_field_name, align 4
  %18 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %19 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @define_flag_value(i8* %16, i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* @zero_flag_atom, align 4
  br label %133

23:                                               ; preds = %10
  %24 = load i32, i32* @cur_field_name, align 4
  %25 = call i32 @free(i32 %24)
  %26 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %27 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strdup(i32 %29)
  store i32 %30, i32* @cur_field_name, align 4
  br label %133

31:                                               ; preds = %10
  %32 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %35 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load %struct.tep_print_arg*, %struct.tep_print_arg** %36, align 8
  call void @define_event_symbols(%struct.tep_event* %32, i8* %33, %struct.tep_print_arg* %37)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @cur_field_name, align 4
  %40 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %41 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @define_flag_field(i8* %38, i32 %39, i32 %43)
  %45 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %46 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @cur_field_name, align 4
  %51 = call i32 @define_flag_values(i32 %48, i8* %49, i32 %50)
  br label %133

52:                                               ; preds = %10
  %53 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %56 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.tep_print_arg*, %struct.tep_print_arg** %57, align 8
  call void @define_event_symbols(%struct.tep_event* %53, i8* %54, %struct.tep_print_arg* %58)
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @cur_field_name, align 4
  %61 = call i32 @define_symbolic_field(i8* %59, i32 %60)
  %62 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %63 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* @cur_field_name, align 4
  %68 = call i32 @define_symbolic_values(i32 %65, i8* %66, i32 %67)
  br label %133

69:                                               ; preds = %10, %10
  %70 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %73 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.tep_print_arg*, %struct.tep_print_arg** %74, align 8
  call void @define_event_symbols(%struct.tep_event* %70, i8* %71, %struct.tep_print_arg* %75)
  %76 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %79 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.tep_print_arg*, %struct.tep_print_arg** %80, align 8
  call void @define_event_symbols(%struct.tep_event* %76, i8* %77, %struct.tep_print_arg* %81)
  br label %133

82:                                               ; preds = %10
  %83 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %86 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load %struct.tep_print_arg*, %struct.tep_print_arg** %87, align 8
  call void @define_event_symbols(%struct.tep_event* %83, i8* %84, %struct.tep_print_arg* %88)
  %89 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %92 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.tep_print_arg*, %struct.tep_print_arg** %93, align 8
  call void @define_event_symbols(%struct.tep_event* %89, i8* %90, %struct.tep_print_arg* %94)
  %95 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %98 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.tep_print_arg*, %struct.tep_print_arg** %99, align 8
  call void @define_event_symbols(%struct.tep_event* %95, i8* %96, %struct.tep_print_arg* %100)
  br label %133

101:                                              ; preds = %10, %10, %10, %10, %10
  br label %133

102:                                              ; preds = %10
  %103 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %106 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load %struct.tep_print_arg*, %struct.tep_print_arg** %107, align 8
  call void @define_event_symbols(%struct.tep_event* %103, i8* %104, %struct.tep_print_arg* %108)
  br label %133

109:                                              ; preds = %10
  %110 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %111 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @strcmp(i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 1, i32* @zero_flag_atom, align 4
  br label %117

117:                                              ; preds = %116, %109
  %118 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %121 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.tep_print_arg*, %struct.tep_print_arg** %122, align 8
  call void @define_event_symbols(%struct.tep_event* %118, i8* %119, %struct.tep_print_arg* %123)
  %124 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %127 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load %struct.tep_print_arg*, %struct.tep_print_arg** %128, align 8
  call void @define_event_symbols(%struct.tep_event* %124, i8* %125, %struct.tep_print_arg* %129)
  br label %133

130:                                              ; preds = %10
  br label %131

131:                                              ; preds = %10, %130
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %144

133:                                              ; preds = %117, %102, %101, %82, %69, %52, %31, %23, %15, %14
  %134 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %135 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %134, i32 0, i32 1
  %136 = load %struct.tep_print_arg*, %struct.tep_print_arg** %135, align 8
  %137 = icmp ne %struct.tep_print_arg* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.tep_event*, %struct.tep_event** %4, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = load %struct.tep_print_arg*, %struct.tep_print_arg** %6, align 8
  %142 = getelementptr inbounds %struct.tep_print_arg, %struct.tep_print_arg* %141, i32 0, i32 1
  %143 = load %struct.tep_print_arg*, %struct.tep_print_arg** %142, align 8
  call void @define_event_symbols(%struct.tep_event* %139, i8* %140, %struct.tep_print_arg* %143)
  br label %144

144:                                              ; preds = %9, %131, %138, %133
  ret void
}

declare dso_local i32 @define_flag_value(i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @define_flag_field(i8*, i32, i32) #1

declare dso_local i32 @define_flag_values(i32, i8*, i32) #1

declare dso_local i32 @define_symbolic_field(i8*, i32) #1

declare dso_local i32 @define_symbolic_values(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
