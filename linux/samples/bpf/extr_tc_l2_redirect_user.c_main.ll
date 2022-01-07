; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tc_l2_redirect_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tc_l2_redirect_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"F:U:i:\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bpf_obj_get(%s): %s(%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"bpf_map_update_elem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %24 [
    i32 85, label %19
    i32 105, label %21
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %6, align 8
  br label %26

21:                                               ; preds = %17
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @atoi(i8* %22)
  store i32 %23, i32* %7, align 4
  br label %26

24:                                               ; preds = %17
  %25 = call i32 (...) @usage()
  br label %55

26:                                               ; preds = %21, %19
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %27
  %34 = call i32 (...) @usage()
  br label %55

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @bpf_obj_get(i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i8* @strerror(i32 %43)
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %44, i32 %45)
  br label %55

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @bpf_map_update_elem(i32 %48, i32* %8, i32* %7, i32 0)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %52, %40, %33, %24
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @close(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @bpf_obj_get(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
