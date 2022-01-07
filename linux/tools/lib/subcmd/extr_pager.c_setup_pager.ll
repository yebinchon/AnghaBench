; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_pager.c_setup_pager.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_pager.c_setup_pager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i8**, i32, i32 }
%struct.winsize = type { i32 }

@subcmd_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@forced_pager = common dso_local global i8* null, align 8
@TIOCGWINSZ = common dso_local global i32 0, align 4
@pager_columns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/usr/bin/pager\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"/usr/bin/less\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@spawned_pager = common dso_local global i32 0, align 4
@pager_argv = common dso_local global i8** null, align 8
@pager_process = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@pager_preexec = common dso_local global i32 0, align 4
@wait_for_pager_signal = common dso_local global i32 0, align 4
@wait_for_pager = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_pager() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.winsize, align 4
  %3 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @subcmd_config, i32 0, i32 0), align 8
  %4 = call i8* @getenv(i8* %3)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** @forced_pager, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i8*, i8** @forced_pager, align 8
  store i8* %8, i8** %1, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i64 @isatty(i32 1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load i8*, i8** @forced_pager, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %81

16:                                               ; preds = %12, %9
  %17 = load i32, i32* @TIOCGWINSZ, align 4
  %18 = call i64 @ioctl(i32 1, i32 %17, %struct.winsize* %2)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.winsize, %struct.winsize* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @pager_columns, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %1, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %1, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i8*, i8** %1, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @X_OK, align 4
  %33 = call i64 @access(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %36

36:                                               ; preds = %35, %31, %28
  %37 = load i8*, i8** %1, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @X_OK, align 4
  %41 = call i64 @access(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %44

44:                                               ; preds = %43, %39, %36
  %45 = load i8*, i8** %1, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i8*, i8** %1, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %1, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %48
  br label %81

57:                                               ; preds = %52
  store i32 1, i32* @spawned_pager, align 4
  %58 = load i8*, i8** %1, align 8
  %59 = load i8**, i8*** @pager_argv, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  store i8* %58, i8** %60, align 8
  %61 = load i8**, i8*** @pager_argv, align 8
  store i8** %61, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pager_process, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pager_process, i32 0, i32 1), align 8
  %62 = load i32, i32* @pager_preexec, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pager_process, i32 0, i32 2), align 4
  %63 = call i64 @start_command(%struct.TYPE_5__* @pager_process)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %81

66:                                               ; preds = %57
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pager_process, i32 0, i32 1), align 8
  %68 = call i32 @dup2(i32 %67, i32 1)
  %69 = call i64 @isatty(i32 2)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pager_process, i32 0, i32 1), align 8
  %73 = call i32 @dup2(i32 %72, i32 2)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pager_process, i32 0, i32 1), align 8
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* @wait_for_pager_signal, align 4
  %78 = call i32 @sigchain_push_common(i32 %77)
  %79 = load i32, i32* @wait_for_pager, align 4
  %80 = call i32 @atexit(i32 %79)
  br label %81

81:                                               ; preds = %74, %65, %56, %15
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @start_command(%struct.TYPE_5__*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sigchain_push_common(i32) #1

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
