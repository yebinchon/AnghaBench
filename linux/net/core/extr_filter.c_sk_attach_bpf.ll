; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_attach_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_attach_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bpf_prog = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_attach_bpf(i32 %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sock* %1, %struct.sock** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.bpf_prog* @__get_bpf(i32 %8, %struct.sock* %9)
  store %struct.bpf_prog* %10, %struct.bpf_prog** %6, align 8
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %12 = call i64 @IS_ERR(%struct.bpf_prog* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.bpf_prog* %15)
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i32 @__sk_attach_prog(%struct.bpf_prog* %18, %struct.sock* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %25 = call i32 @bpf_prog_put(%struct.bpf_prog* %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.bpf_prog* @__get_bpf(i32, %struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @__sk_attach_prog(%struct.bpf_prog*, %struct.sock*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
