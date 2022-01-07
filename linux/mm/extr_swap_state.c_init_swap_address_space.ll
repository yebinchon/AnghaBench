; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_state.c_init_swap_address_space.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_state.c_init_swap_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32*, i32, i32 }

@SWAP_ADDRESS_SPACE_PAGES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XA_FLAGS_LOCK_IRQ = common dso_local global i32 0, align 4
@swap_aops = common dso_local global i32 0, align 4
@nr_swapper_spaces = common dso_local global i32* null, align 8
@swapper_spaces = common dso_local global %struct.address_space** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_swap_address_space(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @SWAP_ADDRESS_SPACE_PAGES, align 4
  %12 = call i32 @DIV_ROUND_UP(i64 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.address_space* @kvcalloc(i32 %13, i32 16, i32 %14)
  store %struct.address_space* %15, %struct.address_space** %6, align 8
  %16 = load %struct.address_space*, %struct.address_space** %6, align 8
  %17 = icmp ne %struct.address_space* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load %struct.address_space*, %struct.address_space** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i64 %29
  store %struct.address_space* %30, %struct.address_space** %7, align 8
  %31 = load %struct.address_space*, %struct.address_space** %7, align 8
  %32 = getelementptr inbounds %struct.address_space, %struct.address_space* %31, i32 0, i32 2
  %33 = load i32, i32* @XA_FLAGS_LOCK_IRQ, align 4
  %34 = call i32 @xa_init_flags(i32* %32, i32 %33)
  %35 = load %struct.address_space*, %struct.address_space** %7, align 8
  %36 = getelementptr inbounds %struct.address_space, %struct.address_space* %35, i32 0, i32 1
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.address_space*, %struct.address_space** %7, align 8
  %39 = getelementptr inbounds %struct.address_space, %struct.address_space* %38, i32 0, i32 0
  store i32* @swap_aops, i32** %39, align 8
  %40 = load %struct.address_space*, %struct.address_space** %7, align 8
  %41 = call i32 @mapping_set_no_writeback_tags(%struct.address_space* %40)
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %22

45:                                               ; preds = %22
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** @nr_swapper_spaces, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load %struct.address_space*, %struct.address_space** %6, align 8
  %52 = load %struct.address_space**, %struct.address_space*** @swapper_spaces, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.address_space*, %struct.address_space** %52, i64 %54
  store %struct.address_space* %51, %struct.address_space** %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.address_space* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @xa_init_flags(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mapping_set_no_writeback_tags(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
