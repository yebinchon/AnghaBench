; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___create_synth_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c___create_synth_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_field = type { i32 }
%struct.synth_event = type { i32 }

@SYNTH_FIELDS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@event_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8**)* @__create_synth_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__create_synth_event(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.synth_field*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.synth_event*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %17 = load i32, i32* @SYNTH_FIELDS_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.synth_field*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store %struct.synth_event* null, %struct.synth_event** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %153

32:                                               ; preds = %26
  %33 = call i32 @mutex_lock(i32* @event_mutex)
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.synth_field* @find_synth_event(i8* %34)
  %36 = bitcast %struct.synth_field* %35 to %struct.synth_event*
  store %struct.synth_event* %36, %struct.synth_event** %11, align 8
  %37 = load %struct.synth_event*, %struct.synth_event** %11, align 8
  %38 = icmp ne %struct.synth_event* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  br label %135

42:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %89, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  %49 = load i8**, i8*** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %89

57:                                               ; preds = %48
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @SYNTH_FIELDS_MAX, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %15, align 4
  br label %138

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i8**, i8*** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = call %struct.synth_field* @parse_synth_field(i32 %67, i8** %71, i32* %13)
  store %struct.synth_field* %72, %struct.synth_field** %8, align 8
  %73 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %74 = call i64 @IS_ERR(%struct.synth_field* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %78 = call i32 @PTR_ERR(%struct.synth_field* %77)
  store i32 %78, i32* %15, align 4
  br label %138

79:                                               ; preds = %64
  %80 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds %struct.synth_field*, %struct.synth_field** %20, i64 %83
  store %struct.synth_field* %80, %struct.synth_field** %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %79, %56
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %43

92:                                               ; preds = %43
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i8**, i8*** %7, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %15, align 4
  br label %138

107:                                              ; preds = %96, %92
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call %struct.synth_field* @alloc_synth_event(i8* %108, i32 %109, %struct.synth_field** %20)
  %111 = bitcast %struct.synth_field* %110 to %struct.synth_event*
  store %struct.synth_event* %111, %struct.synth_event** %11, align 8
  %112 = load %struct.synth_event*, %struct.synth_event** %11, align 8
  %113 = bitcast %struct.synth_event* %112 to %struct.synth_field*
  %114 = call i64 @IS_ERR(%struct.synth_field* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load %struct.synth_event*, %struct.synth_event** %11, align 8
  %118 = bitcast %struct.synth_event* %117 to %struct.synth_field*
  %119 = call i32 @PTR_ERR(%struct.synth_field* %118)
  store i32 %119, i32* %15, align 4
  store %struct.synth_event* null, %struct.synth_event** %11, align 8
  br label %138

120:                                              ; preds = %107
  %121 = load %struct.synth_event*, %struct.synth_event** %11, align 8
  %122 = bitcast %struct.synth_event* %121 to %struct.synth_field*
  %123 = call i32 @register_synth_event(%struct.synth_field* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = load %struct.synth_event*, %struct.synth_event** %11, align 8
  %128 = getelementptr inbounds %struct.synth_event, %struct.synth_event* %127, i32 0, i32 0
  %129 = call i32 @dyn_event_add(i32* %128)
  br label %134

130:                                              ; preds = %120
  %131 = load %struct.synth_event*, %struct.synth_event** %11, align 8
  %132 = bitcast %struct.synth_event* %131 to %struct.synth_field*
  %133 = call i32 @free_synth_event(%struct.synth_field* %132)
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %152, %134, %39
  %136 = call i32 @mutex_unlock(i32* @event_mutex)
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %153

138:                                              ; preds = %116, %104, %76, %61
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %149, %138
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.synth_field*, %struct.synth_field** %20, i64 %145
  %147 = load %struct.synth_field*, %struct.synth_field** %146, align 8
  %148 = call i32 @free_synth_field(%struct.synth_field* %147)
  br label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %139

152:                                              ; preds = %139
  br label %135

153:                                              ; preds = %135, %29
  %154 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.synth_field* @find_synth_event(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local %struct.synth_field* @parse_synth_field(i32, i8**, i32*) #2

declare dso_local i64 @IS_ERR(%struct.synth_field*) #2

declare dso_local i32 @PTR_ERR(%struct.synth_field*) #2

declare dso_local %struct.synth_field* @alloc_synth_event(i8*, i32, %struct.synth_field**) #2

declare dso_local i32 @register_synth_event(%struct.synth_field*) #2

declare dso_local i32 @dyn_event_add(i32*) #2

declare dso_local i32 @free_synth_event(%struct.synth_field*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @free_synth_field(%struct.synth_field*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
