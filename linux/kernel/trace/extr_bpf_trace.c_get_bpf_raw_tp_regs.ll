; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_get_bpf_raw_tp_regs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_get_bpf_raw_tp_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.bpf_raw_tp_regs = type { %struct.pt_regs* }

@bpf_raw_tp_regs = common dso_local global i32 0, align 4
@bpf_raw_tp_nest_level = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pt_regs* ()* @get_bpf_raw_tp_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pt_regs* @get_bpf_raw_tp_regs() #0 {
  %1 = alloca %struct.pt_regs*, align 8
  %2 = alloca %struct.bpf_raw_tp_regs*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.bpf_raw_tp_regs* @this_cpu_ptr(i32* @bpf_raw_tp_regs)
  store %struct.bpf_raw_tp_regs* %4, %struct.bpf_raw_tp_regs** %2, align 8
  %5 = load i32, i32* @bpf_raw_tp_nest_level, align 4
  %6 = call i32 @this_cpu_inc_return(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.bpf_raw_tp_regs*, %struct.bpf_raw_tp_regs** %2, align 8
  %9 = getelementptr inbounds %struct.bpf_raw_tp_regs, %struct.bpf_raw_tp_regs* %8, i32 0, i32 0
  %10 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.pt_regs* %10)
  %12 = icmp sgt i32 %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %0
  %17 = load i32, i32* @bpf_raw_tp_nest_level, align 4
  %18 = call i32 @this_cpu_dec(i32 %17)
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.pt_regs* @ERR_PTR(i32 %20)
  store %struct.pt_regs* %21, %struct.pt_regs** %1, align 8
  br label %30

22:                                               ; preds = %0
  %23 = load %struct.bpf_raw_tp_regs*, %struct.bpf_raw_tp_regs** %2, align 8
  %24 = getelementptr inbounds %struct.bpf_raw_tp_regs, %struct.bpf_raw_tp_regs* %23, i32 0, i32 0
  %25 = load %struct.pt_regs*, %struct.pt_regs** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i64 %28
  store %struct.pt_regs* %29, %struct.pt_regs** %1, align 8
  br label %30

30:                                               ; preds = %22, %16
  %31 = load %struct.pt_regs*, %struct.pt_regs** %1, align 8
  ret %struct.pt_regs* %31
}

declare dso_local %struct.bpf_raw_tp_regs* @this_cpu_ptr(i32*) #1

declare dso_local i32 @this_cpu_inc_return(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pt_regs*) #1

declare dso_local i32 @this_cpu_dec(i32) #1

declare dso_local %struct.pt_regs* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
