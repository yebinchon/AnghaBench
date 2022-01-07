; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_append_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi4 = type { i32 }
%struct.sk_buff = type opaque
%struct.ipcm_cookie = type { i32 }
%struct.rtable = type { i32 }
%struct.inet_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff.0 = type opaque

@MSG_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_append_data(%struct.sock* %0, %struct.flowi4* %1, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %2, i8* %3, i32 %4, i32 %5, %struct.ipcm_cookie* %6, %struct.rtable** %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.flowi4*, align 8
  %13 = alloca i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ipcm_cookie*, align 8
  %18 = alloca %struct.rtable**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.inet_sock*, align 8
  %21 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %11, align 8
  store %struct.flowi4* %1, %struct.flowi4** %12, align 8
  store i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %2, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.ipcm_cookie* %6, %struct.ipcm_cookie** %17, align 8
  store %struct.rtable** %7, %struct.rtable*** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load %struct.sock*, %struct.sock** %11, align 8
  %23 = call %struct.inet_sock* @inet_sk(%struct.sock* %22)
  store %struct.inet_sock* %23, %struct.inet_sock** %20, align 8
  %24 = load i32, i32* %19, align 4
  %25 = load i32, i32* @MSG_PROBE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %65

29:                                               ; preds = %9
  %30 = load %struct.sock*, %struct.sock** %11, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = call i64 @skb_queue_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %11, align 8
  %36 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %37 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %17, align 8
  %40 = load %struct.rtable**, %struct.rtable*** %18, align 8
  %41 = call i32 @ip_setup_cork(%struct.sock* %35, i32* %38, %struct.ipcm_cookie* %39, %struct.rtable** %40)
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %10, align 4
  br label %65

46:                                               ; preds = %34
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.sock*, %struct.sock** %11, align 8
  %50 = load %struct.flowi4*, %struct.flowi4** %12, align 8
  %51 = load %struct.sock*, %struct.sock** %11, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load %struct.inet_sock*, %struct.inet_sock** %20, align 8
  %54 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.sock*, %struct.sock** %11, align 8
  %57 = call i32 @sk_page_frag(%struct.sock* %56)
  %58 = load i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)*, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)** %13, align 8
  %59 = bitcast i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff*)* %58 to i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff.0*)*
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @__ip_append_data(%struct.sock* %49, %struct.flowi4* %50, i32* %52, i32* %55, i32 %57, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff.0*)* %59, i8* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %48, %44, %28
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @ip_setup_cork(%struct.sock*, i32*, %struct.ipcm_cookie*, %struct.rtable**) #1

declare dso_local i32 @__ip_append_data(%struct.sock*, %struct.flowi4*, i32*, i32*, i32, i32 (i8*, i8*, i32, i32, i32, %struct.sk_buff.0*)*, i8*, i32, i32, i32) #1

declare dso_local i32 @sk_page_frag(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
