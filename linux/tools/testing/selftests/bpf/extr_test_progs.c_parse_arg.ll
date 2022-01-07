; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_parse_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_parse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argp_state = type { %struct.test_env* }
%struct.test_env = type { i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to parse subtest numbers.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to parse test numbers.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Unrecognized verbosity setting ('%s'), only -v and -vv are supported\0A\00", align 1
@ARGP_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.argp_state*)* @parse_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_arg(i32 %0, i8* %1, %struct.argp_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.argp_state*, align 8
  %8 = alloca %struct.test_env*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.argp_state* %2, %struct.argp_state** %7, align 8
  %11 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %12 = getelementptr inbounds %struct.argp_state, %struct.argp_state* %11, i32 0, i32 0
  %13 = load %struct.test_env*, %struct.test_env** %12, align 8
  store %struct.test_env* %13, %struct.test_env** %8, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %110 [
    i32 130, label %15
    i32 131, label %46
    i32 128, label %83
    i32 129, label %86
    i32 133, label %106
    i32 132, label %109
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 47)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i8*, i8** %9, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load %struct.test_env*, %struct.test_env** %8, align 8
  %25 = getelementptr inbounds %struct.test_env, %struct.test_env* %24, i32 0, i32 4
  %26 = call i32 @parse_num_list(i8* %23, %struct.TYPE_2__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %113

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.test_env*, %struct.test_env** %8, align 8
  %37 = getelementptr inbounds %struct.test_env, %struct.test_env* %36, i32 0, i32 3
  %38 = call i32 @parse_num_list(i8* %35, %struct.TYPE_2__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %113

45:                                               ; preds = %34
  br label %112

46:                                               ; preds = %3
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i8* @strdup(i8* %54)
  %56 = load %struct.test_env*, %struct.test_env** %8, align 8
  %57 = getelementptr inbounds %struct.test_env, %struct.test_env* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.test_env*, %struct.test_env** %8, align 8
  %60 = getelementptr inbounds %struct.test_env, %struct.test_env* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %113

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i8*, i8** %6, align 8
  %70 = call i8* @strdup(i8* %69)
  %71 = load %struct.test_env*, %struct.test_env** %8, align 8
  %72 = getelementptr inbounds %struct.test_env, %struct.test_env* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.test_env*, %struct.test_env** %8, align 8
  %75 = getelementptr inbounds %struct.test_env, %struct.test_env* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %113

82:                                               ; preds = %68
  br label %112

83:                                               ; preds = %3
  %84 = load %struct.test_env*, %struct.test_env** %8, align 8
  %85 = getelementptr inbounds %struct.test_env, %struct.test_env* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %112

86:                                               ; preds = %3
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.test_env*, %struct.test_env** %8, align 8
  %95 = getelementptr inbounds %struct.test_env, %struct.test_env* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  br label %102

96:                                               ; preds = %89
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %113

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.test_env*, %struct.test_env** %8, align 8
  %105 = getelementptr inbounds %struct.test_env, %struct.test_env* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  br label %112

106:                                              ; preds = %3
  %107 = load %struct.argp_state*, %struct.argp_state** %7, align 8
  %108 = call i32 @argp_usage(%struct.argp_state* %107)
  br label %112

109:                                              ; preds = %3
  br label %112

110:                                              ; preds = %3
  %111 = load i32, i32* @ARGP_ERR_UNKNOWN, align 4
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %109, %106, %103, %83, %82, %45
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %110, %96, %79, %64, %40, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_num_list(i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @argp_usage(%struct.argp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
