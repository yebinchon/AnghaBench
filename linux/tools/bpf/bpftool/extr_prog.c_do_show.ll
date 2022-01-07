; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_do_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_do_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_pinned = common dso_local global i64 0, align 8
@prog_table = common dso_local global i32 0, align 4
@BPF_OBJ_PROG = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"can't get next program: %s%s\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c" -- kernel too old?\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"can't get prog by id (%u): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load i64, i64* @show_pinned, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @BPF_OBJ_PROG, align 4
  %13 = call i32 @build_pinned_obj_table(i32* @prog_table, i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = call i32 @prog_parse_fd(i32* %4, i8*** %5)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %91

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @show_prog(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @close(i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %91

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @BAD_ARG()
  store i32 %32, i32* %3, align 4
  br label %91

33:                                               ; preds = %28
  %34 = load i64, i64* @json_output, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @json_wtr, align 4
  %38 = call i32 @jsonw_start_array(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %68, %82
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @bpf_prog_get_next_id(i8* %41, i8** %6)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @ENOENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %83

50:                                               ; preds = %45
  %51 = load i64, i64* @errno, align 8
  %52 = call i8* @strerror(i64 %51)
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EINVAL, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 @p_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %57)
  store i32 -1, i32* %7, align 4
  br label %83

59:                                               ; preds = %40
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @bpf_prog_get_fd_by_id(i8* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @ENOENT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %40

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* @errno, align 8
  %72 = call i8* @strerror(i64 %71)
  %73 = call i32 @p_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %70, i8* %72)
  store i32 -1, i32* %7, align 4
  br label %83

74:                                               ; preds = %59
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @show_prog(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @close(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %83

82:                                               ; preds = %74
  br label %40

83:                                               ; preds = %81, %69, %50, %49
  %84 = load i64, i64* @json_output, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @json_wtr, align 4
  %88 = call i32 @jsonw_end_array(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %31, %22, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @build_pinned_obj_table(i32*, i32) #1

declare dso_local i32 @prog_parse_fd(i32*, i8***) #1

declare dso_local i32 @show_prog(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @BAD_ARG(...) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @bpf_prog_get_next_id(i8*, i8**) #1

declare dso_local i32 @p_err(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @bpf_prog_get_fd_by_id(i8*) #1

declare dso_local i32 @jsonw_end_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
