; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_rdma.c_rds_rdma_unuse.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_rdma.c_rds_rdma_unuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32, i32 }
%struct.rds_mr = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [48 x i8] c"rds: trying to unuse MR with unknown r_key %u!\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_rdma_unuse(%struct.rds_sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rds_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rds_mr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %11 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %10, i32 0, i32 0
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %15 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.rds_mr* @rds_mr_tree_walk(i32* %15, i32 %16, i32* null)
  store %struct.rds_mr* %17, %struct.rds_mr** %7, align 8
  %18 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %19 = icmp ne %struct.rds_mr* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %24 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %74

27:                                               ; preds = %3
  %28 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %29 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32, %27
  %36 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %37 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %36, i32 0, i32 2
  %38 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %39 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %38, i32 0, i32 1
  %40 = call i32 @rb_erase(i32* %37, i32* %39)
  %41 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %42 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %41, i32 0, i32 2
  %43 = call i32 @RB_CLEAR_NODE(i32* %42)
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %46 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %45, i32 0, i32 0
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %50 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = icmp ne i32 (i32, i32)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %57 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %62 = getelementptr inbounds %struct.rds_mr, %struct.rds_mr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 %60(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %44
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %71 = call i32 @rds_destroy_mr(%struct.rds_mr* %70)
  %72 = load %struct.rds_mr*, %struct.rds_mr** %7, align 8
  %73 = call i32 @rds_mr_put(%struct.rds_mr* %72)
  br label %74

74:                                               ; preds = %20, %69, %66
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.rds_mr* @rds_mr_tree_walk(i32*, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @rds_destroy_mr(%struct.rds_mr*) #1

declare dso_local i32 @rds_mr_put(%struct.rds_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
