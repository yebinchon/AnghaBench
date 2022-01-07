; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_frames_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_frames_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.x25_sock = type { i16, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@X25_EMODULUS = common dso_local global i32 0, align 4
@X25_SMODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_frames_acked(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.x25_sock*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i16 %1, i16* %4, align 2
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.x25_sock* @x25_sk(%struct.sock* %8)
  store %struct.x25_sock* %9, %struct.x25_sock** %6, align 8
  %10 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %11 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @X25_EMODULUS, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @X25_SMODULUS, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  %22 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %23 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 8
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %45, %29
  %31 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %32 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %31, i32 0, i32 1
  %33 = call i64 @skb_peek(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %37 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 8
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp ne i32 %39, %41
  br label %43

43:                                               ; preds = %35, %30
  %44 = phi i1 [ false, %30 ], [ %42, %35 ]
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  %46 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %47 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %46, i32 0, i32 1
  %48 = call %struct.sk_buff* @skb_dequeue(i32* %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %52 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %51, i32 0, i32 0
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i32
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %55, %56
  %58 = trunc i32 %57 to i16
  %59 = load %struct.x25_sock*, %struct.x25_sock** %6, align 8
  %60 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %59, i32 0, i32 0
  store i16 %58, i16* %60, align 8
  br label %30

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %20
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i64 @skb_peek(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
