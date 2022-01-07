; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__print_auxtrace_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__print_auxtrace_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS_HEADER_VERSION_0_MAX = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@cs_etm_global_header_fmts = common dso_local global i8** null, align 8
@__perf_cs_etmv3_magic = common dso_local global i64 0, align 8
@CS_ETM_PRIV_MAX = common dso_local global i32 0, align 4
@cs_etm_priv_fmts = common dso_local global i8** null, align 8
@__perf_cs_etmv4_magic = common dso_local global i64 0, align 8
@CS_ETMV4_PRIV_MAX = common dso_local global i32 0, align 4
@cs_etmv4_priv_fmts = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32)* @cs_etm__print_auxtrace_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__print_auxtrace_info(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CS_HEADER_VERSION_0_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32, i32* @stdout, align 4
  %14 = load i8**, i8*** @cs_etm_global_header_fmts, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i64*, i64** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @fprintf(i32 %13, i8* %18, i64 %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load i32, i32* @CS_HEADER_VERSION_0_MAX, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %101, %28
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %104

34:                                               ; preds = %30
  %35 = load i64*, i64** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @__perf_cs_etmv3_magic, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CS_ETM_PRIV_MAX, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32, i32* @stdout, align 4
  %49 = load i8**, i8*** @cs_etm_priv_fmts, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @fprintf(i32 %48, i8* %53, i64 %58)
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %43

65:                                               ; preds = %43
  br label %100

66:                                               ; preds = %34
  %67 = load i64*, i64** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @__perf_cs_etmv4_magic, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @CS_ETMV4_PRIV_MAX, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i32, i32* @stdout, align 4
  %81 = load i8**, i8*** @cs_etmv4_priv_fmts, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i64*, i64** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @fprintf(i32 %80, i8* %85, i64 %90)
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %75

97:                                               ; preds = %75
  br label %99

98:                                               ; preds = %66
  br label %104

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %65
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %30

104:                                              ; preds = %98, %30
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
