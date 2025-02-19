; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_patch_name_tbd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_patch_name_tbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAME_TBD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error in getting next_str\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32, i32*)* @patch_name_tbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @patch_name_tbd(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @get_raw_sec_size(i32* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %15, align 8
  store i32* null, i32** %16, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32* @ERR_PTR(i32 %31)
  store i32* %32, i32** %6, align 8
  br label %113

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %11, align 8
  store i32 0, i32* %37, align 4
  store i32* null, i32** %6, align 8
  br label %113

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = call i32* @malloc(i32 %39)
  store i32* %40, i32** %16, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32* @ERR_PTR(i32 %45)
  store i32* %46, i32** %6, align 8
  br label %113

47:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %106, %47
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %109

55:                                               ; preds = %48
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NAME_TBD, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %55
  %64 = load i8*, i8** %15, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i8* @get_next_str(i8* %64, i8* %65)
  store i8* %66, i8** %15, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = icmp ne i8* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @CHECK(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %63
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @free(i32* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i32* @ERR_PTR(i32 %77)
  store i32* %78, i32** %6, align 8
  br label %113

79:                                               ; preds = %63
  %80 = load i8*, i8** %15, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = load i8*, i8** %15, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %15, align 8
  br label %105

95:                                               ; preds = %55
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %95, %79
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %48

109:                                              ; preds = %48
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %16, align 8
  store i32* %112, i32** %6, align 8
  br label %113

113:                                              ; preds = %109, %73, %43, %36, %29
  %114 = load i32*, i32** %6, align 8
  ret i32* %114
}

declare dso_local i32 @get_raw_sec_size(i32*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i8* @get_next_str(i8*, i8*) #1

declare dso_local i64 @CHECK(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
