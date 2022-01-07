; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_print_entry_error.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_print_entry_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"key:%c\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"value:%c%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map_info*, i8*, i8*)* @print_entry_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_entry_error(%struct.bpf_map_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bpf_map_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_map_info* %0, %struct.bpf_map_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 16
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 16
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i1 [ true, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %23 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp sle i32 %26, 24
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %19
  %33 = phi i1 [ false, %19 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 10, i32 32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @stdout, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.bpf_map_info*, %struct.bpf_map_info** %4, align 8
  %43 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fprint_hex(i32 %40, i8* %41, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %50 = call i32 (i8*, ...) @printf(i8* %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 10, i32 32
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %54, i8* %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fprint_hex(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
