; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_may_be_linker_script_provide_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_kallsyms.c_may_be_linker_script_provide_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_entry = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"start_\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stop_\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"end_\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_start\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_entry*)* @may_be_linker_script_provide_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_be_linker_script_provide_symbol(%struct.sym_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sym_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.sym_entry* %0, %struct.sym_entry** %3, align 8
  %6 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %7 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %10, i8** %4, align 8
  %11 = load %struct.sym_entry*, %struct.sym_entry** %3, align 8
  %12 = getelementptr inbounds %struct.sym_entry, %struct.sym_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 95
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 95
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18
  store i32 0, i32* %2, align 4
  br label %68

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = call i32 @memcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %68

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = call i32 @memcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %68

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = call i32 @memcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %68

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 -6
  %55 = call i32 @memcmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %68

58:                                               ; preds = %49
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 -4
  %64 = call i32 @memcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %68

67:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %66, %57, %48, %42, %36, %30, %17
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
