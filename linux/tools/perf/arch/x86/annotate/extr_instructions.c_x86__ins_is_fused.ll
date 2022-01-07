; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/annotate/extr_instructions.c_x86__ins_is_fused.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/annotate/extr_instructions.c_x86__ins_is_fused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"jmp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"xchg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch*, i8*, i8*)* @x86__ins_is_fused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86__ins_is_fused(%struct.arch* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.arch* %0, %struct.arch** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.arch*, %struct.arch** %5, align 8
  %9 = getelementptr inbounds %struct.arch, %struct.arch* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 6
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load %struct.arch*, %struct.arch** %5, align 8
  %14 = getelementptr inbounds %struct.arch, %struct.arch* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 30
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strstr(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %12, %3
  store i32 0, i32* %4, align 4
  br label %76

22:                                               ; preds = %17
  %23 = load %struct.arch*, %struct.arch** %5, align 8
  %24 = getelementptr inbounds %struct.arch, %struct.arch* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strstr(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strstr(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i32 1, i32* %4, align 4
  br label %76

40:                                               ; preds = %35
  br label %75

41:                                               ; preds = %22
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strstr(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strstr(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %45, %41
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @strstr(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strstr(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strstr(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @strstr(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @strstr(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65, %61, %57, %53, %49, %45
  store i32 1, i32* %4, align 4
  br label %76

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %40
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %73, %39, %21
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
