; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c___rds_ib_teardown_mr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c___rds_ib_teardown_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, i32*, i64, %struct.rds_ib_device* }
%struct.rds_ib_device = type { i32 }
%struct.page = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rds_ib_teardown_mr(%struct.rds_ib_mr* %0) #0 {
  %2 = alloca %struct.rds_ib_mr*, align 8
  %3 = alloca %struct.rds_ib_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.rds_ib_mr* %0, %struct.rds_ib_mr** %2, align 8
  %6 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %7 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %6, i32 0, i32 3
  %8 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  store %struct.rds_ib_device* %8, %struct.rds_ib_device** %3, align 8
  %9 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %10 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.rds_ib_device*, %struct.rds_ib_device** %3, align 8
  %15 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %18 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %21 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %24 = call i32 @ib_dma_unmap_sg(i32 %16, i32* %19, i32 %22, i32 %23)
  %25 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %26 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %13, %1
  %28 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %29 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %62, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %36 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  %40 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %41 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call %struct.page* @sg_page(i32* %45)
  store %struct.page* %46, %struct.page** %5, align 8
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = call i64 (...) @irqs_disabled()
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %51, %39
  %55 = phi i1 [ false, %39 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call i32 @set_page_dirty(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %5, align 8
  %61 = call i32 @put_page(%struct.page* %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %33

65:                                               ; preds = %33
  %66 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %67 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @kfree(i32* %68)
  %70 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %71 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  %73 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %65, %27
  ret void
}

declare dso_local i32 @ib_dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local %struct.page* @sg_page(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
