; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_of_entry_multi.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_of_entry_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }

@of_device_id = common dso_local global i32 0, align 4
@name = common dso_local global i8** null, align 8
@type = common dso_local global i8** null, align 8
@compatible = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"of:N%sT%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%sC%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"MODULE_ALIAS(\22%s\22);\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.module*)* @do_of_entry_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_of_entry_multi(i8* %0, %struct.module* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca [500 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @of_device_id, align 4
  %10 = load i8**, i8*** @name, align 8
  %11 = call i32 @DEF_FIELD_ADDR(i8* %8, i32 %9, i8** %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @of_device_id, align 4
  %14 = load i8**, i8*** @type, align 8
  %15 = call i32 @DEF_FIELD_ADDR(i8* %12, i32 %13, i8** %14)
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @of_device_id, align 4
  %18 = load i8**, i8*** @compatible, align 8
  %19 = call i32 @DEF_FIELD_ADDR(i8* %16, i32 %17, i8** %18)
  %20 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %21 = load i8**, i8*** @name, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i8**, i8*** @name, align 8
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i8* [ %29, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = load i8**, i8*** @type, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8**, i8*** @type, align 8
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i8* [ %41, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %42 ]
  %45 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i8**, i8*** @compatible, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 %53
  %55 = load i8**, i8*** @type, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i8**, i8*** @compatible, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %64)
  br label %66

66:                                               ; preds = %51, %43
  %67 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %86, %66
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %71, %68
  %77 = phi i1 [ false, %68 ], [ %75, %71 ]
  br i1 %77, label %78, label %89

78:                                               ; preds = %76
  %79 = load i8*, i8** %7, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isspace(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  store i8 95, i8* %84, align 1
  br label %85

85:                                               ; preds = %83, %78
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  br label %68

89:                                               ; preds = %76
  %90 = load %struct.module*, %struct.module** %4, align 8
  %91 = getelementptr inbounds %struct.module, %struct.module* %90, i32 0, i32 0
  %92 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %93 = call i32 @buf_printf(i32* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %95 = call i32 @strcat(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %96 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %97 = call i32 @add_wildcard(i8* %96)
  %98 = load %struct.module*, %struct.module** %4, align 8
  %99 = getelementptr inbounds %struct.module, %struct.module* %98, i32 0, i32 0
  %100 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0
  %101 = call i32 @buf_printf(i32* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  ret void
}

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
