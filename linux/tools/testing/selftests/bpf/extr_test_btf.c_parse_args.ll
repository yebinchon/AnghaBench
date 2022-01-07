; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"hlpk:f:r:g:d:\00", align 1
@args = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@optarg = common dso_local global i32 0, align 4
@raw_tests = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"BTF raw test number must be [1 - %zu]\0A\00", align 1
@file_tests = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"BTF file test number must be [1 - %zu]\0A\00", align 1
@get_info_tests = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"BTF get info test number must be [1 - %zu]\0A\00", align 1
@info_raw_tests = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"BTF prog info raw test number must be [1 - %zu]\0A\00", align 1
@dedup_tests = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"BTF dedup test number must be [1 - %zu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @getopt(i32 %9, i8** %10, i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %44 [
    i32 108, label %16
    i32 102, label %17
    i32 114, label %21
    i32 103, label %25
    i32 112, label %29
    i32 107, label %30
    i32 100, label %34
    i32 104, label %38
  ]

16:                                               ; preds = %14
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 0), align 4
  br label %49

17:                                               ; preds = %14
  %18 = load i32, i32* @optarg, align 4
  %19 = call i8* @atoi(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 2), align 4
  br label %49

21:                                               ; preds = %14
  %22 = load i32, i32* @optarg, align 4
  %23 = call i8* @atoi(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 4), align 4
  br label %49

25:                                               ; preds = %14
  %26 = load i32, i32* @optarg, align 4
  %27 = call i8* @atoi(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 5), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 6), align 4
  br label %49

29:                                               ; preds = %14
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 7), align 4
  br label %49

30:                                               ; preds = %14
  %31 = load i32, i32* @optarg, align 4
  %32 = call i8* @atoi(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 8), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 9), align 4
  br label %49

34:                                               ; preds = %14
  %35 = load i32, i32* @optarg, align 4
  %36 = call i8* @atoi(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 10), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 11), align 4
  br label %49

38:                                               ; preds = %14
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @usage(i8* %41)
  %43 = call i32 @exit(i32 0) #3
  unreachable

44:                                               ; preds = %14
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @usage(i8* %47)
  store i32 -1, i32* %3, align 4
  br label %131

49:                                               ; preds = %34, %30, %29, %25, %21, %17, %16
  br label %8

50:                                               ; preds = %8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 3), align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 3), align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 3), align 4
  %58 = load i32, i32* @raw_tests, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56, %53
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* @raw_tests, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %3, align 4
  br label %131

66:                                               ; preds = %56, %50
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 1), align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 1), align 4
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 1), align 4
  %74 = load i32, i32* @file_tests, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72, %69
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* @file_tests, align 4
  %80 = call i32 @ARRAY_SIZE(i32 %79)
  %81 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store i32 -1, i32* %3, align 4
  br label %131

82:                                               ; preds = %72, %66
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 5), align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 5), align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 5), align 4
  %90 = load i32, i32* @get_info_tests, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88, %85
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* @get_info_tests, align 4
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  store i32 -1, i32* %3, align 4
  br label %131

98:                                               ; preds = %88, %82
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 8), align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 8), align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 8), align 4
  %106 = load i32, i32* @info_raw_tests, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104, %101
  %110 = load i32, i32* @stderr, align 4
  %111 = load i32, i32* @info_raw_tests, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  store i32 -1, i32* %3, align 4
  br label %131

114:                                              ; preds = %104, %98
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 10), align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 10), align 4
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @args, i32 0, i32 10), align 4
  %122 = load i32, i32* @dedup_tests, align 4
  %123 = call i32 @ARRAY_SIZE(i32 %122)
  %124 = icmp sgt i32 %121, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %120, %117
  %126 = load i32, i32* @stderr, align 4
  %127 = load i32, i32* @dedup_tests, align 4
  %128 = call i32 @ARRAY_SIZE(i32 %127)
  %129 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  store i32 -1, i32* %3, align 4
  br label %131

130:                                              ; preds = %120, %114
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %125, %109, %93, %77, %61, %44
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
