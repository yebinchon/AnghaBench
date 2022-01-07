; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_zerocopy_iter_stream.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_zerocopy_iter_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, %struct.sock* }
%struct.msghdr = type { %struct.iov_iter }
%struct.iov_iter = type { i32 }
%struct.ubuf_info = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_zerocopy_iter_stream(%struct.sock* %0, %struct.sk_buff* %1, %struct.msghdr* %2, i32 %3, %struct.ubuf_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubuf_info*, align 8
  %12 = alloca %struct.ubuf_info*, align 8
  %13 = alloca %struct.iov_iter, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ubuf_info* %4, %struct.ubuf_info** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call %struct.ubuf_info* @skb_zcopy(%struct.sk_buff* %17)
  store %struct.ubuf_info* %18, %struct.ubuf_info** %12, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 0
  %21 = bitcast %struct.iov_iter* %13 to i8*
  %22 = bitcast %struct.iov_iter* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.ubuf_info*, %struct.ubuf_info** %12, align 8
  %27 = icmp ne %struct.ubuf_info* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load %struct.ubuf_info*, %struct.ubuf_info** %11, align 8
  %30 = load %struct.ubuf_info*, %struct.ubuf_info** %12, align 8
  %31 = icmp ne %struct.ubuf_info* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %84

35:                                               ; preds = %28, %5
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %39 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %38, i32 0, i32 0
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @__zerocopy_sg_from_iter(%struct.sock* %36, %struct.sk_buff* %37, %struct.iov_iter* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @EMSGSIZE, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51, %35
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load %struct.sock*, %struct.sock** %59, align 8
  store %struct.sock* %60, %struct.sock** %16, align 8
  %61 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %61, i32 0, i32 0
  %63 = bitcast %struct.iov_iter* %62 to i8*
  %64 = bitcast %struct.iov_iter* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load %struct.sock*, %struct.sock** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  store %struct.sock* %65, %struct.sock** %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @___pskb_trim(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.sock*, %struct.sock** %16, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  store %struct.sock* %71, %struct.sock** %73, align 8
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %6, align 4
  br label %84

75:                                               ; preds = %51, %46
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load %struct.ubuf_info*, %struct.ubuf_info** %11, align 8
  %78 = call i32 @skb_zcopy_set(%struct.sk_buff* %76, %struct.ubuf_info* %77, i32* null)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %75, %57, %32
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.ubuf_info* @skb_zcopy(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__zerocopy_sg_from_iter(%struct.sock*, %struct.sk_buff*, %struct.iov_iter*, i32) #1

declare dso_local i32 @___pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_zcopy_set(%struct.sk_buff*, %struct.ubuf_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
