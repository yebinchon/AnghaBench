; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_compatible_keys.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_compatible_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, i32, %struct.hist_field** }
%struct.hist_field = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, %struct.hist_trigger_data*, i32)* @compatible_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compatible_keys(%struct.hist_trigger_data* %0, %struct.hist_trigger_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hist_field*, align 8
  %9 = alloca %struct.hist_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %5, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %17 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

23:                                               ; preds = %3
  %24 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %25 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %28 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %81, %23
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  %35 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %36 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %35, i32 0, i32 2
  %37 = load %struct.hist_field**, %struct.hist_field*** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %37, i64 %41
  %43 = load %struct.hist_field*, %struct.hist_field** %42, align 8
  store %struct.hist_field* %43, %struct.hist_field** %9, align 8
  %44 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %45 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %44, i32 0, i32 2
  %46 = load %struct.hist_field**, %struct.hist_field*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %46, i64 %50
  %52 = load %struct.hist_field*, %struct.hist_field** %51, align 8
  store %struct.hist_field* %52, %struct.hist_field** %8, align 8
  %53 = load %struct.hist_field*, %struct.hist_field** %9, align 8
  %54 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %57 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @strcmp(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %85

62:                                               ; preds = %34
  %63 = load %struct.hist_field*, %struct.hist_field** %9, align 8
  %64 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %67 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %85

71:                                               ; preds = %62
  %72 = load %struct.hist_field*, %struct.hist_field** %9, align 8
  %73 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hist_field*, %struct.hist_field** %8, align 8
  %76 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %85

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %30

84:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %79, %70, %61, %22
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
