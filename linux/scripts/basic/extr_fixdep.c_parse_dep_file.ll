; ModuleID = '/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_parse_dep_file.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_parse_dep_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"source_%s := %s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"deps_%s := \\\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  %s \\\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"fixdep: parse error; no targets found\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\0A%s: $(deps_%s)\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"$(deps_%s):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @parse_dep_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dep_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %2, %118
  br label %12

12:                                               ; preds = %29, %11
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 92
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br label %27

27:                                               ; preds = %22, %17, %12
  %28 = phi i1 [ true, %17 ], [ true, %12 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %12

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %121

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %61, %37
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 32
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 92
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br label %59

59:                                               ; preds = %54, %49, %44, %39
  %60 = phi i1 [ false, %49 ], [ false, %44 ], [ false, %39 ], [ %58, %54 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  br label %39

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 58
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  br label %114

79:                                               ; preds = %64
  %80 = load i8*, i8** %3, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @is_ignored_file(i8* %80, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %79
  %90 = load i8*, i8** %5, align 8
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  store i32 1, i32* %8, align 4
  %97 = load i8*, i8** %4, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 (i8*, i8*, ...) @xprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %97, i8* %98)
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 (i8*, i8*, ...) @xprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %96, %93
  store i32 0, i32* %9, align 4
  br label %106

103:                                              ; preds = %89
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 (i8*, i8*, ...) @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %102
  %107 = load i8*, i8** %3, align 8
  %108 = call i8* @read_file(i8* %107)
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @parse_config_file(i8* %109)
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %106, %79
  br label %114

114:                                              ; preds = %113, %78
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** %3, align 8
  br label %11

121:                                              ; preds = %117, %36
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 @fprintf(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %121
  %129 = load i8*, i8** %4, align 8
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 (i8*, i8*, ...) @xprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %129, i8* %130)
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 (i8*, i8*, ...) @xprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  ret void
}

declare dso_local i32 @is_ignored_file(i8*, i32) #1

declare dso_local i32 @xprintf(i8*, i8*, ...) #1

declare dso_local i8* @read_file(i8*) #1

declare dso_local i32 @parse_config_file(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
