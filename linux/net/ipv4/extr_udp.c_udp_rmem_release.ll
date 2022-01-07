; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_rmem_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_rmem_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.udp_sock = type { i32, i32 }

@SK_MEM_QUANTUM = common dso_local global i32 0, align 4
@SK_MEM_QUANTUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32, i32)* @udp_rmem_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_rmem_release(%struct.sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.udp_sock*, align 8
  %10 = alloca %struct.sk_buff_head*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.udp_sock* @udp_sk(%struct.sock* %12)
  store %struct.udp_sock* %13, %struct.udp_sock** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.udp_sock*, %struct.udp_sock** %9, align 8
  %20 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.udp_sock*, %struct.udp_sock** %9, align 8
  %24 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 2
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %94

33:                                               ; preds = %17
  br label %40

34:                                               ; preds = %4
  %35 = load %struct.udp_sock*, %struct.udp_sock** %9, align 8
  %36 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = load %struct.udp_sock*, %struct.udp_sock** %9, align 8
  %42 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 3
  store %struct.sk_buff_head* %44, %struct.sk_buff_head** %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* @SK_MEM_QUANTUM, align 4
  %63 = sub nsw i32 %62, 1
  %64 = xor i32 %63, -1
  %65 = and i32 %61, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %51
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @SK_MEM_QUANTUM_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = call i32 @__sk_mem_reduce_allocated(%struct.sock* %74, i32 %77)
  br label %79

79:                                               ; preds = %73, %51
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 2
  %83 = call i32 @atomic_sub(i32 %80, i32* %82)
  %84 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %85 = load %struct.udp_sock*, %struct.udp_sock** %9, align 8
  %86 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %85, i32 0, i32 1
  %87 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %84, i32* %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %79
  %91 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %92 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %91, i32 0, i32 0
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %32, %90, %79
  ret void
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__sk_mem_reduce_allocated(%struct.sock*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
