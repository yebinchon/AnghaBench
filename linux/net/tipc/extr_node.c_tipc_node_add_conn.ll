; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_add_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_add_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_node = type { i32 }
%struct.tipc_sock_conn = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [37 x i8] c"Connecting sock to node 0x%x failed\0A\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_node_add_conn(%struct.net* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tipc_node*, align 8
  %11 = alloca %struct.tipc_sock_conn*, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @in_own_node(%struct.net* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

18:                                               ; preds = %4
  %19 = load %struct.net*, %struct.net** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.tipc_node* @tipc_node_find(%struct.net* %19, i8* %20)
  store %struct.tipc_node* %21, %struct.tipc_node** %10, align 8
  %22 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %23 = icmp ne %struct.tipc_node* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @EHOSTUNREACH, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %60

29:                                               ; preds = %18
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.tipc_sock_conn* @kmalloc(i32 32, i32 %30)
  store %struct.tipc_sock_conn* %31, %struct.tipc_sock_conn** %11, align 8
  %32 = load %struct.tipc_sock_conn*, %struct.tipc_sock_conn** %11, align 8
  %33 = icmp ne %struct.tipc_sock_conn* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EHOSTUNREACH, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %56

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.tipc_sock_conn*, %struct.tipc_sock_conn** %11, align 8
  %40 = getelementptr inbounds %struct.tipc_sock_conn, %struct.tipc_sock_conn* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.tipc_sock_conn*, %struct.tipc_sock_conn** %11, align 8
  %43 = getelementptr inbounds %struct.tipc_sock_conn, %struct.tipc_sock_conn* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.tipc_sock_conn*, %struct.tipc_sock_conn** %11, align 8
  %46 = getelementptr inbounds %struct.tipc_sock_conn, %struct.tipc_sock_conn* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %48 = call i32 @tipc_node_write_lock(%struct.tipc_node* %47)
  %49 = load %struct.tipc_sock_conn*, %struct.tipc_sock_conn** %11, align 8
  %50 = getelementptr inbounds %struct.tipc_sock_conn, %struct.tipc_sock_conn* %49, i32 0, i32 0
  %51 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %52 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %51, i32 0, i32 0
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %55 = call i32 @tipc_node_write_unlock(%struct.tipc_node* %54)
  br label %56

56:                                               ; preds = %37, %34
  %57 = load %struct.tipc_node*, %struct.tipc_node** %10, align 8
  %58 = call i32 @tipc_node_put(%struct.tipc_node* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %24, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @in_own_node(%struct.net*, i8*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(%struct.net*, i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local %struct.tipc_sock_conn* @kmalloc(i32, i32) #1

declare dso_local i32 @tipc_node_write_lock(%struct.tipc_node*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tipc_node_write_unlock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
