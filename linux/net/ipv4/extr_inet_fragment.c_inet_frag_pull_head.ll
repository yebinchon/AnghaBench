; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_pull_head.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_pull_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.inet_frag_queue = type { i32, %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { %struct.sk_buff* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @inet_frag_pull_head(%struct.inet_frag_queue* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.inet_frag_queue*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %3, align 8
  %6 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %7 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %6, i32 0, i32 2
  %8 = call %struct.sk_buff* @skb_rb_first(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.TYPE_2__* @FRAG_CB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %25 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %24, i32 0, i32 2
  %26 = call i32 @rb_replace_node(i32* %21, i32* %23, i32* %25)
  br label %33

27:                                               ; preds = %12
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %31 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %30, i32 0, i32 2
  %32 = call i32 @rb_erase(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %27, %19
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = call i32 @memset(i32* %35, i32 0, i32 4)
  %37 = call i32 (...) @barrier()
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %40 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %39, i32 0, i32 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  %42 = icmp eq %struct.sk_buff* %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %45 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %44, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %45, align 8
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %48 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sub_frag_mem_limit(i32 %49, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %2, align 8
  br label %55

55:                                               ; preds = %46, %11
  %56 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %56
}

declare dso_local %struct.sk_buff* @skb_rb_first(i32*) #1

declare dso_local %struct.TYPE_2__* @FRAG_CB(%struct.sk_buff*) #1

declare dso_local i32 @rb_replace_node(i32*, i32*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @sub_frag_mem_limit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
