; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtget.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtget.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i32, i32, i32, i32 }

@MODE_SHOW_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"d:hlpt:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid type string\00", align 1
@MODE_LIST_PROPS = common dso_local global i32 0, align 4
@MODE_LIST_SUBNODES = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Missing filename\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Must have an even number of arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.display_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 2, i32* %8, align 4
  %10 = call i32 @memset(%struct.display_info* %7, i8 signext 0, i32 16)
  %11 = getelementptr inbounds %struct.display_info, %struct.display_info* %7, i32 0, i32 0
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* @MODE_SHOW_VALUE, align 4
  %13 = getelementptr inbounds %struct.display_info, %struct.display_info* %7, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %43, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %44

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %43 [
    i32 104, label %23
    i32 63, label %23
    i32 116, label %25
    i32 112, label %34
    i32 108, label %37
    i32 100, label %40
  ]

23:                                               ; preds = %21, %21
  %24 = call i32 @usage(i8* null)
  br label %25

25:                                               ; preds = %21, %23
  %26 = load i32, i32* @optarg, align 4
  %27 = getelementptr inbounds %struct.display_info, %struct.display_info* %7, i32 0, i32 3
  %28 = getelementptr inbounds %struct.display_info, %struct.display_info* %7, i32 0, i32 0
  %29 = call i32 @utilfdt_decode_type(i32 %26, i32* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @usage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  br label %43

34:                                               ; preds = %21
  %35 = load i32, i32* @MODE_LIST_PROPS, align 4
  %36 = getelementptr inbounds %struct.display_info, %struct.display_info* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %8, align 4
  br label %43

37:                                               ; preds = %21
  %38 = load i32, i32* @MODE_LIST_SUBNODES, align 4
  %39 = getelementptr inbounds %struct.display_info, %struct.display_info* %7, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %8, align 4
  br label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @optarg, align 4
  %42 = getelementptr inbounds %struct.display_info, %struct.display_info* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %21, %40, %37, %34, %33
  br label %14

44:                                               ; preds = %20
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* @optind, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @optind, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 @usage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, i32* @optind, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8** %64, i8*** %5, align 8
  %65 = load i32, i32* @optind, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %89

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = srem i32 %75, 2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 @usage(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74, %71
  %81 = load i8*, i8** %6, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @do_fdtget(%struct.display_info* %7, i8* %81, i8** %82, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %89

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %70
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.display_info*, i8 signext, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @utilfdt_decode_type(i32, i32*, i32*) #1

declare dso_local i64 @do_fdtget(%struct.display_info*, i8*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
