; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_options.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sockmap.c_test_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPTSTRING = common dso_local global i32 0, align 4
@txmsg_pass = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"pass,\00", align 1
@txmsg_noisy = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"pass_noisy,\00", align 1
@txmsg_redir = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"redir,\00", align 1
@txmsg_redir_noisy = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"redir_noisy,\00", align 1
@txmsg_drop = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"drop,\00", align 1
@txmsg_apply = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"apply %d,\00", align 1
@txmsg_cork = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"cork %d,\00", align 1
@txmsg_start = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"start %d,\00", align 1
@txmsg_end = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"end %d,\00", align 1
@txmsg_start_pop = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"pop (%d,%d),\00", align 1
@txmsg_pop = common dso_local global i32 0, align 4
@txmsg_ingress = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"ingress,\00", align 1
@txmsg_skb = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"skb,\00", align 1
@ktls = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"ktls,\00", align 1
@peek_flag = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"peek,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_options(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @OPTSTRING, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @OPTSTRING, align 4
  %11 = call i32 @memset(i8* %9, i32 0, i32 %10)
  %12 = load i64, i64* @txmsg_pass, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @OPTSTRING, align 4
  %17 = call i32 @strncat(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64, i64* @txmsg_noisy, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* @OPTSTRING, align 4
  %24 = call i32 @strncat(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i64, i64* @txmsg_redir, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* @OPTSTRING, align 4
  %31 = call i32 @strncat(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i64, i64* @txmsg_redir_noisy, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* @OPTSTRING, align 4
  %38 = call i32 @strncat(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i64, i64* @txmsg_drop, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i8*, i8** %2, align 8
  %44 = load i32, i32* @OPTSTRING, align 4
  %45 = call i32 @strncat(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @txmsg_apply, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* @OPTSTRING, align 4
  %51 = load i32, i32* @txmsg_apply, align 4
  %52 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %8, i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %2, align 8
  %54 = load i32, i32* @OPTSTRING, align 4
  %55 = call i32 @strncat(i8* %53, i8* %8, i32 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* @txmsg_cork, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* @OPTSTRING, align 4
  %61 = load i32, i32* @txmsg_cork, align 4
  %62 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %8, i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* @OPTSTRING, align 4
  %65 = call i32 @strncat(i8* %63, i8* %8, i32 %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, i32* @txmsg_start, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @OPTSTRING, align 4
  %71 = load i32, i32* @txmsg_start, align 4
  %72 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %8, i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** %2, align 8
  %74 = load i32, i32* @OPTSTRING, align 4
  %75 = call i32 @strncat(i8* %73, i8* %8, i32 %74)
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i32, i32* @txmsg_end, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* @OPTSTRING, align 4
  %81 = load i32, i32* @txmsg_end, align 4
  %82 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %8, i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** %2, align 8
  %84 = load i32, i32* @OPTSTRING, align 4
  %85 = call i32 @strncat(i8* %83, i8* %8, i32 %84)
  br label %86

86:                                               ; preds = %79, %76
  %87 = load i32, i32* @txmsg_start_pop, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* @OPTSTRING, align 4
  %91 = load i32, i32* @txmsg_start_pop, align 4
  %92 = load i32, i32* @txmsg_start_pop, align 4
  %93 = load i32, i32* @txmsg_pop, align 4
  %94 = add nsw i32 %92, %93
  %95 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %8, i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i8*, i8** %2, align 8
  %97 = load i32, i32* @OPTSTRING, align 4
  %98 = call i32 @strncat(i8* %96, i8* %8, i32 %97)
  br label %99

99:                                               ; preds = %89, %86
  %100 = load i64, i64* @txmsg_ingress, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i8*, i8** %2, align 8
  %104 = load i32, i32* @OPTSTRING, align 4
  %105 = call i32 @strncat(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i64, i64* @txmsg_skb, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i8*, i8** %2, align 8
  %111 = load i32, i32* @OPTSTRING, align 4
  %112 = call i32 @strncat(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i64, i64* @ktls, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i8*, i8** %2, align 8
  %118 = load i32, i32* @OPTSTRING, align 4
  %119 = call i32 @strncat(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i64, i64* @peek_flag, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8*, i8** %2, align 8
  %125 = load i32, i32* @OPTSTRING, align 4
  %126 = call i32 @strncat(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %128)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
