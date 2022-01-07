; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_map_generic_chip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c_irq_map_generic_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.irq_domain_chip_generic* }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32 }
%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { i32, i32, %struct.irq_chip_type*, i32 }
%struct.irq_chip_type = type { i32, %struct.irq_chip }
%struct.irq_chip = type { i32 (%struct.irq_data*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IRQ_GC_INIT_NESTED_LOCK = common dso_local global i32 0, align 4
@irq_nested_lock_class = common dso_local global i32 0, align 4
@irq_nested_request_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_map_generic_chip(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca %struct.irq_domain_chip_generic*, align 8
  %10 = alloca %struct.irq_chip_generic*, align 8
  %11 = alloca %struct.irq_chip_type*, align 8
  %12 = alloca %struct.irq_chip*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %15, i32 %16)
  store %struct.irq_data* %17, %struct.irq_data** %8, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %19 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %18, i32 0, i32 0
  %20 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %19, align 8
  store %struct.irq_domain_chip_generic* %20, %struct.irq_domain_chip_generic** %9, align 8
  %21 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.irq_chip_generic* @__irq_get_domain_generic_chip(%struct.irq_domain* %21, i32 %22)
  store %struct.irq_chip_generic* %23, %struct.irq_chip_generic** %10, align 8
  %24 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %25 = call i64 @IS_ERR(%struct.irq_chip_generic* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %29 = call i32 @PTR_ERR(%struct.irq_chip_generic* %28)
  store i32 %29, i32* %4, align 4
  br label %125

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %9, align 8
  %33 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %38 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %37, i32 0, i32 3
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @ENOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %125

44:                                               ; preds = %30
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %47 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %125

53:                                               ; preds = %44
  %54 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %55 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %54, i32 0, i32 2
  %56 = load %struct.irq_chip_type*, %struct.irq_chip_type** %55, align 8
  store %struct.irq_chip_type* %56, %struct.irq_chip_type** %11, align 8
  %57 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %58 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %57, i32 0, i32 1
  store %struct.irq_chip* %58, %struct.irq_chip** %12, align 8
  %59 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %60 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %53
  %64 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %65 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %64, i32 0, i32 1
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @raw_spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %69 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %9, align 8
  %70 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @irq_gc_init_mask_cache(%struct.irq_chip_generic* %68, i32 %71)
  %73 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %74 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %73, i32 0, i32 1
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @raw_spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %63, %53
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %80 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %79, i32 0, i32 0
  %81 = call i32 @set_bit(i32 %78, i32* %80)
  %82 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %9, align 8
  %83 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IRQ_GC_INIT_NESTED_LOCK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @irq_set_lockdep_class(i32 %89, i32* @irq_nested_lock_class, i32* @irq_nested_request_class)
  br label %91

91:                                               ; preds = %88, %77
  %92 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  %93 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %92, i32 0, i32 0
  %94 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %93, align 8
  %95 = icmp ne i32 (%struct.irq_data*)* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  %98 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %97, i32 0, i32 0
  %99 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %98, align 8
  %100 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %101 = call i32 %99(%struct.irq_data* %100)
  br label %107

102:                                              ; preds = %91
  %103 = load i32, i32* %14, align 4
  %104 = shl i32 1, %103
  %105 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %106 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %96
  %108 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.irq_chip*, %struct.irq_chip** %12, align 8
  %112 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %10, align 8
  %113 = load %struct.irq_chip_type*, %struct.irq_chip_type** %11, align 8
  %114 = getelementptr inbounds %struct.irq_chip_type, %struct.irq_chip_type* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @irq_domain_set_info(%struct.irq_domain* %108, i32 %109, i32 %110, %struct.irq_chip* %111, %struct.irq_chip_generic* %112, i32 %115, i32* null, i32* null)
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %9, align 8
  %119 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %9, align 8
  %122 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @irq_modify_status(i32 %117, i32 %120, i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %107, %50, %41, %27
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local %struct.irq_chip_generic* @__irq_get_domain_generic_chip(%struct.irq_domain*, i32) #1

declare dso_local i64 @IS_ERR(%struct.irq_chip_generic*) #1

declare dso_local i32 @PTR_ERR(%struct.irq_chip_generic*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irq_gc_init_mask_cache(%struct.irq_chip_generic*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @irq_set_lockdep_class(i32, i32*, i32*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, %struct.irq_chip*, %struct.irq_chip_generic*, i32, i32*, i32*) #1

declare dso_local i32 @irq_modify_status(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
