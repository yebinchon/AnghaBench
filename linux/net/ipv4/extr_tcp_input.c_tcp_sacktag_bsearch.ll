; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sacktag_bsearch.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sacktag_bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i32)* @tcp_sacktag_bsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tcp_sacktag_bsearch(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.rb_node** %11, %struct.rb_node*** %7, align 8
  br label %12

12:                                               ; preds = %39, %28, %2
  %13 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %15 = icmp ne %struct.rb_node* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  store %struct.rb_node* %18, %struct.rb_node** %6, align 8
  %19 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %20 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @before(i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %30 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i32 0, i32 1
  store %struct.rb_node** %30, %struct.rb_node*** %7, align 8
  br label %12

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @before(i32 %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %41 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %40, i32 0, i32 0
  store %struct.rb_node** %41, %struct.rb_node*** %7, align 8
  br label %12

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  br label %45

44:                                               ; preds = %12
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %45

45:                                               ; preds = %44, %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %46
}

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local i64 @before(i32, i32) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
