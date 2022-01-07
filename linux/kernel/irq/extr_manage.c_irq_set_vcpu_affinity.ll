; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_set_vcpu_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_set_vcpu_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { %struct.irq_data* }
%struct.irq_chip = type { i32 (%struct.irq_data*, i8*)* }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_set_vcpu_affinity(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.irq_desc* @irq_get_desc_lock(i32 %11, i64* %6, i32 0)
  store %struct.irq_desc* %12, %struct.irq_desc** %7, align 8
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %16 = icmp ne %struct.irq_desc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %22 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %21)
  store %struct.irq_data* %22, %struct.irq_data** %8, align 8
  br label %23

23:                                               ; preds = %35, %20
  %24 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %25 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %24)
  store %struct.irq_chip* %25, %struct.irq_chip** %9, align 8
  %26 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %27 = icmp ne %struct.irq_chip* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %30 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %29, i32 0, i32 0
  %31 = load i32 (%struct.irq_data*, i8*)*, i32 (%struct.irq_data*, i8*)** %30, align 8
  %32 = icmp ne i32 (%struct.irq_data*, i8*)* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28, %23
  store %struct.irq_data* null, %struct.irq_data** %8, align 8
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %37 = icmp ne %struct.irq_data* %36, null
  br i1 %37, label %23, label %38

38:                                               ; preds = %35, %33
  %39 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %40 = icmp ne %struct.irq_data* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %43 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %42, i32 0, i32 0
  %44 = load i32 (%struct.irq_data*, i8*)*, i32 (%struct.irq_data*, i8*)** %43, align 8
  %45 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 %44(%struct.irq_data* %45, i8* %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @irq_put_desc_unlock(%struct.irq_desc* %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.irq_desc* @irq_get_desc_lock(i32, i64*, i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

declare dso_local i32 @irq_put_desc_unlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
