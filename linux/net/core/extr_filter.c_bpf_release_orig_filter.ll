; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_release_orig_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_release_orig_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.sock_fprog_kern* }
%struct.sock_fprog_kern = type { %struct.sock_fprog_kern* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*)* @bpf_release_orig_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_release_orig_filter(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.sock_fprog_kern*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %2, align 8
  %4 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %5 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %4, i32 0, i32 0
  %6 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %5, align 8
  store %struct.sock_fprog_kern* %6, %struct.sock_fprog_kern** %3, align 8
  %7 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %3, align 8
  %8 = icmp ne %struct.sock_fprog_kern* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %3, align 8
  %11 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %10, i32 0, i32 0
  %12 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %11, align 8
  %13 = call i32 @kfree(%struct.sock_fprog_kern* %12)
  %14 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %3, align 8
  %15 = call i32 @kfree(%struct.sock_fprog_kern* %14)
  br label %16

16:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @kfree(%struct.sock_fprog_kern*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
