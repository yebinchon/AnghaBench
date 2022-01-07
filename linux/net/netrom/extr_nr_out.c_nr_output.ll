; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_out.c_nr_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32* }

@NR_TRANSPORT_LEN = common dso_local global i32 0, align 4
@NR_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@NR_MORE_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_output(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @NR_MAX_PACKET_SIZE, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %26 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %24, i8* %15, i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %29 = call i32 @skb_pull(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_headroom(%struct.sk_buff* %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %89, %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %94

37:                                               ; preds = %32
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NR_MAX_PACKET_SIZE, align 4
  %41 = add nsw i32 %39, %40
  %42 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %38, i32 %41, i32 0, i32* %8)
  store %struct.sk_buff* %42, %struct.sk_buff** %5, align 8
  %43 = icmp eq %struct.sk_buff* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %11, align 4
  br label %105

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @skb_reserve(%struct.sk_buff* %46, i32 %47)
  %49 = load i32, i32* @NR_MAX_PACKET_SIZE, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @NR_MAX_PACKET_SIZE, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  store i32 %61, i32* %10, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %62, i8* %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @skb_pull(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %73 = call i32 @skb_push(%struct.sk_buff* %71, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load i32, i32* @NR_TRANSPORT_LEN, align 4
  %76 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %74, i8* %15, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %60
  %82 = load i32, i32* @NR_MORE_FLAG, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %60
  %90 = load %struct.sock*, %struct.sock** %3, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 0
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i32 @skb_queue_tail(i32* %91, %struct.sk_buff* %92)
  br label %32

94:                                               ; preds = %32
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  br label %102

97:                                               ; preds = %2
  %98 = load %struct.sock*, %struct.sock** %3, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 0
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @skb_queue_tail(i32* %99, %struct.sk_buff* %100)
  br label %102

102:                                              ; preds = %97, %94
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = call i32 @nr_kick(%struct.sock* %103)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %102, %44
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %11, align 4
  switch i32 %107, label %109 [
    i32 0, label %108
    i32 1, label %108
  ]

108:                                              ; preds = %105, %105
  ret void

109:                                              ; preds = %105
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #2

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #2

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @nr_kick(%struct.sock*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
