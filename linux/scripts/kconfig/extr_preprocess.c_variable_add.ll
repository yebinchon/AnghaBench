; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_variable_add.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_preprocess.c_variable_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32, i8*, i32, i64, i8* }

@VAR_APPEND = common dso_local global i32 0, align 4
@VAR_RECURSIVE = common dso_local global i32 0, align 4
@variable_list = common dso_local global i32 0, align 4
@VAR_SIMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @variable_add(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.variable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.variable* @variable_lookup(i8* %10)
  store %struct.variable* %11, %struct.variable** %7, align 8
  %12 = load %struct.variable*, %struct.variable** %7, align 8
  %13 = icmp ne %struct.variable* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @VAR_APPEND, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.variable*, %struct.variable** %7, align 8
  %20 = getelementptr inbounds %struct.variable, %struct.variable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %27

22:                                               ; preds = %14
  %23 = load %struct.variable*, %struct.variable** %7, align 8
  %24 = getelementptr inbounds %struct.variable, %struct.variable* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %45

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @VAR_APPEND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @VAR_RECURSIVE, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = call %struct.variable* @xmalloc(i32 40)
  store %struct.variable* %35, %struct.variable** %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @xstrdup(i8* %36)
  %38 = load %struct.variable*, %struct.variable** %7, align 8
  %39 = getelementptr inbounds %struct.variable, %struct.variable* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.variable*, %struct.variable** %7, align 8
  %41 = getelementptr inbounds %struct.variable, %struct.variable* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.variable*, %struct.variable** %7, align 8
  %43 = getelementptr inbounds %struct.variable, %struct.variable* %42, i32 0, i32 2
  %44 = call i32 @list_add_tail(i32* %43, i32* @variable_list)
  br label %45

45:                                               ; preds = %34, %27
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.variable*, %struct.variable** %7, align 8
  %48 = getelementptr inbounds %struct.variable, %struct.variable* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @VAR_SIMPLE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @expand_string(i8* %53)
  store i8* %54, i8** %8, align 8
  br label %58

55:                                               ; preds = %45
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* @xstrdup(i8* %56)
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %58
  %62 = load %struct.variable*, %struct.variable** %7, align 8
  %63 = getelementptr inbounds %struct.variable, %struct.variable* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.variable*, %struct.variable** %7, align 8
  %66 = getelementptr inbounds %struct.variable, %struct.variable* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add nsw i64 %68, %70
  %72 = add nsw i64 %71, 2
  %73 = call i8* @xrealloc(i8* %64, i64 %72)
  %74 = load %struct.variable*, %struct.variable** %7, align 8
  %75 = getelementptr inbounds %struct.variable, %struct.variable* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.variable*, %struct.variable** %7, align 8
  %77 = getelementptr inbounds %struct.variable, %struct.variable* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcat(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.variable*, %struct.variable** %7, align 8
  %81 = getelementptr inbounds %struct.variable, %struct.variable* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @strcat(i8* %82, i8* %83)
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  br label %91

87:                                               ; preds = %58
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.variable*, %struct.variable** %7, align 8
  %90 = getelementptr inbounds %struct.variable, %struct.variable* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %87, %61
  ret void
}

declare dso_local %struct.variable* @variable_lookup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.variable* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @expand_string(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
