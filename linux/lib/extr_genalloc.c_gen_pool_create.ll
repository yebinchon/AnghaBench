; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_genalloc.c_gen_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_pool = type { i32, i32*, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gen_pool_first_fit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gen_pool* @gen_pool_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gen_pool*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.gen_pool* @kmalloc_node(i32 40, i32 %6, i32 %7)
  store %struct.gen_pool* %8, %struct.gen_pool** %5, align 8
  %9 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %10 = icmp ne %struct.gen_pool* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %13 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %12, i32 0, i32 5
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %16 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %20 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @gen_pool_first_fit, align 4
  %22 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %23 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %25 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  %27 = getelementptr inbounds %struct.gen_pool, %struct.gen_pool* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %11, %2
  %29 = load %struct.gen_pool*, %struct.gen_pool** %5, align 8
  ret %struct.gen_pool* %29
}

declare dso_local %struct.gen_pool* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
