; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_setup_generic_chip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_setup_generic_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip_generic = type { i32, i32, i32, %struct.irq_chip_type* }
%struct.irq_chip_type = type { i32, %struct.irq_chip }
%struct.irq_chip = type { i32 (%struct.irq_data*)* }
%struct.irq_data = type { i32 }

@gc_lock = common dso_local global i32 0, align 4
@gc_list = common dso_local global i32 0, align 4
@IRQ_GC_INIT_NESTED_LOCK = common dso_local global i32 0, align 4
@irq_nested_lock_class = common dso_local global i32 0, align 4
@irq_nested_request_class = common dso_local global i32 0, align 4
@IRQ_GC_NO_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_setup_generic_chip(%struct.irq_chip_generic* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.irq_chip_generic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_chip_type*, align 8
  %12 = alloca %struct.irq_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.irq_data*, align 8
  store %struct.irq_chip_generic* %0, %struct.irq_chip_generic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %16 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %15, i32 0, i32 3
  %17 = load %struct.irq_chip_type*, %struct.irq_chip_type** %16, align 8
  store %struct.irq_chip_type* %17, %struct.irq_chip_type** %11, align 8
  %18 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %19 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %18, i32 0, i32 1
  store %struct.irq_chip* %19, %struct.irq_chip** %12, align 8
  %20 = call i32 @raw_spin_lock(i32* @gc_lock)
  %21 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %22 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %21, i32 0, i32 2
  %23 = call i32 @list_add_tail(i32* %22, i32* @gc_list)
  %24 = call i32 @raw_spin_unlock(i32* @gc_lock)
  %25 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @irq_gc_init_mask_cache(%struct.irq_chip_generic* %25, i32 %26)
  %28 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %29 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %89, %5
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %89

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IRQ_GC_INIT_NESTED_LOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @irq_set_lockdep_class(i32 %45, i32* @irq_nested_lock_class, i32* @irq_nested_request_class)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @IRQ_GC_NO_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.irq_data* @irq_get_irq_data(i32 %53)
  store %struct.irq_data* %54, %struct.irq_data** %14, align 8
  %55 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  %56 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %55, i32 0, i32 0
  %57 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %56, align 8
  %58 = icmp ne i32 (%struct.irq_data*)* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  %61 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %60, i32 0, i32 0
  %62 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %61, align 8
  %63 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %64 = call i32 %62(%struct.irq_data* %63)
  br label %74

65:                                               ; preds = %52
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %68 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub i32 %66, %69
  %71 = shl i32 1, %70
  %72 = load %struct.irq_data*, %struct.irq_data** %14, align 8
  %73 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %59
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  %78 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %79 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @irq_set_chip_and_handler(i32 %76, %struct.irq_chip* %77, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %84 = call i32 @irq_set_chip_data(i32 %82, %struct.irq_chip_generic* %83)
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @irq_modify_status(i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %75, %38
  %90 = load i32, i32* %7, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %31

94:                                               ; preds = %31
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %97 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub i32 %95, %98
  %100 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %6, align 8
  %101 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @irq_gc_init_mask_cache(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @irq_set_lockdep_class(i32, i32*, i32*) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.irq_chip_generic*) #1

declare dso_local i32 @irq_modify_status(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
