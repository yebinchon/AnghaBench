; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_list_rotate.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_bpf_lru_list.c___bpf_lru_list_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lru = type { i32 }
%struct.bpf_lru_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_lru*, %struct.bpf_lru_list*)* @__bpf_lru_list_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bpf_lru_list_rotate(%struct.bpf_lru* %0, %struct.bpf_lru_list* %1) #0 {
  %3 = alloca %struct.bpf_lru*, align 8
  %4 = alloca %struct.bpf_lru_list*, align 8
  store %struct.bpf_lru* %0, %struct.bpf_lru** %3, align 8
  store %struct.bpf_lru_list* %1, %struct.bpf_lru_list** %4, align 8
  %5 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %6 = call i64 @bpf_lru_list_inactive_low(%struct.bpf_lru_list* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.bpf_lru*, %struct.bpf_lru** %3, align 8
  %10 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %11 = call i32 @__bpf_lru_list_rotate_active(%struct.bpf_lru* %9, %struct.bpf_lru_list* %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load %struct.bpf_lru*, %struct.bpf_lru** %3, align 8
  %14 = load %struct.bpf_lru_list*, %struct.bpf_lru_list** %4, align 8
  %15 = call i32 @__bpf_lru_list_rotate_inactive(%struct.bpf_lru* %13, %struct.bpf_lru_list* %14)
  ret void
}

declare dso_local i64 @bpf_lru_list_inactive_low(%struct.bpf_lru_list*) #1

declare dso_local i32 @__bpf_lru_list_rotate_active(%struct.bpf_lru*, %struct.bpf_lru_list*) #1

declare dso_local i32 @__bpf_lru_list_rotate_inactive(%struct.bpf_lru*, %struct.bpf_lru_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
