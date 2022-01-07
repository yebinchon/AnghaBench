; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_exec-cmd.c_setup_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_exec-cmd.c_setup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@argv0_path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"/usr/local/bin:/usr/bin:/bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_path() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %1, align 8
  store i8* null, i8** %2, align 8
  %5 = call i8* (...) @get_argv_exec_path()
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @add_path(i8** %2, i8* %6)
  %8 = load i8*, i8** @argv0_path, align 8
  %9 = call i32 @add_path(i8** %2, i8* %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @free(i8* %10)
  %12 = load i8*, i8** %1, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i8*, i8** %1, align 8
  %16 = call i32 @astrcat(i8** %2, i8* %15)
  br label %19

17:                                               ; preds = %0
  %18 = call i32 @astrcat(i8** %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %20, i32 1)
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @free(i8* %22)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @get_argv_exec_path(...) #1

declare dso_local i32 @add_path(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @astrcat(i8**, i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
