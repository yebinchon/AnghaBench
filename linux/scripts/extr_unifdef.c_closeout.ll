; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_closeout.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_unifdef.c_closeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symdepth = common dso_local global i64 0, align 8
@zerosyms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@output = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"couldn't write to %s\00", align 1
@ofilename = common dso_local global i32 0, align 4
@overwriting = common dso_local global i64 0, align 8
@tempname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s unchanged\00", align 1
@filename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @closeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closeout() #0 {
  %1 = load i64, i64* @symdepth, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @zerosyms, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = load i32, i32* @output, align 4
  %10 = call i64 @fclose(i32 %9)
  %11 = load i64, i64* @EOF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load i32, i32* @ofilename, align 4
  %15 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* @overwriting, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @tempname, align 4
  %20 = call i32 @unlink(i32 %19)
  %21 = load i32, i32* @filename, align 4
  %22 = call i32 @errx(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %25

23:                                               ; preds = %13
  %24 = call i32 @exit(i32 2) #3
  unreachable

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @fclose(i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

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
