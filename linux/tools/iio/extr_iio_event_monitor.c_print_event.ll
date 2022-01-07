; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_event_monitor.c_print_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_event_monitor.c_print_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_event_data = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unknown event: time: %lld, id: %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Event: time: %lld, type: %s\00", align 1
@iio_chan_type_name_spec = common dso_local global i32* null, align 8
@IIO_NO_MOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@iio_modifier_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c", channel: %d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c", evtype: %s\00", align 1
@iio_ev_type_text = common dso_local global i8** null, align 8
@IIO_EV_DIR_NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c", direction: %s\00", align 1
@iio_ev_dir_text = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_event_data*)* @print_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_event(%struct.iio_event_data* %0) #0 {
  %2 = alloca %struct.iio_event_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_event_data* %0, %struct.iio_event_data** %2, align 8
  %10 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %11 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IIO_EVENT_CODE_EXTRACT_CHAN_TYPE(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %15 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IIO_EVENT_CODE_EXTRACT_MODIFIER(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %19 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IIO_EVENT_CODE_EXTRACT_TYPE(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %23 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IIO_EVENT_CODE_EXTRACT_DIR(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %27 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IIO_EVENT_CODE_EXTRACT_CHAN(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %31 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IIO_EVENT_CODE_EXTRACT_CHAN2(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %35 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IIO_EVENT_CODE_EXTRACT_DIFF(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %39 = call i32 @event_is_known(%struct.iio_event_data* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* @stderr, align 4
  %43 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %44 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %47 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  br label %104

50:                                               ; preds = %1
  %51 = load %struct.iio_event_data*, %struct.iio_event_data** %2, align 8
  %52 = getelementptr inbounds %struct.iio_event_data, %struct.iio_event_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @iio_chan_type_name_spec, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @IIO_NO_MOD, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %50
  %64 = load i8**, i8*** @iio_modifier_names, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %63, %50
  %71 = load i32, i32* %7, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %78, %73
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i8**, i8*** @iio_ev_type_text, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @IIO_EV_DIR_NONE, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load i8**, i8*** @iio_ev_dir_text, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %95, %85
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %41
  ret void
}

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_CHAN_TYPE(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_MODIFIER(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_TYPE(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_DIR(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_CHAN(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_CHAN2(i32) #1

declare dso_local i32 @IIO_EVENT_CODE_EXTRACT_DIFF(i32) #1

declare dso_local i32 @event_is_known(%struct.iio_event_data*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
