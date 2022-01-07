; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseaddr_conflict.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseaddr_conflict.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Opening 127.0.0.1:%d\0A\00", align 1
@PORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't open listen socket\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Opening INADDR_ANY:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"Was allowed to create an ipv4 reuseport on a already bound non-reuseport socket\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Opening in6addr_any:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't open ipv6 reuseport\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Opening INADDR_ANY:%d after closing ipv6 socket\0A\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"Was allowed to create an ipv4 reuseport on an already bound non-reuseport socket with no ipv6\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @stderr, align 4
  %6 = load i32, i32* @PORT, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @open_port(i32 0, i32 0)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @error(i32 1, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* @PORT, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = call i32 @open_port(i32 0, i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @PORT, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = call i32 @open_port(i32 1, i32 1)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @error(i32 1, i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* @PORT, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i32 @open_port(i32 0, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %33
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* @PORT, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = call i32 @open_port(i32 0, i32 1)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @open_port(i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
