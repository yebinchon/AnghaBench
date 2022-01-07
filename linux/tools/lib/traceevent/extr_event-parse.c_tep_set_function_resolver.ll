; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_set_function_resolver.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_set_function_resolver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { %struct.func_resolver* }
%struct.func_resolver = type { i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_set_function_resolver(%struct.tep_handle* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.func_resolver*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.func_resolver* @malloc(i32 16)
  store %struct.func_resolver* %9, %struct.func_resolver** %8, align 8
  %10 = load %struct.func_resolver*, %struct.func_resolver** %8, align 8
  %11 = icmp eq %struct.func_resolver* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.func_resolver*, %struct.func_resolver** %8, align 8
  %16 = getelementptr inbounds %struct.func_resolver, %struct.func_resolver* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.func_resolver*, %struct.func_resolver** %8, align 8
  %19 = getelementptr inbounds %struct.func_resolver, %struct.func_resolver* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %21 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %20, i32 0, i32 0
  %22 = load %struct.func_resolver*, %struct.func_resolver** %21, align 8
  %23 = call i32 @free(%struct.func_resolver* %22)
  %24 = load %struct.func_resolver*, %struct.func_resolver** %8, align 8
  %25 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %26 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %25, i32 0, i32 0
  store %struct.func_resolver* %24, %struct.func_resolver** %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.func_resolver* @malloc(i32) #1

declare dso_local i32 @free(%struct.func_resolver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
