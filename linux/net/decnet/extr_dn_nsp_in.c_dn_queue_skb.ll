; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_queue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_in.c_dn_queue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, %struct.sk_buff_head*)* @dn_queue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_queue_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 2
  %12 = call i32 @atomic_read(i32* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %12, %15
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp uge i32 %16, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %50

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @sk_filter(%struct.sock* %26, %struct.sk_buff* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %50

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i32 @skb_set_owner_r(%struct.sk_buff* %33, %struct.sock* %34)
  %36 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_queue_tail(%struct.sk_buff_head* %36, %struct.sk_buff* %37)
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = load i32, i32* @SOCK_DEAD, align 4
  %41 = call i32 @sock_flag(%struct.sock* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %32
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %45, align 8
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = call i32 %46(%struct.sock* %47)
  br label %49

49:                                               ; preds = %43, %32
  br label %50

50:                                               ; preds = %49, %31, %22
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
