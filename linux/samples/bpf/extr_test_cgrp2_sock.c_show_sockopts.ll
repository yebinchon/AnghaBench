; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_sock.c_show_sockopts.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_cgrp2_sock.c_show_sockopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"sd %d: dev %s, mark %u, priority %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @show_sockopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_sockopts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = call i32 @socket(i32 %8, i32 %9, i32 17)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %18 = call i64 @get_bind_to_device(i32 %16, i8* %17, i32 16)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %33

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @get_somark(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_priority(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %29, i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %21, %20, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @get_bind_to_device(i32, i8*, i32) #1

declare dso_local i32 @get_somark(i32) #1

declare dso_local i32 @get_priority(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
