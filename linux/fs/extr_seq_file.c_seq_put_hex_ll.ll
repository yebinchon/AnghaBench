; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_put_hex_ll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_put_hex_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32, i32, i32* }

@hex_asc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seq_put_hex_ll(%struct.seq_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @seq_putc(%struct.seq_file* %26, i8 signext %29)
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %32, i8* %33)
  br label %35

35:                                               ; preds = %31, %25
  br label %36

36:                                               ; preds = %35, %13, %4
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  br label %49

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @llvm.ctlz.i64(i64 %41, i1 true)
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = sub i64 64, %44
  %46 = add i64 %45, 3
  %47 = udiv i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %40, %39
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %57 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %58, %59
  %61 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %62 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ugt i32 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %67 = call i32 @seq_set_overflow(%struct.seq_file* %66)
  br label %101

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = sub i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %92, %68
  %72 = load i32, i32* %10, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load i32*, i32** @hex_asc, align 8
  %76 = load i64, i64* %7, align 8
  %77 = and i64 15, %76
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %81 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %84 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %82, i64 %88
  store i32 %79, i32* %89, align 4
  %90 = load i64, i64* %7, align 8
  %91 = lshr i64 %90, 4
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %71

95:                                               ; preds = %71
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %98 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %65
  ret void
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

declare dso_local i32 @seq_set_overflow(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
