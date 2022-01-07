; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_flow_dissector_load.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_flow_dissector_load.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"adp:s:\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"attach/detach are exclusive\00", align 1
@cfg_path_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"only one prog name can be given\00", align 1
@optarg = common dso_local global i8* null, align 8
@cfg_section_name = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"only one section can be given\00", align 1
@cfg_attach = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"must provide a path to the BPF program\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"must provide a section name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %3, align 4
  %10 = load i8**, i8*** %4, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %41 [
    i32 97, label %15
    i32 100, label %21
    i32 112, label %27
    i32 115, label %34
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  store i32 1, i32* %5, align 4
  br label %41

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  store i32 1, i32* %6, align 4
  br label %41

27:                                               ; preds = %13
  %28 = load i8*, i8** @cfg_path_name, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @cfg_path_name, align 8
  br label %41

34:                                               ; preds = %13
  %35 = load i8*, i8** @cfg_section_name, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** @cfg_section_name, align 8
  br label %41

41:                                               ; preds = %13, %39, %32, %26, %20
  br label %8

42:                                               ; preds = %8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* @cfg_attach, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* @cfg_attach, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i8*, i8** @cfg_path_name, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49, %46
  %55 = load i32, i32* @cfg_attach, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** @cfg_section_name, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57, %54
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
