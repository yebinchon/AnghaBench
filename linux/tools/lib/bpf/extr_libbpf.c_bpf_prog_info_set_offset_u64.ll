; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_prog_info_set_offset_u64.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_prog_info_set_offset_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog_info*, i32, i32)* @bpf_prog_info_set_offset_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_prog_info_set_offset_u64(%struct.bpf_prog_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_prog_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.bpf_prog_info* %0, %struct.bpf_prog_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bpf_prog_info*, %struct.bpf_prog_info** %4, align 8
  %9 = bitcast %struct.bpf_prog_info* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %12, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
