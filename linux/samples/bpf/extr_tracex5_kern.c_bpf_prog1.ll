; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex5_kern.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex5_kern.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@progs = common dso_local global i32 0, align 4
@__NR_getuid = common dso_local global i32 0, align 4
@__NR_getsid = common dso_local global i32 0, align 4
@__const.bpf_prog1.fmt = private unnamed_addr constant [41 x i8] c"syscall=%d (one of get/set uid/pid/gid)\0A\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [41 x i8], align 16
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = call i64 @PT_REGS_PARM1(%struct.pt_regs* %5)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @bpf_tail_call(%struct.pt_regs* %8, i32* @progs, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @__NR_getuid, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @__NR_getsid, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = bitcast [41 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 getelementptr inbounds ([41 x i8], [41 x i8]* @__const.bpf_prog1.fmt, i32 0, i32 0), i64 41, i1 false)
  %20 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @bpf_trace_printk(i8* %20, i32 41, i32 %21)
  br label %23

23:                                               ; preds = %18, %14, %1
  ret i32 0
}

declare dso_local i64 @PT_REGS_PARM1(%struct.pt_regs*) #1

declare dso_local i32 @bpf_tail_call(%struct.pt_regs*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bpf_trace_printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
