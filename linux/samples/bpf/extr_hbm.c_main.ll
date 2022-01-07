; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_hbm.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_hbm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"hbm_out_kern.o\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"iodln:r:st:wh\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"no_cn\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"edt\00", align 1
@no_cn_flag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"hbm_edt_kern.o\00", align 1
@edt_flag = common dso_local global i32 0, align 4
@debugFlag = common dso_local global i32 0, align 4
@loopback_flag = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@minRate = common dso_local global double 0.000000e+00, align 8
@rate = common dso_local global double 0.000000e+00, align 8
@stats_flag = common dso_local global i32 0, align 4
@dur = common dso_local global double 0.000000e+00, align 8
@work_conserving_flag = common dso_local global i32 0, align 4
@optopt = common dso_local global i8 0, align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Option -%c requires an argument.\0A\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"HBM prog: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [3 x %struct.option], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 1, i32* %8, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %11 = bitcast [3 x %struct.option]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 96, i1 false)
  %12 = bitcast i8* %11 to [3 x %struct.option]*
  %13 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 3
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 3
  store i32 2, i32* %18, align 8
  br label %19

19:                                               ; preds = %67, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %10, i64 0, i64 0
  %24 = call i32 @getopt_long(i32 %20, i8** %21, i8* %22, %struct.option* %23, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %68

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %65 [
    i32 1, label %28
    i32 2, label %29
    i32 111, label %30
    i32 100, label %31
    i32 108, label %32
    i32 110, label %33
    i32 114, label %37
    i32 115, label %42
    i32 116, label %43
    i32 119, label %46
    i32 63, label %47
    i32 104, label %64
  ]

28:                                               ; preds = %26
  store i32 1, i32* @no_cn_flag, align 4
  br label %67

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  store i32 1, i32* @edt_flag, align 4
  br label %67

30:                                               ; preds = %26
  br label %67

31:                                               ; preds = %26
  store i32 1, i32* @debugFlag, align 4
  br label %67

32:                                               ; preds = %26
  store i32 1, i32* @loopback_flag, align 4
  br label %67

33:                                               ; preds = %26
  %34 = load i32, i32* @optarg, align 4
  %35 = call double @atoi(i32 %34)
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %8, align 4
  br label %67

37:                                               ; preds = %26
  %38 = load i32, i32* @optarg, align 4
  %39 = call double @atoi(i32 %38)
  %40 = fmul double %39, 1.024000e+00
  store double %40, double* @minRate, align 8
  %41 = load double, double* @minRate, align 8
  store double %41, double* @rate, align 8
  br label %67

42:                                               ; preds = %26
  store i32 1, i32* @stats_flag, align 4
  br label %67

43:                                               ; preds = %26
  %44 = load i32, i32* @optarg, align 4
  %45 = call double @atoi(i32 %44)
  store double %45, double* @dur, align 8
  br label %67

46:                                               ; preds = %26
  store i32 1, i32* @work_conserving_flag, align 4
  br label %67

47:                                               ; preds = %26
  %48 = load i8, i8* @optopt, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 110
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* @optopt, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 114
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* @optopt, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 116
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51, %47
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8, i8* @optopt, align 1
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8 signext %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %26, %63
  br label %65

65:                                               ; preds = %26, %64
  %66 = call i32 (...) @Usage()
  store i32 0, i32* %3, align 4
  br label %90

67:                                               ; preds = %46, %43, %42, %37, %33, %32, %31, %30, %29, %28
  br label %19

68:                                               ; preds = %19
  %69 = load i32, i32* @optind, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* @optind, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %72, %68
  %79 = load i8*, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  br label %84

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i8* [ %82, %81 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %83 ]
  %86 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @run_bpf_prog(i8* %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %65
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local double @atoi(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #2

declare dso_local i32 @Usage(...) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @run_bpf_prog(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
