; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i32, i64, i32, i32, i32 }

@OPER_WRITE_PROP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"chpt:v\00", align 1
@OPER_CREATE_NODE = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid type string\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Missing filename\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Missing node\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Missing property\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.display_info, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = call i32 @memset(%struct.display_info* %6, i8 signext 0, i32 32)
  %10 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load i64, i64* @OPER_WRITE_PROP, align 8
  %12 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %41

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %40 [
    i32 99, label %22
    i32 104, label %25
    i32 63, label %25
    i32 112, label %27
    i32 116, label %29
    i32 118, label %38
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @OPER_CREATE_NODE, align 8
  %24 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  br label %40

25:                                               ; preds = %20, %20
  %26 = call i32 @usage(i8* null)
  br label %27

27:                                               ; preds = %20, %25
  %28 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 2
  store i32 1, i32* %28, align 8
  br label %40

29:                                               ; preds = %20
  %30 = load i32, i32* @optarg, align 4
  %31 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 4
  %32 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 0
  %33 = call i32 @utilfdt_decode_type(i32 %30, i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @usage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  br label %40

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 3
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %20, %38, %37, %27, %22
  br label %13

41:                                               ; preds = %19
  %42 = load i32, i32* @optind, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* @optind, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @optind, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 @usage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* @optind, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8** %61, i8*** %5, align 8
  %62 = load i32, i32* @optind, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = getelementptr inbounds %struct.display_info, %struct.display_info* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OPER_WRITE_PROP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %57
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @usage(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @usage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %74
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i8*, i8** %7, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i64 @do_fdtput(%struct.display_info* %6, i8* %81, i8** %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %88

87:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.display_info*, i8 signext, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @utilfdt_decode_type(i32, i32*, i32*) #1

declare dso_local i64 @do_fdtput(%struct.display_info*, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
