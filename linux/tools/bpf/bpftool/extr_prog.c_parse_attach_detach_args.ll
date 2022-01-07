; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_parse_attach_detach_args.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_prog.c_parse_attach_detach_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@__MAX_BPF_ATTACH_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid attach/detach type\00", align 1
@BPF_FLOW_DISSECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, i32*, i32*)* @parse_attach_detach_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_attach_detach_args(i32 %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = call i32 @REQ_ARGS(i32 3)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %63

17:                                               ; preds = %5
  %18 = call i32 @prog_parse_fd(i32* %7, i8*** %8)
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  br label %63

26:                                               ; preds = %17
  %27 = load i8**, i8*** %8, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @parse_attach_type(i8* %28)
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @__MAX_BPF_ATTACH_TYPE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = call i32 @p_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %63

39:                                               ; preds = %26
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BPF_FLOW_DISSECTOR, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32*, i32** %11, align 8
  store i32 -1, i32* %45, align 4
  store i32 0, i32* %6, align 4
  br label %63

46:                                               ; preds = %39
  %47 = call i32 (...) @NEXT_ARG()
  %48 = call i32 @REQ_ARGS(i32 2)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %63

53:                                               ; preds = %46
  %54 = call i32 @map_parse_fd(i32* %7, i8*** %8)
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %59, %50, %44, %35, %23, %14
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @REQ_ARGS(i32) #1

declare dso_local i32 @prog_parse_fd(i32*, i8***) #1

declare dso_local i32 @parse_attach_type(i8*) #1

declare dso_local i32 @p_err(i8*) #1

declare dso_local i32 @NEXT_ARG(...) #1

declare dso_local i32 @map_parse_fd(i32*, i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
