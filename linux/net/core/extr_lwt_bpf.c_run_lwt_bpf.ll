; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_run_lwt_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_run_lwt_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bpf_lwt_prog = type { i32, i32 }
%struct.dst_entry = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Illegal redirect return code in prog %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"bpf-lwt: Illegal return value %u, expect packet loss\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.bpf_lwt_prog*, %struct.dst_entry*, i32)* @run_lwt_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_lwt_bpf(%struct.sk_buff* %0, %struct.bpf_lwt_prog* %1, %struct.dst_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bpf_lwt_prog*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.bpf_lwt_prog* %1, %struct.bpf_lwt_prog** %6, align 8
  store %struct.dst_entry* %2, %struct.dst_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @preempt_disable()
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @bpf_compute_data_pointers(%struct.sk_buff* %11)
  %13 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %6, align 8
  %14 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @bpf_prog_run_save_cb(i32 %15, %struct.sk_buff* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %54 [
    i32 129, label %19
    i32 130, label %19
    i32 128, label %20
    i32 131, label %49
  ]

19:                                               ; preds = %4, %4
  br label %61

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @unlikely(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %6, align 8
  %29 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = sext i32 %30 to i64
  %34 = inttoptr i64 %33 to i8*
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i8* [ %34, %32 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %35 ]
  %38 = call i32 (i8*, ...) @pr_warn_once(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 129, i32* %9, align 4
  br label %48

39:                                               ; preds = %20
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_reset_mac_header(%struct.sk_buff* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_do_redirect(%struct.sk_buff* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 128, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %36
  br label %61

49:                                               ; preds = %4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %61

54:                                               ; preds = %4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i8*, ...) @pr_warn_once(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %54, %49, %48, %19
  %62 = call i32 (...) @preempt_enable()
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @bpf_compute_data_pointers(%struct.sk_buff*) #1

declare dso_local i32 @bpf_prog_run_save_cb(i32, %struct.sk_buff*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @pr_warn_once(i8*, ...) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_do_redirect(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
