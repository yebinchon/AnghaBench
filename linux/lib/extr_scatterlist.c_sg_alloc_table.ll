; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_alloc_table.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_scatterlist.c_sg_alloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }

@SG_MAX_SINGLE_ALLOC = common dso_local global i32 0, align 4
@sg_kmalloc = common dso_local global i32 0, align 4
@sg_kfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sg_alloc_table(%struct.sg_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sg_table* %0, %struct.sg_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @sg_kmalloc, align 4
  %13 = call i32 @__sg_alloc_table(%struct.sg_table* %8, i32 %9, i32 %10, i32* null, i32 0, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %19 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %20 = load i32, i32* @sg_kfree, align 4
  %21 = call i32 @__sg_free_table(%struct.sg_table* %18, i32 %19, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @__sg_alloc_table(%struct.sg_table*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__sg_free_table(%struct.sg_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
