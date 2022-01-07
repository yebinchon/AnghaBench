; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_enqueue_schedule_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_enqueue_schedule_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32 (%struct.sock*)*, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SK_MEM_QUANTUM_SHIFT = common dso_local global i32 0, align 4
@SK_MEM_RECV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__udp_enqueue_schedule_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 5
  store %struct.sk_buff_head* %14, %struct.sk_buff_head** %6, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 3
  %19 = call i32 @atomic_read(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %124

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 1
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @skb_condense(%struct.sk_buff* %34)
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32* @busylock_acquire(%struct.sock* %36)
  store i32* %37, i32** %11, align 8
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @udp_set_dev_scratch(%struct.sk_buff* %42)
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 3
  %47 = call i32 @atomic_add_return(i32 %44, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %49, %52
  %54 = icmp sgt i32 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  br label %117

56:                                               ; preds = %38
  %57 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.sock*, %struct.sock** %4, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %56
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @sk_mem_pages(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SK_MEM_QUANTUM_SHIFT, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SK_MEM_RECV, align 4
  %75 = call i32 @__sk_mem_raise_allocated(%struct.sock* %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* @ENOBUFS, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  br label %117

83:                                               ; preds = %65
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.sock*, %struct.sock** %4, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %56
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.sock*, %struct.sock** %4, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @sock_skb_set_dropcount(%struct.sock* %95, %struct.sk_buff* %96)
  %98 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %98, %struct.sk_buff* %99)
  %101 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  %105 = load i32, i32* @SOCK_DEAD, align 4
  %106 = call i32 @sock_flag(%struct.sock* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %89
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 4
  %111 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %110, align 8
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = call i32 %111(%struct.sock* %112)
  br label %114

114:                                              ; preds = %108, %89
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @busylock_release(i32* %115)
  store i32 0, i32* %3, align 4
  br label %131

117:                                              ; preds = %77, %55
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sock*, %struct.sock** %4, align 8
  %122 = getelementptr inbounds %struct.sock, %struct.sock* %121, i32 0, i32 3
  %123 = call i32 @atomic_sub(i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %117, %25
  %125 = load %struct.sock*, %struct.sock** %4, align 8
  %126 = getelementptr inbounds %struct.sock, %struct.sock* %125, i32 0, i32 2
  %127 = call i32 @atomic_inc(i32* %126)
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @busylock_release(i32* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %114
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @skb_condense(%struct.sk_buff*) #1

declare dso_local i32* @busylock_acquire(%struct.sock*) #1

declare dso_local i32 @udp_set_dev_scratch(%struct.sk_buff*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sk_mem_pages(i32) #1

declare dso_local i32 @__sk_mem_raise_allocated(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sock_skb_set_dropcount(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @busylock_release(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
