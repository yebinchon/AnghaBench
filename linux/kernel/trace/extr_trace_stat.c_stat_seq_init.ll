; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stat.c_stat_seq_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stat.c_stat_seq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_session = type { i32, %struct.rb_root, %struct.tracer_stat* }
%struct.rb_root = type { i32 }
%struct.tracer_stat = type { i64, i8* (i8*, i32)*, i8* (%struct.tracer_stat*)* }

@dummy_cmp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stat_session*)* @stat_seq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_seq_init(%struct.stat_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat_session*, align 8
  %4 = alloca %struct.tracer_stat*, align 8
  %5 = alloca %struct.rb_root*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stat_session* %0, %struct.stat_session** %3, align 8
  %9 = load %struct.stat_session*, %struct.stat_session** %3, align 8
  %10 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %9, i32 0, i32 2
  %11 = load %struct.tracer_stat*, %struct.tracer_stat** %10, align 8
  store %struct.tracer_stat* %11, %struct.tracer_stat** %4, align 8
  %12 = load %struct.stat_session*, %struct.stat_session** %3, align 8
  %13 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %12, i32 0, i32 1
  store %struct.rb_root* %13, %struct.rb_root** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.stat_session*, %struct.stat_session** %3, align 8
  %15 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.stat_session*, %struct.stat_session** %3, align 8
  %18 = call i32 @__reset_stat_session(%struct.stat_session* %17)
  %19 = load %struct.tracer_stat*, %struct.tracer_stat** %4, align 8
  %20 = getelementptr inbounds %struct.tracer_stat, %struct.tracer_stat* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* @dummy_cmp, align 8
  %25 = load %struct.tracer_stat*, %struct.tracer_stat** %4, align 8
  %26 = getelementptr inbounds %struct.tracer_stat, %struct.tracer_stat* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.tracer_stat*, %struct.tracer_stat** %4, align 8
  %29 = getelementptr inbounds %struct.tracer_stat, %struct.tracer_stat* %28, i32 0, i32 2
  %30 = load i8* (%struct.tracer_stat*)*, i8* (%struct.tracer_stat*)** %29, align 8
  %31 = load %struct.tracer_stat*, %struct.tracer_stat** %4, align 8
  %32 = call i8* %30(%struct.tracer_stat* %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %72

36:                                               ; preds = %27
  %37 = load %struct.rb_root*, %struct.rb_root** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.tracer_stat*, %struct.tracer_stat** %4, align 8
  %40 = getelementptr inbounds %struct.tracer_stat, %struct.tracer_stat* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @insert_stat(%struct.rb_root* %37, i8* %38, i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %72

46:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load %struct.tracer_stat*, %struct.tracer_stat** %4, align 8
  %49 = getelementptr inbounds %struct.tracer_stat, %struct.tracer_stat* %48, i32 0, i32 1
  %50 = load i8* (i8*, i32)*, i8* (i8*, i32)** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i8* %50(i8* %51, i32 %52)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %71

57:                                               ; preds = %47
  %58 = load %struct.rb_root*, %struct.rb_root** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.tracer_stat*, %struct.tracer_stat** %4, align 8
  %61 = getelementptr inbounds %struct.tracer_stat, %struct.tracer_stat* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @insert_stat(%struct.rb_root* %58, i8* %59, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %77

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %47

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %45, %35
  %73 = load %struct.stat_session*, %struct.stat_session** %3, align 8
  %74 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %84

77:                                               ; preds = %66
  %78 = load %struct.stat_session*, %struct.stat_session** %3, align 8
  %79 = call i32 @__reset_stat_session(%struct.stat_session* %78)
  %80 = load %struct.stat_session*, %struct.stat_session** %3, align 8
  %81 = getelementptr inbounds %struct.stat_session, %struct.stat_session* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__reset_stat_session(%struct.stat_session*) #1

declare dso_local i32 @insert_stat(%struct.rb_root*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
