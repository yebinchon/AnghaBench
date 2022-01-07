; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ip_defrag.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"46opv\00", align 1
@cfg_do_ipv4 = common dso_local global i32 0, align 4
@cfg_do_ipv6 = common dso_local global i32 0, align 4
@cfg_overlap = common dso_local global i32 0, align 4
@cfg_permissive = common dso_local global i32 0, align 4
@cfg_verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: parse error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %18 [
    i32 52, label %13
    i32 54, label %14
    i32 111, label %15
    i32 112, label %16
    i32 118, label %17
  ]

13:                                               ; preds = %11
  store i32 1, i32* @cfg_do_ipv4, align 4
  br label %23

14:                                               ; preds = %11
  store i32 1, i32* @cfg_do_ipv6, align 4
  br label %23

15:                                               ; preds = %11
  store i32 1, i32* @cfg_overlap, align 4
  br label %23

16:                                               ; preds = %11
  store i32 1, i32* @cfg_permissive, align 4
  br label %23

17:                                               ; preds = %11
  store i32 1, i32* @cfg_verbose, align 4
  br label %23

18:                                               ; preds = %11
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %18, %17, %16, %15, %14, %13
  br label %6

24:                                               ; preds = %6
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
