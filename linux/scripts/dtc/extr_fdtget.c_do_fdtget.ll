; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtget.c_do_fdtget.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtget.c_do_fdtget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_info*, i8*, i8**, i32, i32)* @do_fdtget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_fdtget(%struct.display_info* %0, i8* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.display_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.display_info* %0, %struct.display_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i8* @utilfdt_read(i8* %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %82

21:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %77, %21
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %22
  %29 = load i8*, i8** %12, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @fdt_path_offset(i8* %29, i8* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load %struct.display_info*, %struct.display_info** %7, align 8
  %40 = getelementptr inbounds %struct.display_info, %struct.display_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.display_info*, %struct.display_info** %7, align 8
  %45 = getelementptr inbounds %struct.display_info, %struct.display_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @puts(i64 %46)
  br label %77

48:                                               ; preds = %38
  %49 = load i8**, i8*** %9, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @report_error(i8* %53, i32 %54)
  store i32 -1, i32* %6, align 4
  br label %82

56:                                               ; preds = %28
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %67

60:                                               ; preds = %56
  %61 = load i8**, i8*** %9, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  br label %67

67:                                               ; preds = %60, %59
  %68 = phi i8* [ null, %59 ], [ %66, %60 ]
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.display_info*, %struct.display_info** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = call i64 @show_data_for_item(i8* %69, %struct.display_info* %70, i32 %71, i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 -1, i32* %6, align 4
  br label %82

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %43
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %22

81:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %75, %48, %20
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i8* @utilfdt_read(i8*) #1

declare dso_local i32 @fdt_path_offset(i8*, i8*) #1

declare dso_local i32 @puts(i64) #1

declare dso_local i32 @report_error(i8*, i32) #1

declare dso_local i64 @show_data_for_item(i8*, %struct.display_info*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
