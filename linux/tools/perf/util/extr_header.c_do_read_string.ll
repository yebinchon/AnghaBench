; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_read_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_do_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.feat_fd*)* @do_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_read_string(%struct.feat_fd* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.feat_fd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.feat_fd* %0, %struct.feat_fd** %3, align 8
  %6 = load %struct.feat_fd*, %struct.feat_fd** %3, align 8
  %7 = call i64 @do_read_u32(%struct.feat_fd* %6, i32* %4)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @malloc(i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %27

16:                                               ; preds = %10
  %17 = load %struct.feat_fd*, %struct.feat_fd** %3, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__do_read(%struct.feat_fd* %17, i8* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %2, align 8
  br label %27

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @free(i8* %25)
  store i8* null, i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %22, %15, %9
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i64 @do_read_u32(%struct.feat_fd*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @__do_read(%struct.feat_fd*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
