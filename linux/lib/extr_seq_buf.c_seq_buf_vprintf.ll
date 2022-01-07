; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_vprintf.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_buf = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_buf_vprintf(%struct.seq_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_buf* %0, %struct.seq_buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %10 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %16 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %19 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %3
  %23 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %24 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %27 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %31 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %34 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @vsnprintf(i64 %29, i64 %36, i8* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %41 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %47 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %22
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %54 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  store i32 0, i32* %4, align 4
  br label %61

57:                                               ; preds = %22
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %60 = call i32 @seq_buf_set_overflow(%struct.seq_buf* %59)
  store i32 -1, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vsnprintf(i64, i64, i8*, i32) #1

declare dso_local i32 @seq_buf_set_overflow(%struct.seq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
