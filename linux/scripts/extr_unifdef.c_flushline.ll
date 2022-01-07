; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_flushline.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_flushline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symlist = common dso_local global i64 0, align 8
@complement = common dso_local global i32 0, align 4
@tline = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@compblank = common dso_local global i64 0, align 8
@blankcount = common dso_local global i32 0, align 4
@blankmax = common dso_local global i32 0, align 4
@delcount = common dso_local global i64 0, align 8
@lnnum = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"#line %d%s\00", align 1
@linenum = common dso_local global i32 0, align 4
@newline = common dso_local global i8* null, align 8
@output = common dso_local global i32 0, align 4
@lnblank = common dso_local global i64 0, align 8
@exitstat = common dso_local global i32 0, align 4
@debugging = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @flushline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flushline(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @symlist, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %74

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @complement, align 4
  %10 = xor i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %7
  %13 = load i8*, i8** @tline, align 8
  %14 = load i8*, i8** @tline, align 8
  %15 = call i64 @strspn(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %12
  %24 = load i64, i64* @compblank, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @blankcount, align 4
  %28 = load i32, i32* @blankmax, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* @delcount, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @delcount, align 8
  %33 = load i32, i32* @blankcount, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @blankcount, align 4
  br label %57

35:                                               ; preds = %26, %23, %12
  %36 = load i64, i64* @lnnum, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i64, i64* @delcount, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @linenum, align 4
  %43 = load i8*, i8** @newline, align 8
  %44 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %38, %35
  %46 = load i8*, i8** @tline, align 8
  %47 = load i32, i32* @output, align 4
  %48 = call i32 @fputs(i8* %46, i32 %47)
  store i64 0, i64* @delcount, align 8
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @blankcount, align 4
  %53 = add nsw i32 %52, 1
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 0, %54 ]
  store i32 %56, i32* @blankcount, align 4
  store i32 %56, i32* @blankmax, align 4
  br label %57

57:                                               ; preds = %55, %30
  br label %68

58:                                               ; preds = %7
  %59 = load i64, i64* @lnblank, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** @newline, align 8
  %63 = load i32, i32* @output, align 4
  %64 = call i32 @fputs(i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  store i32 1, i32* @exitstat, align 4
  %66 = load i64, i64* @delcount, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* @delcount, align 8
  store i32 0, i32* @blankcount, align 4
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i64, i64* @debugging, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @output, align 4
  %73 = call i32 @fflush(i32 %72)
  br label %74

74:                                               ; preds = %6, %71, %68
  ret void
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
