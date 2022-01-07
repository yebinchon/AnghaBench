; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_parse_callchain_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_parse_callchain_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_param = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@CALLCHAIN_FP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"callchain: No more arguments needed for --call-graph fp\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dwarf\00", align 1
@CALLCHAIN_DWARF = common dso_local global i32 0, align 4
@dwarf_callchain_users = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"lbr\00", align 1
@CALLCHAIN_LBR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"callchain: No more arguments needed for --call-graph lbr\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"callchain: Unknown --call-graph option value: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_callchain_record(i8* %0, %struct.callchain_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.callchain_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.callchain_param* %1, %struct.callchain_param** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcpy(i8* %23, i8* %24)
  %26 = load i8*, i8** %9, align 8
  %27 = call i8* @strtok_r(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %33

31:                                               ; preds = %22
  %32 = load i8*, i8** %9, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i8* [ %28, %30 ], [ %32, %31 ]
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %33
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @CALLCHAIN_FP, align 4
  %44 = load %struct.callchain_param*, %struct.callchain_param** %5, align 8
  %45 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %10, align 4
  br label %48

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  br label %88

49:                                               ; preds = %35
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  store i64 8192, i64* %11, align 8
  store i32 0, i32* %10, align 4
  %54 = load i32, i32* @CALLCHAIN_DWARF, align 4
  %55 = load %struct.callchain_param*, %struct.callchain_param** %5, align 8
  %56 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.callchain_param*, %struct.callchain_param** %5, align 8
  %58 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %57, i32 0, i32 0
  store i64 8192, i64* %58, align 8
  store i32 1, i32* @dwarf_callchain_users, align 4
  %59 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  store i64 0, i64* %12, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @get_stack_size(i8* %63, i64* %12)
  store i32 %64, i32* %10, align 4
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.callchain_param*, %struct.callchain_param** %5, align 8
  %67 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %53
  br label %86

69:                                               ; preds = %49
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  %75 = icmp ne i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @CALLCHAIN_LBR, align 4
  %78 = load %struct.callchain_param*, %struct.callchain_param** %5, align 8
  %79 = getelementptr inbounds %struct.callchain_param, %struct.callchain_param* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %10, align 4
  br label %82

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  br label %88

83:                                               ; preds = %69
  %84 = load i8*, i8** %4, align 8
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  br label %88

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %83, %82, %48
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @get_stack_size(i8*, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
