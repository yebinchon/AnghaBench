; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_pad.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_pad(%struct.seq_file* %0, i8 signext %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 @seq_set_overflow(%struct.seq_file* %27)
  br label %52

29:                                               ; preds = %15
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @memset(i64 %37, i8 signext 32, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %29, %2
  %46 = load i8, i8* %4, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load i8, i8* %4, align 1
  %51 = call i32 @seq_putc(%struct.seq_file* %49, i8 signext %50)
  br label %52

52:                                               ; preds = %26, %48, %45
  ret void
}

declare dso_local i32 @seq_set_overflow(%struct.seq_file*) #1

declare dso_local i32 @memset(i64, i8 signext, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
