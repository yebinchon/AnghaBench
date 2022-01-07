; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_path.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_buf = type { i32 }
%struct.path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_buf_path(%struct.seq_buf* %0, %struct.path* %1, i8* %2) #0 {
  %4 = alloca %struct.seq_buf*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.seq_buf* %0, %struct.seq_buf** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %13 = call i64 @seq_buf_get_buf(%struct.seq_buf* %12, i8** %7)
  store i64 %13, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  %14 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %15 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %3
  %23 = load %struct.path*, %struct.path** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @d_path(%struct.path* %23, i8* %24, i64 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @IS_ERR(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @mangle_path(i8* %31, i8* %32, i8* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @seq_buf_commit(%struct.seq_buf* %47, i32 %48)
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i64 @seq_buf_get_buf(%struct.seq_buf*, i8**) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @d_path(%struct.path*, i8*, i64) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @mangle_path(i8*, i8*, i8*) #1

declare dso_local i32 @seq_buf_commit(%struct.seq_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
