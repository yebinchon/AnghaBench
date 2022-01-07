; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_put_decimal_ull_width.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_put_decimal_ull_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_put_decimal_ull_width(%struct.seq_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 2
  %14 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %89

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @seq_putc(%struct.seq_file* %35, i8 signext %38)
  br label %44

40:                                               ; preds = %28
  %41 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @seq_puts(%struct.seq_file* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %22, %19
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %51 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %57 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %89

61:                                               ; preds = %49
  %62 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %63 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %66 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %70 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %73 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @num_to_str(i64 %68, i64 %75, i64 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %61
  br label %89

82:                                               ; preds = %61
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %86 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %92

89:                                               ; preds = %81, %60, %18
  %90 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %91 = call i32 @seq_set_overflow(%struct.seq_file* %90)
  br label %92

92:                                               ; preds = %89, %82
  ret void
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @num_to_str(i64, i64, i64, i32) #1

declare dso_local i32 @seq_set_overflow(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
