; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_send.c___rds_send_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_send.c___rds_send_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32 }
%struct.rds_message = type { %struct.rm_atomic_op, %struct.rm_rdma_op }
%struct.rm_atomic_op = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rm_rdma_op = type { %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_sock*, %struct.rds_message*, i32)* @__rds_send_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rds_send_complete(%struct.rds_sock* %0, %struct.rds_message* %1, i32 %2) #0 {
  %4 = alloca %struct.rds_sock*, align 8
  %5 = alloca %struct.rds_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rm_rdma_op*, align 8
  %8 = alloca %struct.rm_atomic_op*, align 8
  store %struct.rds_sock* %0, %struct.rds_sock** %4, align 8
  store %struct.rds_message* %1, %struct.rds_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %10 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %9, i32 0, i32 1
  store %struct.rm_rdma_op* %10, %struct.rm_rdma_op** %7, align 8
  %11 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %7, align 8
  %12 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %7, align 8
  %17 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %7, align 8
  %22 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %7, align 8
  %28 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %7, align 8
  %32 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %36 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.rm_rdma_op*, %struct.rm_rdma_op** %7, align 8
  %39 = getelementptr inbounds %struct.rm_rdma_op, %struct.rm_rdma_op* %38, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %39, align 8
  br label %40

40:                                               ; preds = %25, %20, %15, %3
  %41 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %42 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %41, i32 0, i32 0
  store %struct.rm_atomic_op* %42, %struct.rm_atomic_op** %8, align 8
  %43 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %8, align 8
  %44 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %40
  %48 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %8, align 8
  %49 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %8, align 8
  %54 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %8, align 8
  %60 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %8, align 8
  %64 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %68 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %67, i32 0, i32 0
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  %70 = load %struct.rm_atomic_op*, %struct.rm_atomic_op** %8, align 8
  %71 = getelementptr inbounds %struct.rm_atomic_op, %struct.rm_atomic_op* %70, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %71, align 8
  br label %72

72:                                               ; preds = %57, %52, %47, %40
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
