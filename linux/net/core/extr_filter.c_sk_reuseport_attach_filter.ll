; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_reuseport_attach_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_reuseport_attach_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_fprog = type { i32 }
%struct.sock = type { i32 }
%struct.bpf_prog = type { i32 }

@sysctl_optmem_max = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_reuseport_attach_filter(%struct.sock_fprog* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_fprog*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  store %struct.sock_fprog* %0, %struct.sock_fprog** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %8 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.bpf_prog* @__get_filter(%struct.sock_fprog* %8, %struct.sock* %9)
  store %struct.bpf_prog* %10, %struct.bpf_prog** %6, align 8
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %12 = call i64 @IS_ERR(%struct.bpf_prog* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.bpf_prog* %15)
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bpf_prog_size(i32 %20)
  %22 = load i64, i64* @sysctl_optmem_max, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %17
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %30 = call i32 @reuseport_attach_prog(%struct.sock* %28, %struct.bpf_prog* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %36 = call i32 @__bpf_prog_release(%struct.bpf_prog* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.bpf_prog* @__get_filter(%struct.sock_fprog*, %struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i64 @bpf_prog_size(i32) #1

declare dso_local i32 @reuseport_attach_prog(%struct.sock*, %struct.bpf_prog*) #1

declare dso_local i32 @__bpf_prog_release(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
