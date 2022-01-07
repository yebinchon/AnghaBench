; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_script__meminfo_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_script__meminfo_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_info = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"|SNP \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"|TLB \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"|LCK \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_script__meminfo_scnprintf(i8* %0, i64 %1, %struct.mem_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mem_info* %2, %struct.mem_info** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %11 = call i64 @perf_mem__lvl_scnprintf(i8* %8, i64 %9, %struct.mem_info* %10)
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %20, %22
  %24 = call i64 @scnprintf(i8* %19, i64 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %33, %35
  %37 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %38 = call i64 @perf_mem__snp_scnprintf(i8* %32, i64 %36, %struct.mem_info* %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %47, %49
  %51 = call i64 @scnprintf(i8* %46, i64 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %65 = call i64 @perf_mem__tlb_scnprintf(i8* %59, i64 %63, %struct.mem_info* %64)
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i64, i64* %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 %74, %76
  %78 = call i64 @scnprintf(i8* %73, i64 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %7, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 %87, %89
  %91 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %92 = call i64 @perf_mem__lck_scnprintf(i8* %86, i64 %90, %struct.mem_info* %91)
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i64 @perf_mem__lvl_scnprintf(i8*, i64, %struct.mem_info*) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*) #1

declare dso_local i64 @perf_mem__snp_scnprintf(i8*, i64, %struct.mem_info*) #1

declare dso_local i64 @perf_mem__tlb_scnprintf(i8*, i64, %struct.mem_info*) #1

declare dso_local i64 @perf_mem__lck_scnprintf(i8*, i64, %struct.mem_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
