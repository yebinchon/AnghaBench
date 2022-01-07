; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_option__in_argv.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_option__in_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8, i64, i64 }
%struct.parse_opt_ctx_t = type { i32, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, %struct.parse_opt_ctx_t*)* @option__in_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @option__in_argv(%struct.option* %0, %struct.parse_opt_ctx_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.option*, align 8
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store %struct.parse_opt_ctx_t* %1, %struct.parse_opt_ctx_t** %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %103, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %11 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %106

14:                                               ; preds = %8
  %15 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %16 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %27, label %72

27:                                               ; preds = %14
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load %struct.option*, %struct.option** %4, align 8
  %39 = getelementptr inbounds %struct.option, %struct.option* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 8
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %107

44:                                               ; preds = %33
  br label %103

45:                                               ; preds = %27
  %46 = load %struct.option*, %struct.option** %4, align 8
  %47 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.option*, %struct.option** %4, align 8
  %52 = getelementptr inbounds %struct.option, %struct.option* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @strcmp(i64 %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %107

58:                                               ; preds = %50, %45
  %59 = load %struct.option*, %struct.option** %4, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.option*, %struct.option** %4, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32* @strcasestr(i64 %66, i8* %67)
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %107

71:                                               ; preds = %63, %58
  br label %103

72:                                               ; preds = %14
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load %struct.option*, %struct.option** %4, align 8
  %78 = getelementptr inbounds %struct.option, %struct.option* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 8
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %101, label %82

82:                                               ; preds = %72
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load %struct.option*, %struct.option** %4, align 8
  %90 = getelementptr inbounds %struct.option, %struct.option* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.option*, %struct.option** %4, align 8
  %95 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = call i64 @strcmp(i64 %96, i8* %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93, %72
  store i32 1, i32* %3, align 4
  br label %107

102:                                              ; preds = %93, %88, %82
  br label %103

103:                                              ; preds = %102, %71, %44
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %8

106:                                              ; preds = %8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %101, %70, %57, %43
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32* @strcasestr(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
