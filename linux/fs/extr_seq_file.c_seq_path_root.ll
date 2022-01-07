; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_path_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_path_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.path = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@SEQ_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_path_root(%struct.seq_file* %0, %struct.path* %1, %struct.path* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store %struct.path* %2, %struct.path** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %16 = call i64 @seq_get_buf(%struct.seq_file* %15, i8** %10)
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* @ENAMETOOLONG, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %4
  %22 = load %struct.path*, %struct.path** %7, align 8
  %23 = load %struct.path*, %struct.path** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i8* @__d_path(%struct.path* %22, %struct.path* %23, i8* %24, i64 %25)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @SEQ_SKIP, align 4
  store i32 %30, i32* %5, align 4
  br label %72

31:                                               ; preds = %21
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @PTR_ERR(i8* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @IS_ERR(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @mangle_path(i8* %38, i8* %39, i8* %40)
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @ENAMETOOLONG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %54, %31
  br label %56

56:                                               ; preds = %55, %4
  %57 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @seq_commit(%struct.seq_file* %57, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @ENAMETOOLONG, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  br label %70

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %29
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @seq_get_buf(%struct.seq_file*, i8**) #1

declare dso_local i8* @__d_path(%struct.path*, %struct.path*, i8*, i64) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @mangle_path(i8*, i8*, i8*) #1

declare dso_local i32 @seq_commit(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
