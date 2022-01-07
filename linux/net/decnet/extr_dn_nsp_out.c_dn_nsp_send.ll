; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_nsp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32, i32, i32 }
%struct.dn_scp = type { i32, i32, i32 }
%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.flowidn = type { i32, i8*, i8*, i32 }

@jiffies = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@DNPROTO_NSP = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @dn_nsp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_send(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.flowidn, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.dn_scp* @DN_SK(%struct.sock* %10)
  store %struct.dn_scp* %11, %struct.dn_scp** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call i32 @skb_reset_transport_header(%struct.sk_buff* %12)
  %14 = load i32, i32* @jiffies, align 4
  %15 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %16 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call %struct.dst_entry* @sk_dst_check(%struct.sock* %17, i32 0)
  store %struct.dst_entry* %18, %struct.dst_entry** %5, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %20 = icmp ne %struct.dst_entry* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %54, %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %25 = call i32 @skb_dst_set(%struct.sk_buff* %23, %struct.dst_entry* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load %struct.sock*, %struct.sock** %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = call i32 @dst_output(i32* @init_net, %struct.sock* %28, %struct.sk_buff* %29)
  br label %78

31:                                               ; preds = %1
  %32 = call i32 @memset(%struct.flowidn* %6, i32 0, i32 32)
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %6, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %38 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %37, i32 0, i32 1
  %39 = call i8* @dn_saddr2dn(i32* %38)
  %40 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %6, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %42 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %41, i32 0, i32 0
  %43 = call i8* @dn_saddr2dn(i32* %42)
  %44 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %6, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %46 = call i32 @dn_sk_ports_copy(%struct.flowidn* %6, %struct.dn_scp* %45)
  %47 = load i32, i32* @DNPROTO_NSP, align 4
  %48 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 3
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call i64 @dn_route_output_sock(i32* %50, %struct.flowidn* %6, %struct.sock* %51, i32 0)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %31
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = call %struct.dst_entry* @sk_dst_get(%struct.sock* %55)
  store %struct.dst_entry* %56, %struct.dst_entry** %5, align 8
  %57 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %58 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sock*, %struct.sock** %3, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %22

64:                                               ; preds = %31
  %65 = load i32, i32* @EHOSTUNREACH, align 4
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = load i32, i32* @SOCK_DEAD, align 4
  %70 = call i32 @sock_flag(%struct.sock* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %64
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %74, align 8
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = call i32 %75(%struct.sock* %76)
  br label %78

78:                                               ; preds = %22, %72, %64
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @sk_dst_check(%struct.sock*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dst_output(i32*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowidn*, i32, i32) #1

declare dso_local i8* @dn_saddr2dn(i32*) #1

declare dso_local i32 @dn_sk_ports_copy(%struct.flowidn*, %struct.dn_scp*) #1

declare dso_local i64 @dn_route_output_sock(i32*, %struct.flowidn*, %struct.sock*, i32) #1

declare dso_local %struct.dst_entry* @sk_dst_get(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
