; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe_tmpl.h_print_probe_args.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe_tmpl.h_print_probe_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.probe_arg = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.trace_seq*, i8*, i8*)* }

@.str = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.probe_arg*, i32, i8*, i8*)* @print_probe_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_probe_args(%struct.trace_seq* %0, %struct.probe_arg* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_seq*, align 8
  %8 = alloca %struct.probe_arg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.probe_arg*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %7, align 8
  store %struct.probe_arg* %1, %struct.probe_arg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %111, %5
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %114

20:                                               ; preds = %16
  %21 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %21, i64 %23
  store %struct.probe_arg* %24, %struct.probe_arg** %15, align 8
  %25 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %26 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %27 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @trace_seq_printf(%struct.trace_seq* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %31 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %20
  %39 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %40 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.trace_seq*, i8*, i8*)*, i32 (%struct.trace_seq*, i8*, i8*)** %42, align 8
  %44 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %47 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %45, i64 %49
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 %43(%struct.trace_seq* %44, i8* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %115

57:                                               ; preds = %38
  br label %111

58:                                               ; preds = %20
  %59 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %60 = call i32 @trace_seq_putc(%struct.trace_seq* %59, i8 signext 123)
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %63 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %61, i64 %65
  store i8* %66, i8** %12, align 8
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %107, %58
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %70 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %67
  %74 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %75 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (%struct.trace_seq*, i8*, i8*)*, i32 (%struct.trace_seq*, i8*, i8*)** %77, align 8
  %79 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 %78(%struct.trace_seq* %79, i8* %80, i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %115

87:                                               ; preds = %73
  %88 = load %struct.trace_seq*, %struct.trace_seq** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %91 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %89, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 125, i32 44
  %97 = trunc i32 %96 to i8
  %98 = call i32 @trace_seq_putc(%struct.trace_seq* %88, i8 signext %97)
  %99 = load %struct.probe_arg*, %struct.probe_arg** %15, align 8
  %100 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  store i8* %106, i8** %12, align 8
  br label %107

107:                                              ; preds = %87
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %67

110:                                              ; preds = %67
  br label %111

111:                                              ; preds = %110, %57
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %16

114:                                              ; preds = %16
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %84, %54
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
