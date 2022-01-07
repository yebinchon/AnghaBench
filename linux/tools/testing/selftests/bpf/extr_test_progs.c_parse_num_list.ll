; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_parse_num_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_parse_num_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_selector = type { i32*, i32 }

@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_num_list(i8* %0, %struct.test_selector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.test_selector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.test_selector* %1, %struct.test_selector** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %109, %43, %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %110

20:                                               ; preds = %15
  store i32 0, i32* @errno, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strtol(i8* %21, i8** %14, i32 10)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @errno, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %123

28:                                               ; preds = %20
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %10, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %14, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %15

46:                                               ; preds = %38, %35
  %47 = load i8*, i8** %14, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 44
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %4, align 8
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %10, align 4
  br label %67

55:                                               ; preds = %46
  %56 = load i8*, i8** %14, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  %61 = load i8*, i8** %14, align 8
  store i8* %61, i8** %4, align 8
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %10, align 4
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %123

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %123

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32* @realloc(i32* %83, i32 %84)
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @free(i32* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %123

93:                                               ; preds = %80
  %94 = load i32*, i32** %12, align 8
  store i32* %94, i32** %11, align 8
  br label %95

95:                                               ; preds = %93, %75
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %106, %95
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %97

109:                                              ; preds = %97
  br label %15

110:                                              ; preds = %15
  %111 = load i32*, i32** %11, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %123

116:                                              ; preds = %110
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %119 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.test_selector*, %struct.test_selector** %5, align 8
  %122 = getelementptr inbounds %struct.test_selector, %struct.test_selector* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %113, %88, %72, %63, %25
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
