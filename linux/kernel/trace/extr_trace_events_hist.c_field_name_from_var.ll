; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_field_name_from_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_field_name_from_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hist_trigger_data*, i8*)* @field_name_from_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @field_name_from_var(%struct.hist_trigger_data* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %55, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %12 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %10, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %9
  %19 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %20 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %18
  %34 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %35 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @contains_operator(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %33
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @is_var_ref(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %33
  br label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %3, align 8
  br label %59

54:                                               ; preds = %18
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %9

58:                                               ; preds = %9
  store i8* null, i8** %3, align 8
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i8*, i8** %3, align 8
  ret i8* %60
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @contains_operator(i8*) #1

declare dso_local i64 @is_var_ref(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
