; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_sc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_sc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { %struct.page*, i32, i32, i32, i32, i32, %struct.o2nm_node*, i32 }
%struct.page = type { i32 }
%struct.o2nm_node = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@o2net_sc_connect_completed = common dso_local global i32 0, align 4
@o2net_rx_until_empty = common dso_local global i32 0, align 4
@o2net_shutdown_sc = common dso_local global i32 0, align 4
@o2net_sc_send_keep_req = common dso_local global i32 0, align 4
@o2net_idle_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"alloced\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.o2net_sock_container* (%struct.o2nm_node*)* @sc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.o2net_sock_container* @sc_alloc(%struct.o2nm_node* %0) #0 {
  %2 = alloca %struct.o2nm_node*, align 8
  %3 = alloca %struct.o2net_sock_container*, align 8
  %4 = alloca %struct.o2net_sock_container*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  store %struct.o2nm_node* %0, %struct.o2nm_node** %2, align 8
  store %struct.o2net_sock_container* null, %struct.o2net_sock_container** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.page* @alloc_page(i32 %7)
  store %struct.page* %8, %struct.page** %5, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.o2net_sock_container* @kzalloc(i32 48, i32 %9)
  store %struct.o2net_sock_container* %10, %struct.o2net_sock_container** %3, align 8
  %11 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %12 = icmp eq %struct.o2net_sock_container* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = icmp eq %struct.page* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %1
  br label %65

17:                                               ; preds = %13
  %18 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %19 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %18, i32 0, i32 7
  %20 = call i32 @kref_init(i32* %19)
  %21 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %22 = call i32 @o2nm_node_get(%struct.o2nm_node* %21)
  %23 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %24 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %25 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %24, i32 0, i32 6
  store %struct.o2nm_node* %23, %struct.o2nm_node** %25, align 8
  %26 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %27 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %26, i32 0, i32 0
  %28 = call i32 @o2nm_depend_item(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  %34 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %35 = call i32 @o2nm_node_put(%struct.o2nm_node* %34)
  br label %65

36:                                               ; preds = %17
  %37 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %38 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %37, i32 0, i32 5
  %39 = load i32, i32* @o2net_sc_connect_completed, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %42 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %41, i32 0, i32 4
  %43 = load i32, i32* @o2net_rx_until_empty, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  %45 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %46 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %45, i32 0, i32 3
  %47 = load i32, i32* @o2net_shutdown_sc, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %50 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %49, i32 0, i32 2
  %51 = load i32, i32* @o2net_sc_send_keep_req, align 4
  %52 = call i32 @INIT_DELAYED_WORK(i32* %50, i32 %51)
  %53 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %54 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %53, i32 0, i32 1
  %55 = load i32, i32* @o2net_idle_timer, align 4
  %56 = call i32 @timer_setup(i32* %54, i32 %55, i32 0)
  %57 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %58 = call i32 @sclog(%struct.o2net_sock_container* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  store %struct.o2net_sock_container* %59, %struct.o2net_sock_container** %4, align 8
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %62 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %61, i32 0, i32 0
  store %struct.page* %60, %struct.page** %62, align 8
  %63 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %64 = call i32 @o2net_debug_add_sc(%struct.o2net_sock_container* %63)
  store %struct.o2net_sock_container* null, %struct.o2net_sock_container** %3, align 8
  store %struct.page* null, %struct.page** %5, align 8
  br label %65

65:                                               ; preds = %36, %31, %16
  %66 = load %struct.page*, %struct.page** %5, align 8
  %67 = icmp ne %struct.page* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.page*, %struct.page** %5, align 8
  %70 = call i32 @__free_page(%struct.page* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %73 = call i32 @kfree(%struct.o2net_sock_container* %72)
  %74 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  ret %struct.o2net_sock_container* %74
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.o2net_sock_container* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @o2nm_node_get(%struct.o2nm_node*) #1

declare dso_local i32 @o2nm_depend_item(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @o2nm_node_put(%struct.o2nm_node*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @sclog(%struct.o2net_sock_container*, i8*) #1

declare dso_local i32 @o2net_debug_add_sc(%struct.o2net_sock_container*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.o2net_sock_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
