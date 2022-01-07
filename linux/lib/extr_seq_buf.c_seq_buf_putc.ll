; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_putc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_buf = type { i64, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_buf_putc(%struct.seq_buf* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_buf*, align 8
  %5 = alloca i8, align 1
  store %struct.seq_buf* %0, %struct.seq_buf** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %7 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %13 = call i64 @seq_buf_can_fit(%struct.seq_buf* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i8, i8* %5, align 1
  %17 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %18 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %21 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  store i8 %16, i8* %25, align 1
  store i32 0, i32* %3, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %28 = call i32 @seq_buf_set_overflow(%struct.seq_buf* %27)
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @seq_buf_can_fit(%struct.seq_buf*, i32) #1

declare dso_local i32 @seq_buf_set_overflow(%struct.seq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
