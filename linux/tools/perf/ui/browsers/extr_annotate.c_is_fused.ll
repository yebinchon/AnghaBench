; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_is_fused.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_annotate.c_is_fused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.annotate_browser = type { i32 }
%struct.disasm_line = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@al = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotate_browser*, %struct.disasm_line*)* @is_fused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_fused(%struct.annotate_browser* %0, %struct.disasm_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.annotate_browser*, align 8
  %5 = alloca %struct.disasm_line*, align 8
  %6 = alloca %struct.disasm_line*, align 8
  %7 = alloca i8*, align 8
  store %struct.annotate_browser* %0, %struct.annotate_browser** %4, align 8
  store %struct.disasm_line* %1, %struct.disasm_line** %5, align 8
  %8 = load %struct.disasm_line*, %struct.disasm_line** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @al, i32 0, i32 0), align 4
  %10 = call %struct.disasm_line* @list_prev_entry(%struct.disasm_line* %8, i32 %9)
  store %struct.disasm_line* %10, %struct.disasm_line** %6, align 8
  %11 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %12 = icmp ne %struct.disasm_line* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %16 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %15, i32 0, i32 0
  %17 = call i64 @ins__is_lock(%struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %21 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.disasm_line*, %struct.disasm_line** %6, align 8
  %28 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.disasm_line*, %struct.disasm_line** %5, align 8
  %36 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %31
  store i32 0, i32* %3, align 4
  br label %51

41:                                               ; preds = %34
  %42 = load %struct.annotate_browser*, %struct.annotate_browser** %4, align 8
  %43 = getelementptr inbounds %struct.annotate_browser, %struct.annotate_browser* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.disasm_line*, %struct.disasm_line** %5, align 8
  %47 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @ins__is_fused(i32 %44, i8* %45, i8* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %41, %40, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.disasm_line* @list_prev_entry(%struct.disasm_line*, i32) #1

declare dso_local i64 @ins__is_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @ins__is_fused(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
