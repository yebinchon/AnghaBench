; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_append_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type opaque
%struct.ipcm6_cookie = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.flowi6 = type { i32 }
%struct.rt6_info = type { i32 }
%struct.inet_sock = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.flowi6 }
%struct.ipv6_pinfo = type { i32 }
%struct.sk_buff.0 = type opaque

@MSG_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_append_data(%struct.sock* %0, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i8* %2, i32 %3, i32 %4, %struct.ipcm6_cookie* %5, %struct.flowi6* %6, %struct.rt6_info* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ipcm6_cookie*, align 8
  %17 = alloca %struct.flowi6*, align 8
  %18 = alloca %struct.rt6_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.inet_sock*, align 8
  %21 = alloca %struct.ipv6_pinfo*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %11, align 8
  store i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %1, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.ipcm6_cookie* %5, %struct.ipcm6_cookie** %16, align 8
  store %struct.flowi6* %6, %struct.flowi6** %17, align 8
  store %struct.rt6_info* %7, %struct.rt6_info** %18, align 8
  store i32 %8, i32* %19, align 4
  %24 = load %struct.sock*, %struct.sock** %11, align 8
  %25 = call %struct.inet_sock* @inet_sk(%struct.sock* %24)
  store %struct.inet_sock* %25, %struct.inet_sock** %20, align 8
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %26)
  store %struct.ipv6_pinfo* %27, %struct.ipv6_pinfo** %21, align 8
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* @MSG_PROBE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %98

33:                                               ; preds = %9
  %34 = load %struct.sock*, %struct.sock** %11, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = call i64 @skb_queue_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load %struct.sock*, %struct.sock** %11, align 8
  %40 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %41 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %40, i32 0, i32 0
  %42 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %21, align 8
  %43 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %42, i32 0, i32 0
  %44 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %16, align 8
  %45 = load %struct.rt6_info*, %struct.rt6_info** %18, align 8
  %46 = load %struct.flowi6*, %struct.flowi6** %17, align 8
  %47 = call i32 @ip6_setup_cork(%struct.sock* %39, %struct.TYPE_8__* %41, i32* %43, %struct.ipcm6_cookie* %44, %struct.rt6_info* %45, %struct.flowi6* %46)
  store i32 %47, i32* %23, align 4
  %48 = load i32, i32* %23, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %23, align 4
  store i32 %51, i32* %10, align 4
  br label %98

52:                                               ; preds = %38
  %53 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %16, align 8
  %54 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %16, align 8
  %59 = getelementptr inbounds %struct.ipcm6_cookie, %struct.ipcm6_cookie* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i32 [ %62, %57 ], [ 0, %63 ]
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %15, align 4
  br label %78

72:                                               ; preds = %33
  %73 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %74 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store %struct.flowi6* %77, %struct.flowi6** %17, align 8
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %72, %64
  %79 = load %struct.sock*, %struct.sock** %11, align 8
  %80 = load %struct.flowi6*, %struct.flowi6** %17, align 8
  %81 = load %struct.sock*, %struct.sock** %11, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %84 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %21, align 8
  %87 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %86, i32 0, i32 0
  %88 = load %struct.sock*, %struct.sock** %11, align 8
  %89 = call i32 @sk_page_frag(%struct.sock* %88)
  %90 = load i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %12, align 8
  %91 = bitcast i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %90 to i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff.0*)*
  %92 = load i8*, i8** %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.ipcm6_cookie*, %struct.ipcm6_cookie** %16, align 8
  %97 = call i32 @__ip6_append_data(%struct.sock* %79, %struct.flowi6* %80, i32* %82, i32* %85, i32* %87, i32 %89, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff.0*)* %91, i8* %92, i32 %93, i32 %94, i32 %95, %struct.ipcm6_cookie* %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %78, %50, %32
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @ip6_setup_cork(%struct.sock*, %struct.TYPE_8__*, i32*, %struct.ipcm6_cookie*, %struct.rt6_info*, %struct.flowi6*) #1

declare dso_local i32 @__ip6_append_data(%struct.sock*, %struct.flowi6*, i32*, i32*, i32*, i32, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff.0*)*, i8*, i32, i32, i32, %struct.ipcm6_cookie*) #1

declare dso_local i32 @sk_page_frag(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
