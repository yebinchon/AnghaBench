; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c___kmod_path__parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c___kmod_path__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmod_path = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"[kernel.kallsyms]\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"[guest.kernel.kallsyms\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[vdso32]\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"[vdsox32]\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"[vsyscall]\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@COMP_ID__NONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c".ko\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"[%.*s]\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kmod_path__parse(%struct.kmod_path* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kmod_path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.kmod_path* %0, %struct.kmod_path** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 47)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 46)
  store i8* %14, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %16 = call i32 @memset(%struct.kmod_path* %15, i32 0, i32 12)
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  br label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i8* [ %21, %19 ], [ %23, %22 ]
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 91
  br i1 %30, label %31, label %62

31:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 22)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @strncmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strncmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %47, %43, %39, %35, %31
  %56 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %57 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  br label %61

58:                                               ; preds = %51
  %59 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %60 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i8*, i8** %9, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @strdup(i8* %72)
  %74 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %75 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %77 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %84

81:                                               ; preds = %71
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  br label %84

84:                                               ; preds = %81, %80
  %85 = phi i32 [ 0, %80 ], [ %83, %81 ]
  store i32 %85, i32* %4, align 4
  br label %153

86:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %153

87:                                               ; preds = %65
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i32 @is_supported_compression(i8* %89)
  %91 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %92 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %94 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @COMP_ID__NONE, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -3
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %98, %87
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = icmp ugt i8* %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i8*, i8** %9, align 8
  %107 = call i64 @strncmp(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %112 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %101
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %152

116:                                              ; preds = %113
  %117 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %118 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %123 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %122, i32 0, i32 1
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 (i32*, i8*, ...) @asprintf(i32* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %129, i8* %130)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %153

136:                                              ; preds = %121
  br label %147

137:                                              ; preds = %116
  %138 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %139 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %138, i32 0, i32 1
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 (i32*, i8*, ...) @asprintf(i32* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %140)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %153

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %136
  %148 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %149 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @strreplace(i32 %150, i8 signext 45, i8 signext 95)
  br label %152

152:                                              ; preds = %147, %113
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %143, %133, %86, %84
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memset(%struct.kmod_path*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @is_supported_compression(i8*) #1

declare dso_local i32 @asprintf(i32*, i8*, ...) #1

declare dso_local i32 @strreplace(i32, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
