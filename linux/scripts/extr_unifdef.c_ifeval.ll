; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_ifeval.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_ifeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"eval %s\00", align 1
@killconsts = common dso_local global i64 0, align 8
@constexpr = common dso_local global i32 0, align 4
@eval_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"eval = %d\00", align 1
@LT_IF = common dso_local global i32 0, align 4
@LT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @ifeval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifeval(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i64, i64* @killconsts, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 1
  store i32 %11, i32* @constexpr, align 4
  %12 = load i32, i32* @eval_ops, align 4
  %13 = load i8**, i8*** %2, align 8
  %14 = call i32 @eval_table(i32 %12, i32* %4, i8** %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @constexpr, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @LT_IF, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @LT_ERROR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @LT_IF, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi i32 [ %20, %19 ], [ %30, %29 ]
  ret i32 %32
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @eval_table(i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
