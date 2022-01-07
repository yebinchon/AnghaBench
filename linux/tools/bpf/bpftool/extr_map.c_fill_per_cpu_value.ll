; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_fill_per_cpu_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_map.c_fill_per_cpu_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map_info*, i8*)* @fill_per_cpu_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_per_cpu_value(%struct.bpf_map_info* %0, i8* %1) #0 {
  %3 = alloca %struct.bpf_map_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_map_info* %0, %struct.bpf_map_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.bpf_map_info*, %struct.bpf_map_info** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @map_is_per_cpu(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %39

14:                                               ; preds = %2
  %15 = call i32 (...) @get_possible_cpus()
  store i32 %15, i32* %6, align 4
  %16 = load %struct.bpf_map_info*, %struct.bpf_map_info** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @round_up(i32 %18, i32 8)
  store i32 %19, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %36, %14
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr i8, i8* %25, i64 %29
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.bpf_map_info*, %struct.bpf_map_info** %3, align 8
  %33 = getelementptr inbounds %struct.bpf_map_info, %struct.bpf_map_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i8* %30, i8* %31, i32 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %20

39:                                               ; preds = %13, %20
  ret void
}

declare dso_local i32 @map_is_per_cpu(i32) #1

declare dso_local i32 @get_possible_cpus(...) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
