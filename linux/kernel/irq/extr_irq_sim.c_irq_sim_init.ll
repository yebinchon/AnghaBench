; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_irq_sim.c_irq_sim_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_irq_sim.c_irq_sim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_sim = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@irq_sim_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@irq_sim_handle_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_sim_init(%struct.irq_sim* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_sim*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_sim* %0, %struct.irq_sim** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_6__* @kmalloc_array(i32 %7, i32 8, i32 %8)
  %10 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %11 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %10, i32 0, i32 3
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %11, align 8
  %12 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %13 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %147

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @irq_alloc_descs(i32 -1, i32 0, i32 %20, i32 0)
  %22 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %23 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %25 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %30 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @kfree(%struct.TYPE_6__* %31)
  %33 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %34 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %147

37:                                               ; preds = %19
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @bitmap_zalloc(i32 %38, i32 %39)
  %41 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %42 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %45 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %37
  %50 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %51 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @kfree(%struct.TYPE_6__* %52)
  %54 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %55 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @irq_free_descs(i32 %57, i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %147

62:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %131, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %134

67:                                               ; preds = %63
  %68 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %69 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %76 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  %82 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %83 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  %89 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %90 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @irq_set_chip(i32 %95, i32* @irq_sim_irqchip)
  %97 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %98 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %105 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = call i32 @irq_set_chip_data(i32 %103, %struct.TYPE_6__* %109)
  %111 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %112 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @irq_set_handler(i32 %117, i32* @handle_simple_irq)
  %119 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %120 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @IRQ_NOREQUEST, align 4
  %127 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @IRQ_NOPROBE, align 4
  %130 = call i32 @irq_modify_status(i32 %125, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %67
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %63

134:                                              ; preds = %63
  %135 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %136 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* @irq_sim_handle_irq, align 4
  %139 = call i32 @init_irq_work(i32* %137, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %142 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.irq_sim*, %struct.irq_sim** %4, align 8
  %144 = getelementptr inbounds %struct.irq_sim, %struct.irq_sim* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %134, %49, %28, %16
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_6__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @irq_alloc_descs(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @irq_free_descs(i32, i32) #1

declare dso_local i32 @irq_set_chip(i32, i32*) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @irq_set_handler(i32, i32*) #1

declare dso_local i32 @irq_modify_status(i32, i32, i32) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
