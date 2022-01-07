; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_stackleak_plugin.c_stackleak_cleanup_execute.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_stackleak_plugin.c_stackleak_cleanup_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@PARALLEL = common dso_local global i64 0, align 8
@CALL = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@track_function_decl = common dso_local global i64 0, align 8
@NOTE = common dso_local global i64 0, align 8
@NOTE_INSN_CALL_ARG_LOCATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @stackleak_cleanup_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stackleak_cleanup_execute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %70

10:                                               ; preds = %0
  %11 = call i64 (...) @large_stack_frame()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %70

14:                                               ; preds = %10
  %15 = call i32* (...) @get_insns()
  store i32* %15, i32** %2, align 8
  br label %16

16:                                               ; preds = %67, %14
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %69

19:                                               ; preds = %16
  %20 = load i32*, i32** %2, align 8
  %21 = call i32* @NEXT_INSN(i32* %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @CALL_P(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %67

26:                                               ; preds = %19
  %27 = load i32*, i32** %2, align 8
  %28 = call i32* @PATTERN(i32* %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @GET_CODE(i32* %29)
  %31 = load i64, i64* @PARALLEL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @XVECEXP(i32* %34, i32 0, i32 0)
  store i32* %35, i32** %4, align 8
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @GET_CODE(i32* %37)
  %39 = load i64, i64* @CALL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %67

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = call i32* @XEXP(i32* %43, i32 0)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @GET_CODE(i32* %45)
  %47 = load i64, i64* @MEM, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %67

50:                                               ; preds = %42
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* @XEXP(i32* %51, i32 0)
  store i32* %52, i32** %4, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @GET_CODE(i32* %53)
  %55 = load i64, i64* @SYMBOL_REF, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %67

58:                                               ; preds = %50
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @SYMBOL_REF_DECL(i32* %59)
  %61 = load i64, i64* @track_function_decl, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @delete_insn_and_edges(i32* %65)
  br label %67

67:                                               ; preds = %64, %63, %57, %49, %41, %25
  %68 = load i32*, i32** %3, align 8
  store i32* %68, i32** %2, align 8
  br label %16

69:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %69, %13, %9
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i64 @large_stack_frame(...) #1

declare dso_local i32* @get_insns(...) #1

declare dso_local i32* @NEXT_INSN(i32*) #1

declare dso_local i32 @CALL_P(i32*) #1

declare dso_local i32* @PATTERN(i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @XVECEXP(i32*, i32, i32) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i64 @SYMBOL_REF_DECL(i32*) #1

declare dso_local i32 @delete_insn_and_edges(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
