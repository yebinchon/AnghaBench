; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_gen_crc32table.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_gen_crc32table.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"/* this file is generated - do not edit */\0A\0A\00", align 1
@CRC_LE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"static const u32 ____cacheline_aligned crc32table_le[%d][%d] = {\00", align 1
@LE_TABLE_ROWS = common dso_local global i32 0, align 4
@LE_TABLE_SIZE = common dso_local global i32 0, align 4
@crc32table_le = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"tole\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@CRC_BE_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"static const u32 ____cacheline_aligned crc32table_be[%d][%d] = {\00", align 1
@BE_TABLE_ROWS = common dso_local global i32 0, align 4
@BE_TABLE_SIZE = common dso_local global i32 0, align 4
@crc32table_be = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"tobe\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"static const u32 ____cacheline_aligned crc32ctable_le[%d][%d] = {\00", align 1
@crc32ctable_le = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @CRC_LE_BITS, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = call i32 (...) @crc32init_le()
  %11 = load i32, i32* @LE_TABLE_ROWS, align 4
  %12 = load i32, i32* @LE_TABLE_SIZE, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load i32, i32* @crc32table_le, align 4
  %15 = load i32, i32* @LE_TABLE_ROWS, align 4
  %16 = load i32, i32* @LE_TABLE_SIZE, align 4
  %17 = call i32 @output_table(i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %9, %2
  %20 = load i32, i32* @CRC_BE_BITS, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = call i32 (...) @crc32init_be()
  %24 = load i32, i32* @BE_TABLE_ROWS, align 4
  %25 = load i32, i32* @BE_TABLE_SIZE, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @crc32table_be, align 4
  %28 = load i32, i32* @LE_TABLE_ROWS, align 4
  %29 = load i32, i32* @BE_TABLE_SIZE, align 4
  %30 = call i32 @output_table(i32 %27, i32 %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %22, %19
  %33 = load i32, i32* @CRC_LE_BITS, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = call i32 (...) @crc32cinit_le()
  %37 = load i32, i32* @LE_TABLE_ROWS, align 4
  %38 = load i32, i32* @LE_TABLE_SIZE, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @crc32ctable_le, align 4
  %41 = load i32, i32* @LE_TABLE_ROWS, align 4
  %42 = load i32, i32* @LE_TABLE_SIZE, align 4
  %43 = call i32 @output_table(i32 %40, i32 %41, i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %35, %32
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crc32init_le(...) #1

declare dso_local i32 @output_table(i32, i32, i32, i8*) #1

declare dso_local i32 @crc32init_be(...) #1

declare dso_local i32 @crc32cinit_le(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
