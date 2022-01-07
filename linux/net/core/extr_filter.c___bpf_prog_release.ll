; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_prog_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_prog_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i64 }

@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_prog*)* @__bpf_prog_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bpf_prog_release(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %2, align 8
  %3 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BPF_PROG_TYPE_SOCKET_FILTER, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %10 = call i32 @bpf_prog_put(%struct.bpf_prog* %9)
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %13 = call i32 @bpf_release_orig_filter(%struct.bpf_prog* %12)
  %14 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  %15 = call i32 @bpf_prog_free(%struct.bpf_prog* %14)
  br label %16

16:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_release_orig_filter(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_free(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
