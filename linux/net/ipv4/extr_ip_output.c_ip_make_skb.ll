; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_make_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_make_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.flowi4 = type { i32 }
%struct.ipcm_cookie = type { i32 }
%struct.rtable = type { i32 }
%struct.inet_cork = type { i32*, i64, i64 }
%struct.sk_buff_head = type { i32 }

@MSG_PROBE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @ip_make_skb(%struct.sock* %0, %struct.flowi4* %1, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %2, i8* %3, i32 %4, i32 %5, %struct.ipcm_cookie* %6, %struct.rtable** %7, %struct.inet_cork* %8, i32 %9) #0 {
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.flowi4*, align 8
  %14 = alloca i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ipcm_cookie*, align 8
  %19 = alloca %struct.rtable**, align 8
  %20 = alloca %struct.inet_cork*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.sk_buff_head, align 4
  %23 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %12, align 8
  store %struct.flowi4* %1, %struct.flowi4** %13, align 8
  store i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %2, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.ipcm_cookie* %6, %struct.ipcm_cookie** %18, align 8
  store %struct.rtable** %7, %struct.rtable*** %19, align 8
  store %struct.inet_cork* %8, %struct.inet_cork** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i32, i32* %21, align 4
  %25 = load i32, i32* @MSG_PROBE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %72

29:                                               ; preds = %10
  %30 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %22)
  %31 = load %struct.inet_cork*, %struct.inet_cork** %20, align 8
  %32 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.inet_cork*, %struct.inet_cork** %20, align 8
  %34 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.inet_cork*, %struct.inet_cork** %20, align 8
  %36 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.sock*, %struct.sock** %12, align 8
  %38 = load %struct.inet_cork*, %struct.inet_cork** %20, align 8
  %39 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %18, align 8
  %40 = load %struct.rtable**, %struct.rtable*** %19, align 8
  %41 = call i32 @ip_setup_cork(%struct.sock* %37, %struct.inet_cork* %38, %struct.ipcm_cookie* %39, %struct.rtable** %40)
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* %23, align 4
  %46 = call %struct.sk_buff* @ERR_PTR(i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %11, align 8
  br label %72

47:                                               ; preds = %29
  %48 = load %struct.sock*, %struct.sock** %12, align 8
  %49 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %50 = load %struct.inet_cork*, %struct.inet_cork** %20, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %14, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %21, align 4
  %58 = call i32 @__ip_append_data(%struct.sock* %48, %struct.flowi4* %49, %struct.sk_buff_head* %22, %struct.inet_cork* %50, i32* %52, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %53, i8* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %23, align 4
  %59 = load i32, i32* %23, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load %struct.sock*, %struct.sock** %12, align 8
  %63 = load %struct.inet_cork*, %struct.inet_cork** %20, align 8
  %64 = call i32 @__ip_flush_pending_frames(%struct.sock* %62, %struct.sk_buff_head* %22, %struct.inet_cork* %63)
  %65 = load i32, i32* %23, align 4
  %66 = call %struct.sk_buff* @ERR_PTR(i32 %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %11, align 8
  br label %72

67:                                               ; preds = %47
  %68 = load %struct.sock*, %struct.sock** %12, align 8
  %69 = load %struct.flowi4*, %struct.flowi4** %13, align 8
  %70 = load %struct.inet_cork*, %struct.inet_cork** %20, align 8
  %71 = call %struct.sk_buff* @__ip_make_skb(%struct.sock* %68, %struct.flowi4* %69, %struct.sk_buff_head* %22, %struct.inet_cork* %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %11, align 8
  br label %72

72:                                               ; preds = %67, %61, %44, %28
  %73 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  ret %struct.sk_buff* %73
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @ip_setup_cork(%struct.sock*, %struct.inet_cork*, %struct.ipcm_cookie*, %struct.rtable**) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @__ip_append_data(%struct.sock*, %struct.flowi4*, %struct.sk_buff_head*, %struct.inet_cork*, i32*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i8*, i32, i32, i32) #1

declare dso_local i32 @__ip_flush_pending_frames(%struct.sock*, %struct.sk_buff_head*, %struct.inet_cork*) #1

declare dso_local %struct.sk_buff* @__ip_make_skb(%struct.sock*, %struct.flowi4*, %struct.sk_buff_head*, %struct.inet_cork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
