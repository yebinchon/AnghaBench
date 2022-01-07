; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower.c_print_help.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpupower.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [56 x i8] c"Usage:\09cpupower [-c|--cpu cpulist ] <command> [<args>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Supported commands are:\0A\00", align 1
@commands = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"\0ANot all commands can make use of the -c cpulist option.\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"\0AUse 'cpupower help <command>' for getting help for above commands.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_help() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* %2)
  %4 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %19, %0
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @commands, align 8
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %6

22:                                               ; preds = %6
  %23 = call i8* @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* %23)
  %25 = call i8* @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* %25)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
