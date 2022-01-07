; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c___aarp_resolved.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c___aarp_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aarp_entry = type { %struct.aarp_entry*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i32 }

@unresolved_count = common dso_local global i32 0, align 4
@resolved = common dso_local global %struct.aarp_entry** null, align 8
@jiffies = common dso_local global i64 0, align 8
@sysctl_aarp_expiry_time = common dso_local global i32 0, align 4
@ddp_dl = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aarp_entry**, %struct.aarp_entry*, i32)* @__aarp_resolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__aarp_resolved(%struct.aarp_entry** %0, %struct.aarp_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.aarp_entry**, align 8
  %5 = alloca %struct.aarp_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.aarp_entry** %0, %struct.aarp_entry*** %4, align 8
  store %struct.aarp_entry* %1, %struct.aarp_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %63, %3
  %9 = load %struct.aarp_entry**, %struct.aarp_entry*** %4, align 8
  %10 = load %struct.aarp_entry*, %struct.aarp_entry** %9, align 8
  %11 = icmp ne %struct.aarp_entry* %10, null
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load %struct.aarp_entry**, %struct.aarp_entry*** %4, align 8
  %14 = load %struct.aarp_entry*, %struct.aarp_entry** %13, align 8
  %15 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %16 = icmp eq %struct.aarp_entry* %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %12
  %18 = load i32, i32* @unresolved_count, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @unresolved_count, align 4
  %20 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %21 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %20, i32 0, i32 0
  %22 = load %struct.aarp_entry*, %struct.aarp_entry** %21, align 8
  %23 = load %struct.aarp_entry**, %struct.aarp_entry*** %4, align 8
  store %struct.aarp_entry* %22, %struct.aarp_entry** %23, align 8
  %24 = load %struct.aarp_entry**, %struct.aarp_entry*** @resolved, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.aarp_entry*, %struct.aarp_entry** %24, i64 %26
  %28 = load %struct.aarp_entry*, %struct.aarp_entry** %27, align 8
  %29 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %30 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %29, i32 0, i32 0
  store %struct.aarp_entry* %28, %struct.aarp_entry** %30, align 8
  %31 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %32 = load %struct.aarp_entry**, %struct.aarp_entry*** @resolved, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.aarp_entry*, %struct.aarp_entry** %32, i64 %34
  store %struct.aarp_entry* %31, %struct.aarp_entry** %35, align 8
  br label %36

36:                                               ; preds = %41, %17
  %37 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %38 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %37, i32 0, i32 3
  %39 = call %struct.sk_buff* @skb_dequeue(i32* %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %7, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i32, i32* @sysctl_aarp_expiry_time, align 4
  %44 = mul nsw i32 %43, 10
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %48 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ddp_dl, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_3__*, %struct.sk_buff*, i32)*, i32 (%struct.TYPE_3__*, %struct.sk_buff*, i32)** %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ddp_dl, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %55 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %51(%struct.TYPE_3__* %52, %struct.sk_buff* %53, i32 %56)
  br label %36

58:                                               ; preds = %36
  br label %63

59:                                               ; preds = %12
  %60 = load %struct.aarp_entry**, %struct.aarp_entry*** %4, align 8
  %61 = load %struct.aarp_entry*, %struct.aarp_entry** %60, align 8
  %62 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %61, i32 0, i32 0
  store %struct.aarp_entry** %62, %struct.aarp_entry*** %4, align 8
  br label %63

63:                                               ; preds = %59, %58
  br label %8

64:                                               ; preds = %8
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
