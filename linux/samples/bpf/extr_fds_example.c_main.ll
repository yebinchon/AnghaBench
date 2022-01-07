; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_fds_example.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_fds_example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_M_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"F:PGmk:v:po:\00", align 1
@optarg = common dso_local global i8* null, align 8
@BPF_F_PIN = common dso_local global i32 0, align 4
@BPF_F_GET = common dso_local global i32 0, align 4
@BPF_F_KEY = common dso_local global i32 0, align 4
@BPF_F_VAL = common dso_local global i32 0, align 4
@BPF_F_PIN_GET = common dso_local global i32 0, align 4

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @BPF_M_UNSPEC, align 4
  store i32 %13, i32* %12, align 4
  br label %14

14:                                               ; preds = %48, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %49

19:                                               ; preds = %14
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %47 [
    i32 70, label %21
    i32 80, label %23
    i32 71, label %27
    i32 109, label %31
    i32 107, label %32
    i32 118, label %38
    i32 112, label %44
    i32 111, label %45
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %6, align 8
  br label %48

23:                                               ; preds = %19
  %24 = load i32, i32* @BPF_F_PIN, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %48

27:                                               ; preds = %19
  %28 = load i32, i32* @BPF_F_GET, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %48

31:                                               ; preds = %19
  store i32 129, i32* %12, align 4
  br label %48

32:                                               ; preds = %19
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @strtoul(i8* %33, i32* null, i32 0)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @BPF_F_KEY, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %48

38:                                               ; preds = %19
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @strtoul(i8* %39, i32* null, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @BPF_F_VAL, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %48

44:                                               ; preds = %19
  store i32 128, i32* %12, align 4
  br label %48

45:                                               ; preds = %19
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %7, align 8
  br label %48

47:                                               ; preds = %19
  br label %72

48:                                               ; preds = %45, %44, %38, %32, %31, %27, %23, %21
  br label %14

49:                                               ; preds = %14
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @BPF_F_PIN_GET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54, %49
  br label %72

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %71 [
    i32 129, label %60
    i32 128, label %66
  ]

60:                                               ; preds = %58
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @bpf_do_map(i8* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %74

66:                                               ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @bpf_do_prog(i8* %67, i32 %68, i8* %69)
  store i32 %70, i32* %3, align 4
  br label %74

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %57, %47
  %73 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %66, %60
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @bpf_do_map(i8*, i32, i32, i32) #1

declare dso_local i32 @bpf_do_prog(i8*, i32, i8*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
