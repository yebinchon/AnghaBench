; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_process_next.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_process_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i8**, i8**, i8** }

@INDEX_NOT_CHECKED = common dso_local global i8* null, align 8
@OPS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*)* @process_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_next(%struct.sw842_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sw842_param*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sw842_param* %0, %struct.sw842_param** %3, align 8
  %6 = load i8*, i8** @INDEX_NOT_CHECKED, align 8
  %7 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %8 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %7, i32 0, i32 2
  %9 = load i8**, i8*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  store i8* %6, i8** %10, align 8
  %11 = load i8*, i8** @INDEX_NOT_CHECKED, align 8
  %12 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %13 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load i8*, i8** @INDEX_NOT_CHECKED, align 8
  %17 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %18 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* %16, i8** %20, align 8
  %21 = load i8*, i8** @INDEX_NOT_CHECKED, align 8
  %22 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %23 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %21, i8** %25, align 8
  %26 = load i8*, i8** @INDEX_NOT_CHECKED, align 8
  %27 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %28 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* %26, i8** %30, align 8
  %31 = load i8*, i8** @INDEX_NOT_CHECKED, align 8
  %32 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %33 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8* %31, i8** %35, align 8
  %36 = load i8*, i8** @INDEX_NOT_CHECKED, align 8
  %37 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %38 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  store i8* %36, i8** %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %53, %1
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @OPS_MAX, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @check_template(%struct.sw842_param* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %41

56:                                               ; preds = %51, %41
  %57 = load %struct.sw842_param*, %struct.sw842_param** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @add_template(%struct.sw842_param* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @check_template(%struct.sw842_param*, i32) #1

declare dso_local i32 @add_template(%struct.sw842_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
