; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex1_kern.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex1_kern.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@__const.bpf_prog1.fmt = private unnamed_addr constant [15 x i8] c"skb %p len %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [15 x i8], align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %9 = load i32, i32* @IFNAMSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = call i64 @PT_REGS_PARM1(%struct.pt_regs* %13)
  %15 = inttoptr i64 %14 to %struct.sk_buff*
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @_(i32 %18)
  %20 = bitcast i8* %19 to %struct.net_device*
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @_(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = trunc i64 %10 to i32
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bpf_probe_read(i8* %12, i32 %26, i32 %29)
  %31 = getelementptr inbounds i8, i8* %12, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 108
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = getelementptr inbounds i8, i8* %12, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 111
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = bitcast [15 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.bpf_prog1.fmt, i32 0, i32 0), i64 15, i1 false)
  %42 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @bpf_trace_printk(i8* %42, i32 15, %struct.sk_buff* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %35, %1
  %47 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PT_REGS_PARM1(%struct.pt_regs*) #2

declare dso_local i8* @_(i32) #2

declare dso_local i32 @bpf_probe_read(i8*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @bpf_trace_printk(i8*, i32, %struct.sk_buff*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
