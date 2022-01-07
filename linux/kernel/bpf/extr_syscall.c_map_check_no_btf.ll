; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_map_check_no_btf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_map_check_no_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.btf = type { i32 }
%struct.btf_type = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_check_no_btf(%struct.bpf_map* %0, %struct.btf* %1, %struct.btf_type* %2, %struct.btf_type* %3) #0 {
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca %struct.btf*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca %struct.btf_type*, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %5, align 8
  store %struct.btf* %1, %struct.btf** %6, align 8
  store %struct.btf_type* %2, %struct.btf_type** %7, align 8
  store %struct.btf_type* %3, %struct.btf_type** %8, align 8
  %9 = load i32, i32* @ENOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
