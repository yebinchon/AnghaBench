; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_mangle.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_queue.c_nfqnl_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.nf_queue_entry*, i32)* @nfqnl_mangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqnl_mangle(i8* %0, i32 %1, %struct.nf_queue_entry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_queue_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_queue_entry* %2, %struct.nf_queue_entry** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %15 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %14, i32 0, i32 0
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @pskb_trim(%struct.sk_buff* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %93

23:                                               ; preds = %13
  br label %71

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 65535
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %93

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %36 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  %38 = call i32 @skb_tailroom(%struct.sk_buff* %37)
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %33
  %41 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %42 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  %44 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %45 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %44, i32 0, i32 0
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = call i32 @skb_headroom(%struct.sk_buff* %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %43, i32 %47, i32 %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %10, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %93

56:                                               ; preds = %40
  %57 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %58 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %63 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %62, i32 0, i32 0
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  br label %64

64:                                               ; preds = %56, %33
  %65 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %66 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %65, i32 0, i32 0
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @skb_put(%struct.sk_buff* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %24
  br label %71

71:                                               ; preds = %70, %23
  %72 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %73 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %72, i32 0, i32 0
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @skb_ensure_writable(%struct.sk_buff* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %93

81:                                               ; preds = %71
  %82 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %83 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %82, i32 0, i32 0
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %84, i8* %85, i32 %86)
  %88 = load i32, i32* @CHECKSUM_NONE, align 4
  %89 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %8, align 8
  %90 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %89, i32 0, i32 0
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %81, %78, %53, %30, %20
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
