; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_putmem.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_putmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_buf = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_buf_putmem(%struct.seq_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_buf* %0, %struct.seq_buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %9 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @seq_buf_can_fit(%struct.seq_buf* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %20 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %23 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @memcpy(i64 %25, i8* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %32 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %30
  store i64 %34, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load %struct.seq_buf*, %struct.seq_buf** %5, align 8
  %37 = call i32 @seq_buf_set_overflow(%struct.seq_buf* %36)
  store i32 -1, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @seq_buf_can_fit(%struct.seq_buf*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @seq_buf_set_overflow(%struct.seq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
