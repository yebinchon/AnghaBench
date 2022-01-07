; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_node_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_node_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_node = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.sk_buff*)* }
%struct.sk_buff = type { i64 }
%struct.sockaddr_qrtr = type { i64, i64 }
%struct.qrtr_hdr_v1 = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@QRTR_PROTO_VER_1 = common dso_local global i64 0, align 8
@QRTR_PORT_CTRL = common dso_local global i64 0, align 8
@QRTR_NODE_BCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qrtr_node*, %struct.sk_buff*, i32, %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr*)* @qrtr_node_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qrtr_node_enqueue(%struct.qrtr_node* %0, %struct.sk_buff* %1, i32 %2, %struct.sockaddr_qrtr* %3, %struct.sockaddr_qrtr* %4) #0 {
  %6 = alloca %struct.qrtr_node*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_qrtr*, align 8
  %10 = alloca %struct.sockaddr_qrtr*, align 8
  %11 = alloca %struct.qrtr_hdr_v1*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qrtr_node* %0, %struct.qrtr_node** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr_qrtr* %3, %struct.sockaddr_qrtr** %9, align 8
  store %struct.sockaddr_qrtr* %4, %struct.sockaddr_qrtr** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.qrtr_hdr_v1* @skb_push(%struct.sk_buff* %19, i32 64)
  store %struct.qrtr_hdr_v1* %20, %struct.qrtr_hdr_v1** %11, align 8
  %21 = load i64, i64* @QRTR_PROTO_VER_1, align 8
  %22 = call i8* @cpu_to_le32(i64 %21)
  %23 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %24 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %23, i32 0, i32 7
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = call i8* @cpu_to_le32(i64 %26)
  %28 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %29 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %9, align 8
  %31 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @cpu_to_le32(i64 %32)
  %34 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %35 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %9, align 8
  %37 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @cpu_to_le32(i64 %38)
  %40 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %41 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @QRTR_PORT_CTRL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %5
  %48 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %49 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @cpu_to_le32(i64 %50)
  %52 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %53 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @QRTR_NODE_BCAST, align 8
  %55 = call i8* @cpu_to_le32(i64 %54)
  %56 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %57 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  br label %71

58:                                               ; preds = %5
  %59 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @cpu_to_le32(i64 %61)
  %63 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %64 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %10, align 8
  %66 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @cpu_to_le32(i64 %67)
  %69 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %70 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %58, %47
  %72 = load i64, i64* %12, align 8
  %73 = call i8* @cpu_to_le32(i64 %72)
  %74 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %75 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.qrtr_hdr_v1*, %struct.qrtr_hdr_v1** %11, align 8
  %77 = getelementptr inbounds %struct.qrtr_hdr_v1, %struct.qrtr_hdr_v1* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @ALIGN(i64 %79, i32 4)
  %81 = call i32 @skb_put_padto(%struct.sk_buff* %78, i32 %80)
  %82 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %83 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %82, i32 0, i32 1
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %86 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %71
  %90 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %91 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_2__*, %struct.sk_buff*)*, i32 (%struct.TYPE_2__*, %struct.sk_buff*)** %93, align 8
  %95 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %96 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = call i32 %94(%struct.TYPE_2__* %97, %struct.sk_buff* %98)
  store i32 %99, i32* %13, align 4
  br label %103

100:                                              ; preds = %71
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call i32 @kfree_skb(%struct.sk_buff* %101)
  br label %103

103:                                              ; preds = %100, %89
  %104 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %105 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %13, align 4
  ret i32 %107
}

declare dso_local %struct.qrtr_hdr_v1* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @skb_put_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
