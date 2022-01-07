; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_parse_one_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_parse_one_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_filter = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addr_filter*, i8**)* @parse_one_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_one_filter(%struct.addr_filter* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addr_filter*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.addr_filter* %0, %struct.addr_filter** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @strdup(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %12 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %20 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %19, i32 0, i32 9
  %21 = call i32 @parse_num_or_str(i8** %6, i32* null, i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %104

25:                                               ; preds = %18
  %26 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %27 = call i32 @parse_action(%struct.addr_filter* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %104

31:                                               ; preds = %25
  %32 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %33 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %32, i32 0, i32 8
  %34 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %35 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %34, i32 0, i32 7
  %36 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %37 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %36, i32 0, i32 6
  %38 = call i32 @parse_addr_size(i8** %6, i32* %33, i32* %35, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %104

42:                                               ; preds = %31
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strspn(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %6, align 8
  %55 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %56 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %55, i32 0, i32 5
  %57 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %58 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %57, i32 0, i32 4
  %59 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %60 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %59, i32 0, i32 3
  %61 = call i32 @parse_addr_size(i8** %6, i32* %56, i32* %58, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %104

65:                                               ; preds = %52
  %66 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %67 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %42
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @strspn(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %71 = load i8*, i8** %6, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 64
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %6, align 8
  %81 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %82 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %81, i32 0, i32 2
  %83 = call i32 @parse_num_or_str(i8** %6, i32* null, i32* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %104

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %68
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @strspn(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i8*, i8** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %96 = getelementptr inbounds %struct.addr_filter, %struct.addr_filter* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = ptrtoint i8* %94 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %100
  store i8* %103, i8** %101, align 8
  store i32 0, i32* %3, align 4
  br label %108

104:                                              ; preds = %86, %64, %41, %30, %24
  %105 = load %struct.addr_filter*, %struct.addr_filter** %4, align 8
  %106 = call i32 @addr_filter__free_str(%struct.addr_filter* %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %88, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @parse_num_or_str(i8**, i32*, i32*, i8*) #1

declare dso_local i32 @parse_action(%struct.addr_filter*) #1

declare dso_local i32 @parse_addr_size(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @addr_filter__free_str(%struct.addr_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
