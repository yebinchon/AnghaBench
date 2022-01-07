; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_queue_entry_get_refs.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_queue.c_nf_queue_entry_get_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { i32, %struct.nf_hook_state }
%struct.nf_hook_state = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_queue_entry_get_refs(%struct.nf_queue_entry* %0) #0 {
  %2 = alloca %struct.nf_queue_entry*, align 8
  %3 = alloca %struct.nf_hook_state*, align 8
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %2, align 8
  %4 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %2, align 8
  %5 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %4, i32 0, i32 1
  store %struct.nf_hook_state* %5, %struct.nf_hook_state** %3, align 8
  %6 = load %struct.nf_hook_state*, %struct.nf_hook_state** %3, align 8
  %7 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.nf_hook_state*, %struct.nf_hook_state** %3, align 8
  %12 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @dev_hold(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.nf_hook_state*, %struct.nf_hook_state** %3, align 8
  %17 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.nf_hook_state*, %struct.nf_hook_state** %3, align 8
  %22 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_hold(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.nf_hook_state*, %struct.nf_hook_state** %3, align 8
  %27 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.nf_hook_state*, %struct.nf_hook_state** %3, align 8
  %32 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sock_hold(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %2, align 8
  %37 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @nf_queue_entry_get_br_nf_refs(i32 %38)
  ret void
}

declare dso_local i32 @dev_hold(i64) #1

declare dso_local i32 @sock_hold(i64) #1

declare dso_local i32 @nf_queue_entry_get_br_nf_refs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
