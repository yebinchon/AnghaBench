; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_put_nla_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_put_nla_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.seg6_local_lwt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@SEG6_LOCAL_BPF = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@SEG6_LOCAL_BPF_PROG = common dso_local global i32 0, align 4
@SEG6_LOCAL_BPF_PROG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.seg6_local_lwt*)* @put_nla_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_nla_bpf(%struct.sk_buff* %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %7 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %8 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @SEG6_LOCAL_BPF, align 4
  %16 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %6, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %13
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @SEG6_LOCAL_BPF_PROG, align 4
  %25 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %26 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %23, i32 %24, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @EMSGSIZE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %22
  %39 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %40 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @SEG6_LOCAL_BPF_PROG_NAME, align 4
  %47 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %48 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @nla_put_string(%struct.sk_buff* %45, i32 %46, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %44, %38
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %59 = call i32 @nla_nest_end(%struct.sk_buff* %57, %struct.nlattr* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %53, %35, %19, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
