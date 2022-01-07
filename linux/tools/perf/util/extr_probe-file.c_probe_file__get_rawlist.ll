; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_file__get_rawlist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_file__get_rawlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32 }

@MAX_CMDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"strlist__add failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strlist* @probe_file__get_rawlist(i32 %0) #0 {
  %2 = alloca %struct.strlist*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strlist*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @MAX_CMDLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.strlist* null, %struct.strlist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %88

20:                                               ; preds = %1
  %21 = call %struct.strlist* @strlist__new(i32* null, i32* null)
  store %struct.strlist* %21, %struct.strlist** %11, align 8
  %22 = load %struct.strlist*, %struct.strlist** %11, align 8
  %23 = icmp eq %struct.strlist* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.strlist* null, %struct.strlist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %88

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @dup(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %85

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = call i32* @fdopen(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %82

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %74, %37
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @feof(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %75

43:                                               ; preds = %38
  %44 = load i32, i32* @MAX_CMDLEN, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i8* @fgets(i8* %16, i32 %44, i32* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %75

50:                                               ; preds = %43
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %61, %50
  %67 = load %struct.strlist*, %struct.strlist** %11, align 8
  %68 = call i32 @strlist__add(%struct.strlist* %67, i8* %16)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %79

74:                                               ; preds = %66
  br label %38

75:                                               ; preds = %49, %38
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @fclose(i32* %76)
  %78 = load %struct.strlist*, %struct.strlist** %11, align 8
  store %struct.strlist* %78, %struct.strlist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %88

79:                                               ; preds = %71
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @fclose(i32* %80)
  br label %85

82:                                               ; preds = %36
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @close(i32 %83)
  br label %85

85:                                               ; preds = %82, %79, %30
  %86 = load %struct.strlist*, %struct.strlist** %11, align 8
  %87 = call i32 @strlist__delete(%struct.strlist* %86)
  store %struct.strlist* null, %struct.strlist** %2, align 8
  store i32 1, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %75, %24, %19
  %89 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load %struct.strlist*, %struct.strlist** %2, align 8
  ret %struct.strlist* %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.strlist* @strlist__new(i32*, i32*) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlist__add(%struct.strlist*, i8*) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strlist__delete(%struct.strlist*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
