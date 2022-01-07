; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_show_expflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_export.c_show_expflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flags = type { i32, i64** }
%struct.seq_file = type { i32 }

@expflags = common dso_local global %struct.flags* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32)* @show_expflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_expflags(%struct.seq_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.flags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.flags*, %struct.flags** @expflags, align 8
  store %struct.flags* %10, %struct.flags** %7, align 8
  br label %11

11:                                               ; preds = %59, %3
  %12 = load %struct.flags*, %struct.flags** %7, align 8
  %13 = getelementptr inbounds %struct.flags, %struct.flags* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %11
  %17 = load %struct.flags*, %struct.flags** %7, align 8
  %18 = getelementptr inbounds %struct.flags, %struct.flags* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %59

25:                                               ; preds = %16
  %26 = load %struct.flags*, %struct.flags** %7, align 8
  %27 = getelementptr inbounds %struct.flags, %struct.flags* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  store i32 %33, i32* %8, align 4
  %34 = load %struct.flags*, %struct.flags** %7, align 8
  %35 = getelementptr inbounds %struct.flags, %struct.flags* %34, i32 0, i32 1
  %36 = load i64**, i64*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64*, i64** %36, i64 %38
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %25
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %45, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %50 = load %struct.flags*, %struct.flags** %7, align 8
  %51 = getelementptr inbounds %struct.flags, %struct.flags* %50, i32 0, i32 1
  %52 = load i64**, i64*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %49, i64* %56)
  br label %58

58:                                               ; preds = %43, %25
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.flags*, %struct.flags** %7, align 8
  %61 = getelementptr inbounds %struct.flags, %struct.flags* %60, i32 1
  store %struct.flags* %61, %struct.flags** %7, align 8
  br label %11

62:                                               ; preds = %11
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
