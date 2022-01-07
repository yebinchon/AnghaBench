; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_minisocks.c_dccp_reqsk_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_minisocks.c_dccp_reqsk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.dccp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_request_sock = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_reqsk_init(%struct.request_sock* %0, %struct.dccp_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.request_sock*, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.dccp_request_sock*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %4, align 8
  store %struct.dccp_sock* %1, %struct.dccp_sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %9 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %8)
  store %struct.dccp_request_sock* %9, %struct.dccp_request_sock** %7, align 8
  %10 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %11 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_4__* @dccp_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %18 = call %struct.TYPE_3__* @inet_rsk(%struct.request_sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.TYPE_4__* @dccp_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %26 = call %struct.TYPE_3__* @inet_rsk(%struct.request_sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.request_sock*, %struct.request_sock** %4, align 8
  %29 = call %struct.TYPE_3__* @inet_rsk(%struct.request_sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %32 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %34 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %33, i32 0, i32 0
  %35 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %7, align 8
  %36 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %35, i32 0, i32 0
  %37 = call i32 @dccp_feat_clone_list(i32* %34, i32* %36)
  ret i32 %37
}

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_4__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @dccp_feat_clone_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
