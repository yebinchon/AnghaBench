; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* }
%struct.bpf_lwt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@NO_REDIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"orig_output not set on dst for prog %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @bpf_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.bpf_lwt*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %11)
  store %struct.dst_entry* %12, %struct.dst_entry** %8, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.TYPE_4__* %15)
  store %struct.bpf_lwt* %16, %struct.bpf_lwt** %9, align 8
  %17 = load %struct.bpf_lwt*, %struct.bpf_lwt** %9, align 8
  %18 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.bpf_lwt*, %struct.bpf_lwt** %9, align 8
  %25 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %24, i32 0, i32 0
  %26 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %27 = load i32, i32* @NO_REDIRECT, align 4
  %28 = call i32 @run_lwt_bpf(%struct.sk_buff* %23, %struct.TYPE_3__* %25, %struct.dst_entry* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %38, align 8
  %40 = icmp ne i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load %struct.bpf_lwt*, %struct.bpf_lwt** %9, align 8
  %47 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_warn_once(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %34
  %56 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %57 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %59, align 8
  %61 = load %struct.net*, %struct.net** %5, align 8
  %62 = load %struct.sock*, %struct.sock** %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 %60(%struct.net* %61, %struct.sock* %62, %struct.sk_buff* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %55, %45, %31
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.TYPE_4__*) #1

declare dso_local i32 @run_lwt_bpf(%struct.sk_buff*, %struct.TYPE_3__*, %struct.dst_entry*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn_once(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
