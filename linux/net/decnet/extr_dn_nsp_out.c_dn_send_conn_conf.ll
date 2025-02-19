; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_send_conn_conf.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_nsp_out.c_dn_send_conn_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nsp_conn_init_msg = type { i32, i32, i32, i32, i32, i32 }

@dn_nsp_retrans_conn_conf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_send_conn_conf(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nsp_conn_init_msg*, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.dn_scp* @DN_SK(%struct.sock* %9)
  store %struct.dn_scp* %10, %struct.dn_scp** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %11 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %12 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load i64, i64* %8, align 8
  %19 = add nsw i64 50, %18
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.sk_buff* @dn_alloc_skb(%struct.sock* %17, i64 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %78

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.nsp_conn_init_msg* @skb_put(%struct.sk_buff* %25, i32 24)
  store %struct.nsp_conn_init_msg* %26, %struct.nsp_conn_init_msg** %7, align 8
  %27 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %28 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %27, i32 0, i32 0
  store i32 40, i32* %28, align 4
  %29 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %30 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %33 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %35 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %38 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %40 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %43 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %45 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %48 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %50 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %7, align 8
  %54 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @skb_put_u8(%struct.sk_buff* %55, i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %24
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %63 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @skb_put_data(%struct.sk_buff* %61, i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %60, %24
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = call i32 @dn_nsp_send(%struct.sk_buff* %69)
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = call i32 @dn_nsp_persist(%struct.sock* %71)
  %73 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %74 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @dn_nsp_retrans_conn_conf, align 4
  %76 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %77 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %23
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(%struct.sock*, i64, i32) #1

declare dso_local %struct.nsp_conn_init_msg* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @dn_nsp_send(%struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
