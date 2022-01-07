; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_run_filter_skb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_run_filter_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32, %struct.sock* }
%struct.cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@__bpf_prog_run_save_cb = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cgroup_bpf_run_filter_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cgroup*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_network_header(%struct.sk_buff* %16)
  %18 = sub i32 %15, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call i32 @sk_fullsock(%struct.sock* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %3
  store i32 0, i32* %4, align 4
  br label %100

26:                                               ; preds = %21
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET6, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %100

39:                                               ; preds = %32, %26
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = call %struct.cgroup* @sock_cgroup_ptr(i32* %41)
  store %struct.cgroup* %42, %struct.cgroup** %11, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load %struct.sock*, %struct.sock** %44, align 8
  store %struct.sock* %45, %struct.sock** %9, align 8
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  store %struct.sock* %46, %struct.sock** %48, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @__skb_push(%struct.sk_buff* %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @bpf_compute_and_save_data_end(%struct.sk_buff* %52, i8** %10)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %39
  %58 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %59 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i32, i32* @__bpf_prog_run_save_cb, align 4
  %68 = call i32 @BPF_PROG_CGROUP_INET_EGRESS_RUN_ARRAY(i32 %65, %struct.sk_buff* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  br label %89

69:                                               ; preds = %39
  %70 = load %struct.cgroup*, %struct.cgroup** %11, align 8
  %71 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load i32, i32* @__bpf_prog_run_save_cb, align 4
  %80 = call i32 @BPF_PROG_RUN_ARRAY(i32 %77, %struct.sk_buff* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %87

84:                                               ; preds = %69
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  br label %87

87:                                               ; preds = %84, %83
  %88 = phi i32 [ 0, %83 ], [ %86, %84 ]
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %57
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @bpf_restore_data_end(%struct.sk_buff* %90, i8* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @__skb_pull(%struct.sk_buff* %93, i32 %94)
  %96 = load %struct.sock*, %struct.sock** %9, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  store %struct.sock* %96, %struct.sock** %98, align 8
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %89, %38, %25
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local %struct.cgroup* @sock_cgroup_ptr(i32*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @bpf_compute_and_save_data_end(%struct.sk_buff*, i8**) #1

declare dso_local i32 @BPF_PROG_CGROUP_INET_EGRESS_RUN_ARRAY(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @BPF_PROG_RUN_ARRAY(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @bpf_restore_data_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
