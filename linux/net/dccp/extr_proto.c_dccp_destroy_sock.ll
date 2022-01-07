; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_destroy_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_proto.c_dccp_destroy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32*, i32 }
%struct.dccp_sock = type { i32, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_destroy_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dccp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %4)
  store %struct.dccp_sock* %5, %struct.dccp_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 1
  %8 = call i32 @__skb_queue_purge(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree_skb(i32* %16)
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @inet_put_port(%struct.sock* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %35 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %37 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %42 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dccp_ackvec_free(i32* %43)
  %45 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %46 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %29
  %48 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %49 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  %52 = call i32 @ccid_hc_rx_delete(i32* %50, %struct.sock* %51)
  %53 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %54 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %56 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %55, i32 0, i32 0
  %57 = call i32 @dccp_feat_list_purge(i32* %56)
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_put_port(%struct.sock*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dccp_ackvec_free(i32*) #1

declare dso_local i32 @ccid_hc_rx_delete(i32*, %struct.sock*) #1

declare dso_local i32 @dccp_feat_list_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
