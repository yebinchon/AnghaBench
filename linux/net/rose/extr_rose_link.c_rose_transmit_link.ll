; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_transmit_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_transmit_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rose_neigh = type { i64, i32, i64, i64 }

@AX25_P_ROSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_transmit_link(%struct.sk_buff* %0, %struct.rose_neigh* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rose_neigh*, align 8
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rose_neigh* %1, %struct.rose_neigh** %4, align 8
  %6 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %7 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %13 = call i32 @rose_loopback_queue(%struct.sk_buff* %11, %struct.rose_neigh* %12)
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %16 = call i32 @rose_link_up(%struct.rose_neigh* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %20 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i8* @skb_push(%struct.sk_buff* %22, i32 1)
  store i8* %23, i8** %5, align 8
  %24 = load i32, i32* @AX25_P_ROSE, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  store i8 %25, i8* %26, align 1
  %28 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %29 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %35 = call i32 @rose_send_frame(%struct.sk_buff* %33, %struct.rose_neigh* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %57

41:                                               ; preds = %21
  %42 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %43 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %42, i32 0, i32 1
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @skb_queue_tail(i32* %43, %struct.sk_buff* %44)
  %46 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %47 = call i32 @rose_t0timer_running(%struct.rose_neigh* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %51 = call i32 @rose_transmit_restart_request(%struct.rose_neigh* %50)
  %52 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %53 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %55 = call i32 @rose_start_t0timer(%struct.rose_neigh* %54)
  br label %56

56:                                               ; preds = %49, %41
  br label %57

57:                                               ; preds = %10, %56, %40
  ret void
}

declare dso_local i32 @rose_loopback_queue(%struct.sk_buff*, %struct.rose_neigh*) #1

declare dso_local i32 @rose_link_up(%struct.rose_neigh*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @rose_send_frame(%struct.sk_buff*, %struct.rose_neigh*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rose_t0timer_running(%struct.rose_neigh*) #1

declare dso_local i32 @rose_transmit_restart_request(%struct.rose_neigh*) #1

declare dso_local i32 @rose_start_t0timer(%struct.rose_neigh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
