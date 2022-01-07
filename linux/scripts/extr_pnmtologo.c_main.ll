; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@programname = common dso_local global i8* null, align 8
@opterr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"hn:o:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@logoname = common dso_local global i8* null, align 8
@outputname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@logo_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"vga16\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"clut224\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"gray256\00", align 1
@optind = common dso_local global i32 0, align 4
@filename = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @programname, align 8
  store i64 0, i64* @opterr, align 8
  br label %10

10:                                               ; preds = %2, %53
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %54

17:                                               ; preds = %10
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %51 [
    i32 104, label %19
    i32 110, label %21
    i32 111, label %23
    i32 116, label %25
  ]

19:                                               ; preds = %17
  %20 = call i32 (...) @usage()
  br label %53

21:                                               ; preds = %17
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** @logoname, align 8
  br label %53

23:                                               ; preds = %17
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** @outputname, align 8
  br label %53

25:                                               ; preds = %17
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 129, i32* @logo_type, align 4
  br label %50

30:                                               ; preds = %25
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 128, i32* @logo_type, align 4
  br label %49

35:                                               ; preds = %30
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 131, i32* @logo_type, align 4
  br label %48

40:                                               ; preds = %35
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 130, i32* @logo_type, align 4
  br label %47

45:                                               ; preds = %40
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %44
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49, %29
  br label %53

51:                                               ; preds = %17
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %50, %23, %21, %19
  br label %10

54:                                               ; preds = %16
  %55 = load i32, i32* @optind, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* @optind, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** @filename, align 8
  %67 = call i32 (...) @read_image()
  %68 = load i32, i32* @logo_type, align 4
  switch i32 %68, label %77 [
    i32 129, label %69
    i32 128, label %71
    i32 131, label %73
    i32 130, label %75
  ]

69:                                               ; preds = %61
  %70 = call i32 (...) @write_logo_mono()
  br label %77

71:                                               ; preds = %61
  %72 = call i32 (...) @write_logo_vga16()
  br label %77

73:                                               ; preds = %61
  %74 = call i32 (...) @write_logo_clut224()
  br label %77

75:                                               ; preds = %61
  %76 = call i32 (...) @write_logo_gray256()
  br label %77

77:                                               ; preds = %61, %75, %73, %71, %69
  %78 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @read_image(...) #1

declare dso_local i32 @write_logo_mono(...) #1

declare dso_local i32 @write_logo_vga16(...) #1

declare dso_local i32 @write_logo_clut224(...) #1

declare dso_local i32 @write_logo_gray256(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
