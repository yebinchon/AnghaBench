; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_make_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_make_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.ipcm6_cookie = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.flowi6 = type { i32 }
%struct.rt6_info = type { i32 }
%struct.inet_cork_full = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32*, i64, i64 }
%struct.inet6_cork = type { i32* }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MSG_PROBE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ip6_make_skb(%struct.sock* %0, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i8* %2, i32 %3, i32 %4, %struct.ipcm6_cookie* %5, %struct.flowi6* %6, %struct.rt6_info* %7, i32 %8, %struct.inet_cork_full* %9) #0 {
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ipcm6_cookie*, align 8
  %18 = alloca %struct.flowi6*, align 8
  %19 = alloca %struct.rt6_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.inet_cork_full*, align 8
  %22 = alloca %struct.inet6_cork, align 8
  %23 = alloca %struct.sk_buff_head, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %12, align 8
  store i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.ipcm6_cookie* %5, %struct.ipcm6_cookie** %17, align 8
  store %struct.flowi6* %6, %struct.flowi6** %18, align 8
  store %struct.rt6_info* %7, %struct.rt6_info** %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.inet_cork_full* %9, %struct.inet_cork_full** %21, align 8
  %26 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %17, align 8
  %27 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %10
  %31 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %17, align 8
  %32 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %35, %30 ], [ 0, %36 ]
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* @MSG_PROBE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %114

44:                                               ; preds = %37
  %45 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %23)
  %46 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %47 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %50 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %53 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %56 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.inet6_cork, %struct.inet6_cork* %22, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.sock*, %struct.sock** %12, align 8
  %60 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %61 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %17, align 8
  %62 = load %struct.rt6_info*, %struct.rt6_info** %19, align 8
  %63 = load %struct.flowi6*, %struct.flowi6** %18, align 8
  %64 = call i32 @ip6_setup_cork(%struct.sock* %59, %struct.inet_cork_full* %60, %struct.inet6_cork* %22, %struct.ipcm6_cookie* %61, %struct.rt6_info* %62, %struct.flowi6* %63)
  store i32 %64, i32* %25, align 4
  %65 = load i32, i32* %25, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %44
  %68 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %69 = call i32 @ip6_cork_release(%struct.inet_cork_full* %68, %struct.inet6_cork* %22)
  %70 = load i32, i32* %25, align 4
  %71 = call %struct.sk_buff* @ERR_PTR(i32 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %11, align 8
  br label %114

72:                                               ; preds = %44
  %73 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %17, align 8
  %74 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.sock*, %struct.sock** %12, align 8
  %79 = call %struct.TYPE_6__* @inet6_sk(%struct.sock* %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %17, align 8
  %83 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.sock*, %struct.sock** %12, align 8
  %86 = load %struct.flowi6*, %struct.flowi6** %18, align 8
  %87 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %88 = getelementptr inbounds %struct.inet_cork_full, %struct.inet_cork_full* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %13, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %24, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %20, align 4
  %100 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %17, align 8
  %101 = call i32 @__ip6_append_data(%struct.sock* %85, %struct.flowi6* %86, %struct.sk_buff_head* %23, %struct.TYPE_8__* %88, %struct.inet6_cork* %22, i32* %90, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %91, i8* %92, i32 %95, i32 %98, i32 %99, %struct.ipcm6_cookie* %100)
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %25, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %84
  %105 = load %struct.sock*, %struct.sock** %12, align 8
  %106 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %107 = call i32 @__ip6_flush_pending_frames(%struct.sock* %105, %struct.sk_buff_head* %23, %struct.inet_cork_full* %106, %struct.inet6_cork* %22)
  %108 = load i32, i32* %25, align 4
  %109 = call %struct.sk_buff* @ERR_PTR(i32 %108)
  store %struct.sk_buff* %109, %struct.sk_buff** %11, align 8
  br label %114

110:                                              ; preds = %84
  %111 = load %struct.sock*, %struct.sock** %12, align 8
  %112 = load %struct.inet_cork_full*, %struct.inet_cork_full** %21, align 8
  %113 = call %struct.sk_buff* @__ip6_make_skb(%struct.sock* %111, %struct.sk_buff_head* %23, %struct.inet_cork_full* %112, %struct.inet6_cork* %22)
  store %struct.sk_buff* %113, %struct.sk_buff** %11, align 8
  br label %114

114:                                              ; preds = %110, %104, %67, %43
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  ret %struct.sk_buff* %115
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @ip6_setup_cork(%struct.sock*, %struct.inet_cork_full*, %struct.inet6_cork*, %struct.ipcm6_cookie*, %struct.rt6_info*, %struct.flowi6*) #1

declare dso_local i32 @ip6_cork_release(%struct.inet_cork_full*, %struct.inet6_cork*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_6__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @__ip6_append_data(%struct.sock*, %struct.flowi6*, %struct.sk_buff_head*, %struct.TYPE_8__*, %struct.inet6_cork*, i32*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i8*, i32, i32, i32, %struct.ipcm6_cookie*) #1

declare dso_local i32 @__ip6_flush_pending_frames(%struct.sock*, %struct.sk_buff_head*, %struct.inet_cork_full*, %struct.inet6_cork*) #1

declare dso_local %struct.sk_buff* @__ip6_make_skb(%struct.sock*, %struct.sk_buff_head*, %struct.inet_cork_full*, %struct.inet6_cork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
