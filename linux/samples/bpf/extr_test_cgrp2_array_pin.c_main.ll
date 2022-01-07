; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_array_pin.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_array_pin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"F:U:v:\00", align 1
@optarg = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"open(%s,...): %s(%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_MAP_TYPE_CGROUP_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"bpf_create_map(BPF_MAP_TYPE_CGROUP_ARRAY,...): %s(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"bpf_obj_get(%s): %s(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bpf_map_update_elem\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"bpf_obj_pin(..., %s): %s(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %14

14:                                               ; preds = %29, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %13, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %27 [
    i32 70, label %21
    i32 85, label %23
    i32 118, label %25
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %6, align 8
  br label %29

23:                                               ; preds = %19
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %7, align 8
  br label %29

27:                                               ; preds = %19
  %28 = call i32 (...) @usage()
  br label %104

29:                                               ; preds = %25, %23, %21
  br label %14

30:                                               ; preds = %14
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %30
  %37 = call i32 (...) @usage()
  br label %104

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @O_RDONLY, align 4
  %41 = call i32 @open(i8* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %48, i32 %49)
  br label %104

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32, i32* @BPF_MAP_TYPE_CGROUP_ARRAY, align 4
  %56 = call i32 @bpf_create_map(i32 %55, i32 4, i32 4, i32 1, i32 0)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* @errno, align 4
  %62 = call i8* @strerror(i32 %61)
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %63)
  br label %104

65:                                               ; preds = %54
  br label %79

66:                                               ; preds = %51
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @bpf_obj_get(i8* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i8* @strerror(i32 %74)
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %75, i32 %76)
  br label %104

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @bpf_map_update_elem(i32 %80, i32* %9, i32* %11, i32 0)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %104

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @bpf_obj_pin(i32 %90, i8* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i32, i32* @stderr, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @errno, align 4
  %99 = call i8* @strerror(i32 %98)
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %97, i8* %99, i32 %100)
  br label %104

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %95, %84, %71, %59, %44, %36, %27
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @close(i32 %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @close(i32 %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %12, align 4
  ret i32 %117
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bpf_obj_get(i8*) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @bpf_obj_pin(i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
