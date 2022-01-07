; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_objtool.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_objtool.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.UNUSED = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [24 x i8] c"OBJTOOL_NOT_IMPLEMENTED\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"objtool\00", align 1
@help = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8*, i8** @main.UNUSED, align 8
  %7 = load i8*, i8** @main.UNUSED, align 8
  %8 = load i8*, i8** @main.UNUSED, align 8
  %9 = call i32 @exec_cmd_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %6, i8* %7, i8* %8)
  %10 = load i8*, i8** @main.UNUSED, align 8
  %11 = call i32 @pager_init(i8* %10)
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = call i32 @handle_options(i32* %4, i8*** %5)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* @help, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %2
  %23 = call i32 (...) @cmd_usage()
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @handle_internal_command(i32 %25, i8** %26)
  ret i32 0
}

declare dso_local i32 @exec_cmd_init(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @pager_init(i8*) #1

declare dso_local i32 @handle_options(i32*, i8***) #1

declare dso_local i32 @cmd_usage(...) #1

declare dso_local i32 @handle_internal_command(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
