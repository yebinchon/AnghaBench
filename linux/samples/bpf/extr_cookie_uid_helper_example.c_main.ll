; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_cookie_uid_helper_example.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_cookie_uid_helper_example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unknown option %c\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"register SIGINT handler failed\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"register SIGTERM handler failed\00", align 1
@test_finish = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@prog_fd = common dso_local global i32 0, align 4
@map_fd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 3
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @usage()
  store i32 %12, i32* %3, align 4
  br label %76

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %23 [
    i32 116, label %21
    i32 115, label %22
  ]

21:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %27

22:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %76

27:                                               ; preds = %22, %21
  br label %14

28:                                               ; preds = %14
  %29 = call i32 (...) @maps_create()
  %30 = call i32 (...) @prog_load()
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @prog_attach_iptables(i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %28
  %38 = load i32, i32* @SIGINT, align 4
  %39 = load i32, i32* @finish, align 4
  %40 = call i64 @signal(i32 %38, i32 %39)
  %41 = load i64, i64* @SIG_ERR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @error(i32 1, i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @SIGTERM, align 4
  %48 = load i32, i32* @finish, align 4
  %49 = call i64 @signal(i32 %47, i32 %48)
  %50 = load i64, i64* @SIG_ERR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @error(i32 1, i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i32, i32* @test_finish, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = call i32 (...) @print_table()
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 @sleep(i32 1)
  br label %56

64:                                               ; preds = %56
  br label %71

65:                                               ; preds = %28
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (...) @udp_client()
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, i32* @prog_fd, align 4
  %73 = call i32 @close(i32 %72)
  %74 = load i32, i32* @map_fd, align 4
  %75 = call i32 @close(i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %23, %11
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @maps_create(...) #1

declare dso_local i32 @prog_load(...) #1

declare dso_local i32 @prog_attach_iptables(i8*) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @print_table(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @udp_client(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
