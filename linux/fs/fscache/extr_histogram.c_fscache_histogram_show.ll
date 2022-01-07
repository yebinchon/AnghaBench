; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_histogram.c_fscache_histogram_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_histogram.c_fscache_histogram_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"JIFS  SECS  OBJ INST  OP RUNS   OBJ RUNS  RETRV DLY RETRIEVLS\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"===== ===== ========= ========= ========= ========= =========\0A\00", align 1
@fscache_obj_instantiate_histogram = common dso_local global i32* null, align 8
@fscache_ops_histogram = common dso_local global i32* null, align 8
@fscache_objs_histogram = common dso_local global i32* null, align 8
@fscache_retrieval_delay_histogram = common dso_local global i32* null, align 8
@fscache_retrieval_histogram = common dso_local global i32* null, align 8
@HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%4lu  0.%03u %9u %9u %9u %9u %9u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @fscache_histogram_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscache_histogram_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i64
  switch i64 %10, label %17 [
    i64 1, label %11
    i64 2, label %14
  ]

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = call i32 @seq_puts(%struct.seq_file* %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = sub i64 %19, 3
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** @fscache_obj_instantiate_histogram, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @atomic_read(i32* %23)
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32*, i32** @fscache_ops_histogram, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @atomic_read(i32* %28)
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** @fscache_objs_histogram, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @atomic_read(i32* %33)
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load i32*, i32** @fscache_retrieval_delay_histogram, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @atomic_read(i32* %38)
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** @fscache_retrieval_histogram, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @atomic_read(i32* %43)
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %44, i32* %45, align 16
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %47, %49
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %50, %52
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %53, %55
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %58 = load i32, i32* %57, align 16
  %59 = or i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %82

62:                                               ; preds = %17
  %63 = load i64, i64* %6, align 8
  %64 = mul i64 %63, 1000
  %65 = load i64, i64* @HZ, align 8
  %66 = udiv i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %80 = load i32, i32* %79, align 16
  %81 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %69, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %62, %61, %14, %11
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
