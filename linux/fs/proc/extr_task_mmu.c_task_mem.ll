; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_task_mem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_task_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.mm_struct = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@MM_ANONPAGES = common dso_local global i32 0, align 4
@MM_FILEPAGES = common dso_local global i32 0, align 4
@MM_SHMEMPAGES = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MM_SWAPENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"VmPeak:\09\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" kB\0AVmSize:\09\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" kB\0AVmLck:\09\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" kB\0AVmPin:\09\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" kB\0AVmHWM:\09\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" kB\0AVmRSS:\09\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" kB\0ARssAnon:\09\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" kB\0ARssFile:\09\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" kB\0ARssShmem:\09\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" kB\0AVmData:\09\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" kB\0AVmStk:\09\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" kB\0AVmExe:\09\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" kB\0AVmLib:\09\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" kB\0AVmPTE:\09\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" kB\0AVmSwap:\09\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" kB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_mem(%struct.seq_file* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %16 = load i32, i32* @MM_ANONPAGES, align 4
  %17 = call i64 @get_mm_counter(%struct.mm_struct* %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = load i32, i32* @MM_FILEPAGES, align 4
  %20 = call i64 @get_mm_counter(%struct.mm_struct* %18, i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %22 = load i32, i32* @MM_SHMEMPAGES, align 4
  %23 = call i64 @get_mm_counter(%struct.mm_struct* %21, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %29 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %14, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %49 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %47, %36
  %52 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @PAGE_ALIGN(i32 %54)
  %56 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %57 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PAGE_MASK, align 8
  %60 = and i64 %58, %59
  %61 = sub i64 %55, %60
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %64 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PAGE_SHIFT, align 8
  %67 = shl i64 %65, %66
  %68 = call i64 @min(i64 %62, i64 %67)
  store i64 %68, i64* %5, align 8
  %69 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %70 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PAGE_SHIFT, align 8
  %73 = shl i64 %71, %72
  %74 = load i64, i64* %5, align 8
  %75 = sub i64 %73, %74
  store i64 %75, i64* %6, align 8
  %76 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %77 = load i32, i32* @MM_SWAPENTS, align 4
  %78 = call i64 @get_mm_counter(%struct.mm_struct* %76, i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %84 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %88 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %87, i32 0, i32 8
  %89 = call i64 @atomic64_read(i32* %88)
  %90 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %93)
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %97)
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %99)
  %101 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %102 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %103)
  %105 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %106 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %107)
  %109 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %110 = load i64, i64* %5, align 8
  %111 = lshr i64 %110, 10
  %112 = trunc i64 %111 to i32
  %113 = call i32 @seq_put_decimal_ull_width(%struct.seq_file* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %112, i32 8)
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = load i64, i64* %6, align 8
  %116 = lshr i64 %115, 10
  %117 = trunc i64 %116 to i32
  %118 = call i32 @seq_put_decimal_ull_width(%struct.seq_file* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %117, i32 8)
  %119 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %120 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %121 = call i32 @mm_pgtables_bytes(%struct.mm_struct* %120)
  %122 = ashr i32 %121, 10
  %123 = call i32 @seq_put_decimal_ull_width(%struct.seq_file* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %122, i32 8)
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @SEQ_PUT_DEC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i64 %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %127 = call i32 @seq_puts(%struct.seq_file* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %130 = call i32 @hugetlb_report_usage(%struct.seq_file* %128, %struct.mm_struct* %129)
  ret void
}

declare dso_local i64 @get_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @SEQ_PUT_DEC(i8*, i64) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @seq_put_decimal_ull_width(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @mm_pgtables_bytes(%struct.mm_struct*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @hugetlb_report_usage(%struct.seq_file*, %struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
