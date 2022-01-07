; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_lwt_in_func_proto.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_lwt_in_func_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32 }
%struct.bpf_prog = type { i32 }

@bpf_lwt_in_push_encap_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_proto* (i32, %struct.bpf_prog*)* @lwt_in_func_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_proto* @lwt_in_func_proto(i32 %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca %struct.bpf_func_proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %8 [
    i32 128, label %7
  ]

7:                                                ; preds = %2
  store %struct.bpf_func_proto* @bpf_lwt_in_push_encap_proto, %struct.bpf_func_proto** %3, align 8
  br label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %11 = call %struct.bpf_func_proto* @lwt_out_func_proto(i32 %9, %struct.bpf_prog* %10)
  store %struct.bpf_func_proto* %11, %struct.bpf_func_proto** %3, align 8
  br label %12

12:                                               ; preds = %8, %7
  %13 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  ret %struct.bpf_func_proto* %13
}

declare dso_local %struct.bpf_func_proto* @lwt_out_func_proto(i32, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
