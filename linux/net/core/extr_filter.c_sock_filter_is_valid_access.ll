; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sock_filter_is_valid_access.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sock_filter_is_valid_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_insn_access_aux = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.bpf_prog*, %struct.bpf_insn_access_aux*)* @sock_filter_is_valid_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_filter_is_valid_access(i32 %0, i32 %1, i32 %2, %struct.bpf_prog* %3, %struct.bpf_insn_access_aux* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca %struct.bpf_insn_access_aux*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bpf_prog* %3, %struct.bpf_prog** %10, align 8
  store %struct.bpf_insn_access_aux* %4, %struct.bpf_insn_access_aux** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.bpf_insn_access_aux*, %struct.bpf_insn_access_aux** %11, align 8
  %16 = call i32 @bpf_sock_is_valid_access(i32 %12, i32 %13, i32 %14, %struct.bpf_insn_access_aux* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %26

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %23 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__sock_filter_check_attach_type(i32 %20, i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @bpf_sock_is_valid_access(i32, i32, i32, %struct.bpf_insn_access_aux*) #1

declare dso_local i32 @__sock_filter_check_attach_type(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
