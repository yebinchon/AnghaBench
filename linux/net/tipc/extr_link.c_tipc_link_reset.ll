; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32*, i32*, i32*, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.sk_buff_head*, %struct.sk_buff_head, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.sk_buff_head = type { i32 }

@TIPC_SYSTEM_IMPORTANCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_reset(%struct.tipc_link* %0) #0 {
  %2 = alloca %struct.tipc_link*, align 8
  %3 = alloca %struct.sk_buff_head, align 4
  %4 = alloca i64, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %2, align 8
  %5 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %3)
  %6 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %7 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %9 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %8, i32 0, i32 24
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %13 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %12, i32 0, i32 23
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %17 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %16, i32 0, i32 21
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %20 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %19, i32 0, i32 22
  store i32 %18, i32* %20, align 8
  %21 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %22 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %21, i32 0, i32 20
  %23 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %26 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %25, i32 0, i32 20
  %27 = call i32 @skb_queue_splice_init(%struct.sk_buff_head* %26, %struct.sk_buff_head* %3)
  %28 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %29 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %28, i32 0, i32 20
  %30 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %33 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %32, i32 0, i32 19
  %34 = load %struct.sk_buff_head*, %struct.sk_buff_head** %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %38 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %37, i32 0, i32 19
  %39 = load %struct.sk_buff_head*, %struct.sk_buff_head** %38, align 8
  %40 = call i32 @skb_queue_splice_init(%struct.sk_buff_head* %3, %struct.sk_buff_head* %39)
  %41 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %42 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %41, i32 0, i32 19
  %43 = load %struct.sk_buff_head*, %struct.sk_buff_head** %42, align 8
  %44 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  %46 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %47 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %46, i32 0, i32 18
  %48 = call i32 @__skb_queue_purge(i32* %47)
  %49 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %50 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %49, i32 0, i32 17
  %51 = call i32 @__skb_queue_purge(i32* %50)
  %52 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %53 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %52, i32 0, i32 16
  %54 = call i32 @__skb_queue_purge(i32* %53)
  %55 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %56 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %55, i32 0, i32 15
  %57 = call i32 @__skb_queue_purge(i32* %56)
  store i64 0, i64* %4, align 8
  br label %58

58:                                               ; preds = %75, %1
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @TIPC_SYSTEM_IMPORTANCE, align 8
  %61 = icmp ule i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %64 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %63, i32 0, i32 14
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %70 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %69, i32 0, i32 14
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %62
  %76 = load i64, i64* %4, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %4, align 8
  br label %58

78:                                               ; preds = %58
  %79 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %80 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %79, i32 0, i32 13
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree_skb(i32* %81)
  %83 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %84 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %83, i32 0, i32 12
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @kfree_skb(i32* %85)
  %87 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %88 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %87, i32 0, i32 11
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree_skb(i32* %89)
  %91 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %92 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %91, i32 0, i32 13
  store i32* null, i32** %92, align 8
  %93 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %94 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %93, i32 0, i32 12
  store i32* null, i32** %94, align 8
  %95 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %96 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %95, i32 0, i32 11
  store i32* null, i32** %96, align 8
  %97 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %98 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %97, i32 0, i32 10
  store i64 0, i64* %98, align 8
  %99 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %100 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %102 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  %103 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %104 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %103, i32 0, i32 3
  store i32 1, i32* %104, align 4
  %105 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %106 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %105, i32 0, i32 4
  store i32 1, i32* %106, align 8
  %107 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %108 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %107, i32 0, i32 9
  store i64 0, i64* %108, align 8
  %109 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %110 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %109, i32 0, i32 8
  store i64 0, i64* %110, align 8
  %111 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %112 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  %113 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %114 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %113, i32 0, i32 5
  store i32 0, i32* %114, align 4
  %115 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %116 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %115, i32 0, i32 6
  %117 = call i32 @memset(i32* %116, i32 0, i32 4)
  %118 = load %struct.tipc_link*, %struct.tipc_link** %2, align 8
  %119 = call i32 @tipc_link_reset_stats(%struct.tipc_link* %118)
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_splice_init(%struct.sk_buff_head*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tipc_link_reset_stats(%struct.tipc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
