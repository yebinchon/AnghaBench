; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_endpoint_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_qrtr.c_qrtr_endpoint_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qrtr_endpoint = type { %struct.qrtr_node*, i32 }
%struct.qrtr_node = type { i32, %struct.qrtr_endpoint*, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qrtr_node_rx_work = common dso_local global i32 0, align 4
@QRTR_EP_NID_AUTO = common dso_local global i32 0, align 4
@qrtr_node_lock = common dso_local global i32 0, align 4
@qrtr_all_nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qrtr_endpoint_register(%struct.qrtr_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qrtr_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qrtr_node*, align 8
  store %struct.qrtr_endpoint* %0, %struct.qrtr_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.qrtr_endpoint*, %struct.qrtr_endpoint** %4, align 8
  %8 = icmp ne %struct.qrtr_endpoint* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.qrtr_endpoint*, %struct.qrtr_endpoint** %4, align 8
  %11 = getelementptr inbounds %struct.qrtr_endpoint, %struct.qrtr_endpoint* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %9
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.qrtr_node* @kzalloc(i32 40, i32 %18)
  store %struct.qrtr_node* %19, %struct.qrtr_node** %6, align 8
  %20 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %21 = icmp ne %struct.qrtr_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %17
  %26 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %27 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %26, i32 0, i32 6
  %28 = load i32, i32* @qrtr_node_rx_work, align 4
  %29 = call i32 @INIT_WORK(i32* %27, i32 %28)
  %30 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %31 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %30, i32 0, i32 5
  %32 = call i32 @kref_init(i32* %31)
  %33 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %34 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %33, i32 0, i32 4
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %37 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %36, i32 0, i32 3
  %38 = call i32 @skb_queue_head_init(i32* %37)
  %39 = load i32, i32* @QRTR_EP_NID_AUTO, align 4
  %40 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %41 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qrtr_endpoint*, %struct.qrtr_endpoint** %4, align 8
  %43 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %44 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %43, i32 0, i32 1
  store %struct.qrtr_endpoint* %42, %struct.qrtr_endpoint** %44, align 8
  %45 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @qrtr_node_assign(%struct.qrtr_node* %45, i32 %46)
  %48 = call i32 @mutex_lock(i32* @qrtr_node_lock)
  %49 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %50 = getelementptr inbounds %struct.qrtr_node, %struct.qrtr_node* %49, i32 0, i32 0
  %51 = call i32 @list_add(i32* %50, i32* @qrtr_all_nodes)
  %52 = call i32 @mutex_unlock(i32* @qrtr_node_lock)
  %53 = load %struct.qrtr_node*, %struct.qrtr_node** %6, align 8
  %54 = load %struct.qrtr_endpoint*, %struct.qrtr_endpoint** %4, align 8
  %55 = getelementptr inbounds %struct.qrtr_endpoint, %struct.qrtr_endpoint* %54, i32 0, i32 0
  store %struct.qrtr_node* %53, %struct.qrtr_node** %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %25, %22, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.qrtr_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @qrtr_node_assign(%struct.qrtr_node*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
