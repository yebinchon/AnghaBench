; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_find_symbol_cb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_find_symbol_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_symbol_args = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8, i32)* @find_symbol_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_symbol_cb(i8* %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.process_symbol_args*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.process_symbol_args*
  store %struct.process_symbol_args* %12, %struct.process_symbol_args** %10, align 8
  %13 = load i8, i8* %8, align 1
  %14 = call i64 @kallsyms__is_function(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i8, i8* %8, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 65
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %4
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.process_symbol_args*, %struct.process_symbol_args** %10, align 8
  %23 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i8* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %16
  store i32 0, i32* %5, align 4
  br label %32

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.process_symbol_args*, %struct.process_symbol_args** %10, align 8
  %31 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @kallsyms__is_function(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
