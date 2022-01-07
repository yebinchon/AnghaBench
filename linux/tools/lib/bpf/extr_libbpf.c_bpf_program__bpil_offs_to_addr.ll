; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__bpil_offs_to_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program__bpil_offs_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info_array_desc = type { i32 }
%struct.bpf_prog_info_linear = type { i64, i32, i32 }

@BPF_PROG_INFO_FIRST_ARRAY = common dso_local global i32 0, align 4
@BPF_PROG_INFO_LAST_ARRAY = common dso_local global i32 0, align 4
@bpf_prog_info_array_desc = common dso_local global %struct.bpf_prog_info_array_desc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_program__bpil_offs_to_addr(%struct.bpf_prog_info_linear* %0) #0 {
  %2 = alloca %struct.bpf_prog_info_linear*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog_info_array_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bpf_prog_info_linear* %0, %struct.bpf_prog_info_linear** %2, align 8
  %7 = load i32, i32* @BPF_PROG_INFO_FIRST_ARRAY, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %46, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @BPF_PROG_INFO_LAST_ARRAY, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = load %struct.bpf_prog_info_linear*, %struct.bpf_prog_info_linear** %2, align 8
  %14 = getelementptr inbounds %struct.bpf_prog_info_linear, %struct.bpf_prog_info_linear* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %46

22:                                               ; preds = %12
  %23 = load %struct.bpf_prog_info_array_desc*, %struct.bpf_prog_info_array_desc** @bpf_prog_info_array_desc, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bpf_prog_info_array_desc, %struct.bpf_prog_info_array_desc* %23, i64 %25
  store %struct.bpf_prog_info_array_desc* %26, %struct.bpf_prog_info_array_desc** %4, align 8
  %27 = load %struct.bpf_prog_info_linear*, %struct.bpf_prog_info_linear** %2, align 8
  %28 = getelementptr inbounds %struct.bpf_prog_info_linear, %struct.bpf_prog_info_linear* %27, i32 0, i32 1
  %29 = load %struct.bpf_prog_info_array_desc*, %struct.bpf_prog_info_array_desc** %4, align 8
  %30 = getelementptr inbounds %struct.bpf_prog_info_array_desc, %struct.bpf_prog_info_array_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @bpf_prog_info_read_offset_u64(i32* %28, i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.bpf_prog_info_linear*, %struct.bpf_prog_info_linear** %2, align 8
  %35 = getelementptr inbounds %struct.bpf_prog_info_linear, %struct.bpf_prog_info_linear* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ptr_to_u64(i32 %36)
  %38 = add nsw i64 %33, %37
  store i64 %38, i64* %5, align 8
  %39 = load %struct.bpf_prog_info_linear*, %struct.bpf_prog_info_linear** %2, align 8
  %40 = getelementptr inbounds %struct.bpf_prog_info_linear, %struct.bpf_prog_info_linear* %39, i32 0, i32 1
  %41 = load %struct.bpf_prog_info_array_desc*, %struct.bpf_prog_info_array_desc** %4, align 8
  %42 = getelementptr inbounds %struct.bpf_prog_info_array_desc, %struct.bpf_prog_info_array_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @bpf_prog_info_set_offset_u64(i32* %40, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %22, %21
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %8

49:                                               ; preds = %8
  ret void
}

declare dso_local i64 @bpf_prog_info_read_offset_u64(i32*, i32) #1

declare dso_local i64 @ptr_to_u64(i32) #1

declare dso_local i32 @bpf_prog_info_set_offset_u64(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
