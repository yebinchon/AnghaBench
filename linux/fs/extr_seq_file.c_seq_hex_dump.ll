; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_hex_dump.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_hex_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s%p: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%.8x: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_hex_dump(%struct.seq_file* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.seq_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %17, align 8
  %26 = load i64, i64* %15, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 16
  br i1 %29, label %30, label %34

30:                                               ; preds = %8
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 16, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %30, %8
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %99, %34
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %15, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %42 = call i32 @seq_has_overflowed(%struct.seq_file* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %103

47:                                               ; preds = %45
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @min(i32 %48, i32 %49)
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %20, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %68 [
    i32 129, label %55
    i32 128, label %63
  ]

55:                                               ; preds = %47
  %56 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %57, i32* %61)
  br label %72

63:                                               ; preds = %47
  %64 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %18, align 4
  %67 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %65, i32 %66)
  br label %72

68:                                               ; preds = %47
  %69 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %63, %55
  %73 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %74 = call i64 @seq_get_buf(%struct.seq_file* %73, i8** %21)
  store i64 %74, i64* %22, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i8*, i8** %21, align 8
  %83 = load i64, i64* %22, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @hex_dump_to_buffer(i32* %78, i32 %79, i32 %80, i32 %81, i8* %82, i64 %83, i32 %84)
  store i32 %85, i32* %23, align 4
  %86 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %87 = load i32, i32* %23, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %22, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %72
  %92 = load i32, i32* %23, align 4
  br label %94

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ -1, %93 ]
  %96 = call i32 @seq_commit(%struct.seq_file* %86, i32 %95)
  %97 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %98 = call i32 @seq_putc(%struct.seq_file* %97, i8 signext 10)
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %18, align 4
  br label %35

103:                                              ; preds = %45
  ret void
}

declare dso_local i32 @seq_has_overflowed(%struct.seq_file*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i64 @seq_get_buf(%struct.seq_file*, i8**) #1

declare dso_local i32 @hex_dump_to_buffer(i32*, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @seq_commit(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
