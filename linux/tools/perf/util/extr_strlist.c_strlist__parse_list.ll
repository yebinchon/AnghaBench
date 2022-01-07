; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strlist.c_strlist__parse_list.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strlist.c_strlist__parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strlist*, i8*, i8*)* @strlist__parse_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strlist__parse_list(%struct.strlist* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strlist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.strlist* %0, %struct.strlist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 44)
  store i8* %12, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i8*, i8** %8, align 8
  store i8 0, i8* %15, align 1
  %16 = load %struct.strlist*, %struct.strlist** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlist__parse_list_entry(%struct.strlist* %16, i8* %17, i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %8, align 8
  store i8 44, i8* %20, align 1
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %14
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %6, align 8
  br label %10

28:                                               ; preds = %10
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.strlist*, %struct.strlist** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strlist__parse_list_entry(%struct.strlist* %34, i8* %35, i8* %36)
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 0, %38 ]
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %23
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlist__parse_list_entry(%struct.strlist*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
