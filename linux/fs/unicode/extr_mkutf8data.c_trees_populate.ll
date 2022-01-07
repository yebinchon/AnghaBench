; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_trees_populate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_trees_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.unicode_data = type { i64, i64 }

@trees_count = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Populating %s_%x\0A\00", align 1
@trees = common dso_local global %struct.TYPE_3__* null, align 8
@unicode_data = common dso_local global %struct.unicode_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trees_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trees_populate() #0 {
  %1 = alloca %struct.unicode_data*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %78, %0
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @trees_count, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %81

10:                                               ; preds = %6
  %11 = load i64, i64* @verbose, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %25)
  br label %27

27:                                               ; preds = %13, %10
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 1114112
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load %struct.unicode_data*, %struct.unicode_data** @unicode_data, align 8
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %74

40:                                               ; preds = %31
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @utf8encode(i8* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.unicode_data*, %struct.unicode_data** @unicode_data, align 8
  %45 = load i32, i32* %2, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %44, i64 %46
  %48 = call %struct.unicode_data* @corrections_lookup(%struct.unicode_data* %47)
  store %struct.unicode_data* %48, %struct.unicode_data** %1, align 8
  %49 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %50 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp sle i64 %51, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %40
  %61 = load %struct.unicode_data*, %struct.unicode_data** @unicode_data, align 8
  %62 = load i32, i32* %2, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %61, i64 %63
  store %struct.unicode_data* %64, %struct.unicode_data** %1, align 8
  br label %65

65:                                               ; preds = %60, %40
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trees, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.unicode_data*, %struct.unicode_data** %1, align 8
  %73 = call i32 @insert(%struct.TYPE_3__* %69, i8* %70, i32 %71, %struct.unicode_data* %72)
  br label %74

74:                                               ; preds = %65, %39
  %75 = load i32, i32* %2, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %28

77:                                               ; preds = %28
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %6

81:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @utf8encode(i8*, i32) #1

declare dso_local %struct.unicode_data* @corrections_lookup(%struct.unicode_data*) #1

declare dso_local i32 @insert(%struct.TYPE_3__*, i8*, i32, %struct.unicode_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
