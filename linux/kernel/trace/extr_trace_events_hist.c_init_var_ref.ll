; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_init_var_ref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_init_var_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, i8*, i8*, i8*, i8*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@HIST_FIELD_FL_TIMESTAMP = common dso_local global i32 0, align 4
@HIST_FIELD_FL_TIMESTAMP_USECS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_field*, %struct.hist_field*, i8*, i8*)* @init_var_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_var_ref(%struct.hist_field* %0, %struct.hist_field* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hist_field*, align 8
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hist_field* %0, %struct.hist_field** %6, align 8
  store %struct.hist_field* %1, %struct.hist_field** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %12 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %16 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %19 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %22 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %25 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %28 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %30 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %33 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %35 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HIST_FIELD_FL_TIMESTAMP, align 4
  %38 = load i32, i32* @HIST_FIELD_FL_TIMESTAMP_USECS, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %42 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %4
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kstrdup(i8* %48, i32 %49)
  %51 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %52 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %54 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %154

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %4
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kstrdup(i8* %65, i32 %66)
  %68 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %69 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %71 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %141

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %61
  %79 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %80 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %86 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @kstrdup(i8* %88, i32 %89)
  %91 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %92 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %94 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %84
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %10, align 4
  br label %141

100:                                              ; preds = %84
  br label %123

101:                                              ; preds = %78
  %102 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %103 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %108 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i8* @kstrdup(i8* %109, i32 %110)
  %112 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %113 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %112, i32 0, i32 3
  store i8* %111, i8** %113, align 8
  %114 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %115 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %106
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %141

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %101
  br label %123

123:                                              ; preds = %122, %100
  %124 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  %125 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kstrdup(i8* %126, i32 %127)
  %129 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %130 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %132 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %131, i32 0, i32 4
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %141

138:                                              ; preds = %123
  br label %139

139:                                              ; preds = %141, %138
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %5, align 4
  br label %154

141:                                              ; preds = %135, %118, %97, %74
  %142 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %143 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @kfree(i8* %144)
  %146 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %147 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @kfree(i8* %148)
  %150 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  %151 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @kfree(i8* %152)
  br label %139

154:                                              ; preds = %139, %57
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
