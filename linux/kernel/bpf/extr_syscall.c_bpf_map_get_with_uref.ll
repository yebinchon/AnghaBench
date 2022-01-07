; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_get_with_uref.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_get_with_uref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.fd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_map* @bpf_map_get_with_uref(i32 %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd, align 4
  %5 = alloca %struct.bpf_map*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @fdget(i32 %6)
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.fd, %struct.fd* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.bpf_map* @__bpf_map_get(i32 %10)
  store %struct.bpf_map* %11, %struct.bpf_map** %5, align 8
  %12 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %13 = call i64 @IS_ERR(%struct.bpf_map* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  store %struct.bpf_map* %16, %struct.bpf_map** %2, align 8
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %19 = call %struct.bpf_map* @bpf_map_inc(%struct.bpf_map* %18, i32 1)
  store %struct.bpf_map* %19, %struct.bpf_map** %5, align 8
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fdput(i32 %21)
  %23 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  store %struct.bpf_map* %23, %struct.bpf_map** %2, align 8
  br label %24

24:                                               ; preds = %17, %15
  %25 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %25
}

declare dso_local i32 @fdget(i32) #1

declare dso_local %struct.bpf_map* @__bpf_map_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map*) #1

declare dso_local %struct.bpf_map* @bpf_map_inc(%struct.bpf_map*, i32) #1

declare dso_local i32 @fdput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
