; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__process_kallsyms.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__process_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcore_copy_info = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"_stext\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_etext\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8, i64)* @kcore_copy__process_kallsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcore_copy__process_kallsyms(i8* %0, i8* %1, i8 signext %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.kcore_copy_info*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.kcore_copy_info*
  store %struct.kcore_copy_info* %12, %struct.kcore_copy_info** %10, align 8
  %13 = load i8, i8* %8, align 1
  %14 = call i32 @kallsyms__is_function(i8 signext %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @strchr(i8* %18, i8 signext 91)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %24 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %30 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  store i32 0, i32* %5, align 4
  br label %89

32:                                               ; preds = %17
  %33 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %34 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %40 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %32
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %46 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %49 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %55 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %47
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %61 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %69 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %89

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %77 = getelementptr inbounds %struct.kcore_copy_info, %struct.kcore_copy_info* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %5, align 4
  br label %89

78:                                               ; preds = %70
  %79 = load i8*, i8** %7, align 8
  %80 = call i64 @is_entry_trampoline(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.kcore_copy_info*, %struct.kcore_copy_info** %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @kcore_copy__new_sym(%struct.kcore_copy_info* %83, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  store i32 -1, i32* %5, align 4
  br label %89

88:                                               ; preds = %82, %78
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %87, %74, %66, %31, %16
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @kallsyms__is_function(i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @is_entry_trampoline(i8*) #1

declare dso_local i32 @kcore_copy__new_sym(%struct.kcore_copy_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
