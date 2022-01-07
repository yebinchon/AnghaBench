; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_dmi_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_dmi_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i8* }

@dmi_system_id = common dso_local global i32 0, align 4
@matches = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"dmi*\00", align 1
@dmi_fields = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c":%s*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_dmi_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dmi_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @dmi_system_id, align 4
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @matches, align 8
  %12 = call i32 @DEF_FIELD_ADDR(i8* %9, i32 %10, %struct.TYPE_5__** %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %81, %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dmi_fields, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %77, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %80

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @matches, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @matches, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dmi_fields, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %40, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %33
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dmi_fields, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @matches, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dmi_ascii_filter(i8* %65, i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcat(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %48, %33, %24
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %21

80:                                               ; preds = %21
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %15

84:                                               ; preds = %15
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strcat(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dmi_ascii_filter(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
