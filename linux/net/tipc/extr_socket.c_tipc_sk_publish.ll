; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_publish.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { i32, i64, i32, i64, %struct.sock }
%struct.sock = type { i32 }
%struct.tipc_name_seq = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.publication = type { i32 }

@TIPC_NODE_SCOPE = common dso_local global i32 0, align 4
@TIPC_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_sock*, i32, %struct.tipc_name_seq*)* @tipc_sk_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_publish(%struct.tipc_sock* %0, i32 %1, %struct.tipc_name_seq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_name_seq*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.publication*, align 8
  %11 = alloca i64, align 8
  store %struct.tipc_sock* %0, %struct.tipc_sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tipc_name_seq* %2, %struct.tipc_name_seq** %7, align 8
  %12 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %13 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %12, i32 0, i32 4
  store %struct.sock* %13, %struct.sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %8, align 8
  %15 = call %struct.net* @sock_net(%struct.sock* %14)
  store %struct.net* %15, %struct.net** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TIPC_NODE_SCOPE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @TIPC_CLUSTER_SCOPE, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.sock*, %struct.sock** %8, align 8
  %23 = call i64 @tipc_sk_connected(%struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %83

28:                                               ; preds = %21
  %29 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %30 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %33 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %39 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @EADDRINUSE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %83

45:                                               ; preds = %28
  %46 = load %struct.net*, %struct.net** %9, align 8
  %47 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %48 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %51 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %54 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %58 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call %struct.publication* @tipc_nametbl_publish(%struct.net* %46, i32 %49, i32 %52, i32 %55, i32 %56, i64 %59, i64 %60)
  store %struct.publication* %61, %struct.publication** %10, align 8
  %62 = load %struct.publication*, %struct.publication** %10, align 8
  %63 = icmp ne %struct.publication* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %45
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %83

71:                                               ; preds = %45
  %72 = load %struct.publication*, %struct.publication** %10, align 8
  %73 = getelementptr inbounds %struct.publication, %struct.publication* %72, i32 0, i32 0
  %74 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %75 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %74, i32 0, i32 2
  %76 = call i32 @list_add(i32* %73, i32* %75)
  %77 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %78 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.tipc_sock*, %struct.tipc_sock** %5, align 8
  %82 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %71, %68, %42, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i64 @tipc_sk_connected(%struct.sock*) #1

declare dso_local %struct.publication* @tipc_nametbl_publish(%struct.net*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
