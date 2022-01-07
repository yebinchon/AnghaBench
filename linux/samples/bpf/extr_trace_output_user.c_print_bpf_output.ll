; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_trace_output_user.c_print_bpf_output.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_trace_output_user.c_print_bpf_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"BUG pid %llx cookie %llx sized %d\0A\00", align 1
@cnt = common dso_local global i64 0, align 8
@MAX_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"recv %lld events per sec\0A\00", align 1
@start_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @print_bpf_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bpf_output(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.anon*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.anon*
  store %struct.anon* %11, %struct.anon** %9, align 8
  %12 = load %struct.anon*, %struct.anon** %9, align 8
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 305419896
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.anon*, %struct.anon** %9, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.anon*, %struct.anon** %9, align 8
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %23, i32 %24)
  br label %40

26:                                               ; preds = %4
  %27 = load i64, i64* @cnt, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @cnt, align 8
  %29 = load i64, i64* @cnt, align 8
  %30 = load i64, i64* @MAX_CNT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i64, i64* @MAX_CNT, align 8
  %34 = mul nsw i64 %33, 1000000000
  %35 = call i64 (...) @time_get_ns()
  %36 = load i64, i64* @start_time, align 8
  %37 = sub nsw i64 %35, %36
  %38 = sdiv i64 %34, %37
  %39 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %16, %32, %26
  ret void
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i64 @time_get_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
