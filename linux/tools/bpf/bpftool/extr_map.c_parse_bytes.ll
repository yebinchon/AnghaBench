; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_parse_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_parse_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"error parsing byte: %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s expected %d bytes got %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8*, i8*, i32)* @parse_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @parse_bytes(i8** %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @is_prefix(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  store i32 16, i32* %11, align 4
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %6, align 8
  br label %20

20:                                               ; preds = %17, %4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %25, %21
  %33 = phi i1 [ false, %21 ], [ %31, %25 ]
  br i1 %33, label %34, label %59

34:                                               ; preds = %32
  %35 = load i8**, i8*** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call zeroext i8 @strtoul(i8* %39, i8** %12, i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 %41, i8* %45, align 1
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  store i8** null, i8*** %5, align 8
  br label %73

56:                                               ; preds = %34
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %21

59:                                               ; preds = %32
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, i8*, ...) @p_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32 %65, i32 %66)
  store i8** null, i8*** %5, align 8
  br label %73

68:                                               ; preds = %59
  %69 = load i8**, i8*** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8** %72, i8*** %5, align 8
  br label %73

73:                                               ; preds = %68, %63, %49
  %74 = load i8**, i8*** %5, align 8
  ret i8** %74
}

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local zeroext i8 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @p_err(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
