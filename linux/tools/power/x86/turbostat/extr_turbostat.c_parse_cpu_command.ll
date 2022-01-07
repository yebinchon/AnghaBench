; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_parse_cpu_command.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_parse_cpu_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@cpu_subset = common dso_local global i32* null, align 8
@show_core_only = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@show_pkg_only = common dso_local global i64 0, align 8
@CPU_SUBSET_MAXCPUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"CPU_ALLOC\00", align 1
@cpu_subset_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"\22--cpu %s\22 malformed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_cpu_command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** @cpu_subset, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %155

13:                                               ; preds = %9
  %14 = load i64, i64* @show_core_only, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @show_core_only, align 8
  br label %161

16:                                               ; preds = %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** @cpu_subset, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %155

24:                                               ; preds = %20
  %25 = load i64, i64* @show_pkg_only, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @show_pkg_only, align 8
  br label %161

27:                                               ; preds = %16
  %28 = load i64, i64* @show_core_only, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @show_pkg_only, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  br label %155

34:                                               ; preds = %30
  %35 = load i32, i32* @CPU_SUBSET_MAXCPUS, align 4
  %36 = call i32* @CPU_ALLOC(i32 %35)
  store i32* %36, i32** @cpu_subset, align 8
  %37 = load i32*, i32** @cpu_subset, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @err(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* @CPU_SUBSET_MAXCPUS, align 4
  %43 = call i32 @CPU_ALLOC_SIZE(i32 %42)
  store i32 %43, i32* @cpu_subset_size, align 4
  %44 = load i32, i32* @cpu_subset_size, align 4
  %45 = load i32*, i32** @cpu_subset, align 8
  %46 = call i32 @CPU_ZERO_S(i32 %44, i32* %45)
  %47 = load i8*, i8** %2, align 8
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %153, %86, %41
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %58, label %154

58:                                               ; preds = %56
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %155

64:                                               ; preds = %58
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strtoul(i8* %65, i8** %5, i32 10)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @CPU_SUBSET_MAXCPUS, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %155

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @cpu_subset_size, align 4
  %74 = load i32*, i32** @cpu_subset, align 8
  %75 = call i32 @CPU_SET_S(i32 %72, i32 %73, i32* %74)
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %154

81:                                               ; preds = %71
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 44
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8* %88, i8** %5, align 8
  br label %48

89:                                               ; preds = %81
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 45
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8* %96, i8** %5, align 8
  br label %115

97:                                               ; preds = %89
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 46
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %5, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 46
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8* %111, i8** %5, align 8
  br label %113

112:                                              ; preds = %102
  br label %155

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113, %97
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @strtoul(i8* %116, i8** %5, i32 10)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp ule i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %155

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %133, %122
  %124 = load i32, i32* %3, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ule i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @CPU_SUBSET_MAXCPUS, align 4
  %131 = icmp uge i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %155

133:                                              ; preds = %128
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @cpu_subset_size, align 4
  %136 = load i32*, i32** @cpu_subset, align 8
  %137 = call i32 @CPU_SET_S(i32 %134, i32 %135, i32* %136)
  br label %123

138:                                              ; preds = %123
  %139 = load i8*, i8** %5, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 44
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8* %145, i8** %5, align 8
  br label %153

146:                                              ; preds = %138
  %147 = load i8*, i8** %5, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %155

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %143
  br label %48

154:                                              ; preds = %80, %56
  br label %161

155:                                              ; preds = %151, %132, %121, %112, %70, %63, %33, %23, %12
  %156 = load i32, i32* @stderr, align 4
  %157 = load i8*, i8** %2, align 8
  %158 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %157)
  %159 = call i32 (...) @help()
  %160 = call i32 @exit(i32 -1) #3
  unreachable

161:                                              ; preds = %154, %24, %13
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @CPU_ALLOC(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @CPU_ALLOC_SIZE(i32) #1

declare dso_local i32 @CPU_ZERO_S(i32, i32*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @CPU_SET_S(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @help(...) #1

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
