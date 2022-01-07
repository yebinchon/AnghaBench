; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_ip_arg.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_ip_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_print_arg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, i8*, i8*, i32, %struct.tep_event*, %struct.tep_print_arg*)* @print_ip_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_ip_arg(%struct.trace_seq* %0, i8* %1, i8* %2, i32 %3, %struct.tep_event* %4, %struct.tep_print_arg* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tep_event*, align 8
  %13 = alloca %struct.tep_print_arg*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.tep_event* %4, %struct.tep_event** %12, align 8
  store %struct.tep_print_arg* %5, %struct.tep_print_arg** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %14, align 1
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %16, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %16, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %15, align 1
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  %27 = load i32, i32* %16, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %16, align 4
  %29 = load i8, i8* %15, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %64 [
    i32 52, label %31
    i32 54, label %42
    i32 83, label %53
  ]

31:                                               ; preds = %6
  %32 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %14, align 1
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.tep_event*, %struct.tep_event** %12, align 8
  %38 = load %struct.tep_print_arg*, %struct.tep_print_arg** %13, align 8
  %39 = call i32 @print_ipv4_arg(%struct.trace_seq* %32, i8* %33, i8 signext %34, i8* %35, i32 %36, %struct.tep_event* %37, %struct.tep_print_arg* %38)
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %16, align 4
  br label %65

42:                                               ; preds = %6
  %43 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %14, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.tep_event*, %struct.tep_event** %12, align 8
  %49 = load %struct.tep_print_arg*, %struct.tep_print_arg** %13, align 8
  %50 = call i32 @print_ipv6_arg(%struct.trace_seq* %43, i8* %44, i8 signext %45, i8* %46, i32 %47, %struct.tep_event* %48, %struct.tep_print_arg* %49)
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %16, align 4
  br label %65

53:                                               ; preds = %6
  %54 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %14, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.tep_event*, %struct.tep_event** %12, align 8
  %60 = load %struct.tep_print_arg*, %struct.tep_print_arg** %13, align 8
  %61 = call i32 @print_ipsa_arg(%struct.trace_seq* %54, i8* %55, i8 signext %56, i8* %57, i32 %58, %struct.tep_event* %59, %struct.tep_print_arg* %60)
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %16, align 4
  br label %65

64:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %67

65:                                               ; preds = %53, %42, %31
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @print_ipv4_arg(%struct.trace_seq*, i8*, i8 signext, i8*, i32, %struct.tep_event*, %struct.tep_print_arg*) #1

declare dso_local i32 @print_ipv6_arg(%struct.trace_seq*, i8*, i8 signext, i8*, i32, %struct.tep_event*, %struct.tep_print_arg*) #1

declare dso_local i32 @print_ipsa_arg(%struct.trace_seq*, i8*, i8 signext, i8*, i32, %struct.tep_event*, %struct.tep_print_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
