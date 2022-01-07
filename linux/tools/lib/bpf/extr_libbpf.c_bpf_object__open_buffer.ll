; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__open_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__open_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%lx-%lx\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"loading object '%s' from buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_object* @bpf_object__open_buffer(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ule i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store %struct.bpf_object* null, %struct.bpf_object** %4, align 8
  br label %32

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %20 = load i8*, i8** %5, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @snprintf(i8* %19, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.bpf_object* @__bpf_object__open(i8* %28, i8* %29, i64 %30, i32 1, i32 1)
  store %struct.bpf_object* %31, %struct.bpf_object** %4, align 8
  br label %32

32:                                               ; preds = %25, %14
  %33 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  ret %struct.bpf_object* %33
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.bpf_object* @__bpf_object__open(i8*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
