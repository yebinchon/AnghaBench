; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_net_parse_dev.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_net.c_net_parse_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid devname %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"expected 'dev', got: '%s'?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8***)* @net_parse_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_parse_dev(i32* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %7 = load i8***, i8**** %5, align 8
  %8 = load i8**, i8*** %7, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @is_prefix(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = call i32 (...) @NEXT_ARGP()
  %14 = load i8***, i8**** %5, align 8
  %15 = load i8**, i8*** %14, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @if_nametoindex(i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load i8***, i8**** %5, align 8
  %22 = load i8**, i8*** %21, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @p_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = call i32 (...) @NEXT_ARGP()
  br label %32

27:                                               ; preds = %2
  %28 = load i8***, i8**** %5, align 8
  %29 = load i8**, i8*** %28, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @p_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  store i32 -1, i32* %3, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @is_prefix(i8*, i8*) #1

declare dso_local i32 @NEXT_ARGP(...) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @p_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
