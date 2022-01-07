; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_lwt_seg6local.c___inspect_t.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_lwt_seg6local.c___inspect_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.ip6_srh_t = type { i64, i64, i32 }

@BPF_DROP = common dso_local global i32 0, align 4
@SEG6_LOCAL_ACTION_END_T = common dso_local global i32 0, align 4
@BPF_REDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__inspect_t(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca %struct.ip6_srh_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %7 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %8 = call %struct.ip6_srh_t* @get_srh(%struct.__sk_buff* %7)
  store %struct.ip6_srh_t* %8, %struct.ip6_srh_t** %4, align 8
  store i32 117, i32* %5, align 4
  %9 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %4, align 8
  %10 = icmp eq %struct.ip6_srh_t* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @BPF_DROP, align 4
  store i32 %12, i32* %2, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %4, align 8
  %15 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @BPF_DROP, align 4
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %13
  %21 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %4, align 8
  %22 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @bpf_htons(i32 2442)
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @BPF_DROP, align 4
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %20
  %29 = load %struct.ip6_srh_t*, %struct.ip6_srh_t** %4, align 8
  %30 = getelementptr inbounds %struct.ip6_srh_t, %struct.ip6_srh_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @BPF_DROP, align 4
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %28
  %36 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %37 = load i32, i32* @SEG6_LOCAL_ACTION_END_T, align 4
  %38 = bitcast i32* %5 to i8*
  %39 = call i32 @bpf_lwt_seg6_action(%struct.__sk_buff* %36, i32 %37, i8* %38, i32 4)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @BPF_DROP, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @BPF_REDIRECT, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42, %33, %26, %18, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ip6_srh_t* @get_srh(%struct.__sk_buff*) #1

declare dso_local i64 @bpf_htons(i32) #1

declare dso_local i32 @bpf_lwt_seg6_action(%struct.__sk_buff*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
