; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_add_table_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_oslinuxtbl.c_osl_add_table_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osl_table_info = type { i64, %struct.osl_table_info*, i32 }

@FALSE = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@gbl_table_list_head = common dso_local global %struct.osl_table_info* null, align 8
@TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%4.4s: Warning unmatched table instance %d, expected %d\0A\00", align 1
@gbl_table_count = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @osl_add_table_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osl_add_table_to_list(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.osl_table_info*, align 8
  %7 = alloca %struct.osl_table_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %9, align 8
  %11 = call %struct.osl_table_info* @calloc(i32 1, i32 24)
  store %struct.osl_table_info* %11, %struct.osl_table_info** %6, align 8
  %12 = load %struct.osl_table_info*, %struct.osl_table_info** %6, align 8
  %13 = icmp ne %struct.osl_table_info* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load %struct.osl_table_info*, %struct.osl_table_info** %6, align 8
  %18 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @ACPI_COPY_NAMESEG(i32 %19, i8* %20)
  %22 = load %struct.osl_table_info*, %struct.osl_table_info** @gbl_table_list_head, align 8
  %23 = icmp ne %struct.osl_table_info* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load %struct.osl_table_info*, %struct.osl_table_info** %6, align 8
  store %struct.osl_table_info* %25, %struct.osl_table_info** @gbl_table_list_head, align 8
  br label %69

26:                                               ; preds = %16
  %27 = load %struct.osl_table_info*, %struct.osl_table_info** @gbl_table_list_head, align 8
  store %struct.osl_table_info* %27, %struct.osl_table_info** %7, align 8
  br label %28

28:                                               ; preds = %26, %61
  %29 = load %struct.osl_table_info*, %struct.osl_table_info** %7, align 8
  %30 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @ACPI_COMPARE_NAMESEG(i32 %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load %struct.osl_table_info*, %struct.osl_table_info** %7, align 8
  %37 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %35
  %44 = load %struct.osl_table_info*, %struct.osl_table_info** %7, align 8
  %45 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.osl_table_info*, %struct.osl_table_info** %7, align 8
  %51 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %49, %43
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.osl_table_info*, %struct.osl_table_info** %7, align 8
  %57 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %56, i32 0, i32 1
  %58 = load %struct.osl_table_info*, %struct.osl_table_info** %57, align 8
  %59 = icmp ne %struct.osl_table_info* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %65

61:                                               ; preds = %55
  %62 = load %struct.osl_table_info*, %struct.osl_table_info** %7, align 8
  %63 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %62, i32 0, i32 1
  %64 = load %struct.osl_table_info*, %struct.osl_table_info** %63, align 8
  store %struct.osl_table_info* %64, %struct.osl_table_info** %7, align 8
  br label %28

65:                                               ; preds = %60
  %66 = load %struct.osl_table_info*, %struct.osl_table_info** %6, align 8
  %67 = load %struct.osl_table_info*, %struct.osl_table_info** %7, align 8
  %68 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %67, i32 0, i32 1
  store %struct.osl_table_info* %66, %struct.osl_table_info** %68, align 8
  br label %69

69:                                               ; preds = %65, %24
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* @stderr, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %77, i64 %78, i64 %79)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %81, %69
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.osl_table_info*, %struct.osl_table_info** %6, align 8
  %86 = getelementptr inbounds %struct.osl_table_info, %struct.osl_table_info* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @gbl_table_count, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @gbl_table_count, align 4
  %89 = load i32, i32* @AE_OK, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.osl_table_info* @calloc(i32, i32) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i32, i8*) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
