; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_put_decimal_ll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_put_decimal_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_put_decimal_ll(%struct.seq_file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 3
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %111

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @seq_putc(%struct.seq_file* %33, i8 signext %36)
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @seq_puts(%struct.seq_file* %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %20, %17
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 2
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %111

53:                                               ; preds = %43
  %54 = load i64, i64* %6, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 45, i8* %64, align 1
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i64, i64* %6, align 8
  %69 = icmp slt i64 %68, 10
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, 48
  %73 = trunc i64 %72 to i8
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %78 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 %73, i8* %81, align 1
  br label %114

82:                                               ; preds = %67
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = bitcast i8* %89 to i64*
  %91 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %92 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = trunc i64 %97 to i32
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @num_to_str(i64* %90, i32 %98, i64 %99, i32 0)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %82
  br label %111

104:                                              ; preds = %82
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  br label %114

111:                                              ; preds = %103, %52, %16
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = call i32 @seq_set_overflow(%struct.seq_file* %112)
  br label %114

114:                                              ; preds = %111, %104, %70
  ret void
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @num_to_str(i64*, i32, i64, i32) #1

declare dso_local i32 @seq_set_overflow(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
