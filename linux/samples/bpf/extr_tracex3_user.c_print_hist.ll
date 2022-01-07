; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex3_user.c_print_hist.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex3_user.c_print_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLOTS = common dso_local global i32 0, align 4
@full_range = common dso_local global i64 0, align 8
@num_colors = common dso_local global i32 0, align 4
@text_only = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sym = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@color = common dso_local global i8** null, align 8
@nocolor = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" # %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hist(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = call i32 (...) @bpf_num_possible_cpus()
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @SLOTS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %58, %1
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @SLOTS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @bpf_map_lookup_elem(i32 %26, i32* %10, i64* %17)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %41, %25
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %17, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %20, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @clear_stats(i32 %62)
  %64 = load i64, i64* @full_range, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 29
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %100, %61
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @SLOTS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %68
  %73 = load i32, i32* @num_colors, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %20, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %73, %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  %81 = sdiv i32 %78, %80
  store i32 %81, i32* %12, align 4
  %82 = load i64, i64* @text_only, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %72
  %85 = load i8**, i8*** @sym, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %89)
  br label %99

91:                                               ; preds = %72
  %92 = load i8**, i8*** @color, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** @nocolor, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %91, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %68

103:                                              ; preds = %68
  %104 = load i32, i32* %4, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %106)
  ret void
}

declare dso_local i32 @bpf_num_possible_cpus(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i64*) #1

declare dso_local i32 @clear_stats(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
