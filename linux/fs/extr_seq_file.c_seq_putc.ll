; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_putc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_putc(%struct.seq_file* %0, i8 signext %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %23

13:                                               ; preds = %2
  %14 = load i8, i8* %4, align 1
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %22, align 1
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
