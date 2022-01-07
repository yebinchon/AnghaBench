; ModuleID = '/home/carl/AnghaBench/linux/tools/build/extr_fixdep.c_parse_dep_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/build/extr_fixdep.c_parse_dep_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"source_%s := %s\0A\0A\00", align 1
@target = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"deps_%s := \\\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"  %s \\\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"fixdep: parse error; no targets found\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\0A%s: $(deps_%s)\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"$(deps_%s):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @parse_dep_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dep_file(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %122, %2
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %125

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br label %46

46:                                               ; preds = %41, %36, %31
  %47 = phi i1 [ true, %36 ], [ true, %31 ], [ %45, %41 ]
  br label %48

48:                                               ; preds = %46, %27
  %49 = phi i1 [ false, %27 ], [ %47, %46 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %27

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  store i8* %54, i8** %7, align 8
  br label %55

55:                                               ; preds = %76, %53
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 32
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 92
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 10
  br label %74

74:                                               ; preds = %69, %64, %59, %55
  %75 = phi i1 [ false, %64 ], [ false, %59 ], [ false, %55 ], [ %73, %69 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  br label %55

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 58
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %122

89:                                               ; preds = %79
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memcpy(i8* %21, i8* %93, i32 %99)
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = getelementptr inbounds i8, i8* %21, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %92
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  store i32 1, i32* %12, align 4
  %113 = load i8*, i8** @target, align 8
  %114 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %113, i8* %21)
  %115 = load i8*, i8** @target, align 8
  %116 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %112, %109
  store i32 0, i32* %13, align 4
  br label %120

118:                                              ; preds = %92
  %119 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120, %89
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8* %124, i8** %5, align 8
  br label %22

125:                                              ; preds = %22
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %131 = call i32 @exit(i32 1) #4
  unreachable

132:                                              ; preds = %125
  %133 = load i8*, i8** @target, align 8
  %134 = load i8*, i8** @target, align 8
  %135 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %133, i8* %134)
  %136 = load i8*, i8** @target, align 8
  %137 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  %138 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %138)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
