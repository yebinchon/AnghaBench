; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_list_commands.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_list_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"available %s in '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"----------------\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s available from elsewhere on your $PATH\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"---------------------------------------\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_commands(i8* %0, %struct.cmdnames* %1, %struct.cmdnames* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmdnames*, align 8
  %6 = alloca %struct.cmdnames*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cmdnames* %1, %struct.cmdnames** %5, align 8
  store %struct.cmdnames* %2, %struct.cmdnames** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %13 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %19 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %17, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %16
  %29 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %30 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %28, %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %10

42:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %72, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %46 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %52 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %50, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %63 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %61, %49
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %43

75:                                               ; preds = %43
  %76 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %77 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = call i8* (...) @get_argv_exec_path()
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %82, i8* %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @mput_char(i8 signext 45, i64 %90)
  %92 = call i32 @putchar(i8 signext 10)
  %93 = load %struct.cmdnames*, %struct.cmdnames** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @pretty_print_string_list(%struct.cmdnames* %93, i32 %94)
  %96 = call i32 @putchar(i8 signext 10)
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @free(i8* %97)
  br label %99

99:                                               ; preds = %80, %75
  %100 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %101 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i8*, i8** %4, align 8
  %109 = call i64 @strlen(i8* %108)
  %110 = call i32 @mput_char(i8 signext 45, i64 %109)
  %111 = call i32 @putchar(i8 signext 10)
  %112 = load %struct.cmdnames*, %struct.cmdnames** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @pretty_print_string_list(%struct.cmdnames* %112, i32 %113)
  %115 = call i32 @putchar(i8 signext 10)
  br label %116

116:                                              ; preds = %104, %99
  ret void
}

declare dso_local i8* @get_argv_exec_path(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mput_char(i8 signext, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @pretty_print_string_list(%struct.cmdnames*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
