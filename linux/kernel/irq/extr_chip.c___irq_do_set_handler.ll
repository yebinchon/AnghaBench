; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c___irq_do_set_handler.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c___irq_do_set_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i8*, i32*, i64, %struct.irq_data }
%struct.irq_data = type { i32*, %struct.irq_data* }

@handle_bad_irq = common dso_local global i64 0, align 8
@no_irq_chip = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@chained_action = common dso_local global i32 0, align 4
@IRQ_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, i64, i32, i8*)* @__irq_do_set_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__irq_do_set_handler(%struct.irq_desc* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* @handle_bad_irq, align 8
  store i64 %14, i64* %6, align 8
  br label %32

15:                                               ; preds = %4
  %16 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 4
  store %struct.irq_data* %17, %struct.irq_data** %9, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %19 = icmp ne %struct.irq_data* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, @no_irq_chip
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ true, %15 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %95

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @handle_bad_irq, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, @no_irq_chip
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %44 = call i32 @mask_ack_irq(%struct.irq_desc* %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %47 = call i32 @irq_state_set_disabled(%struct.irq_desc* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %52 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %55 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %32
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %59 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %62 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @handle_bad_irq, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %71 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %70, i32 0, i32 4
  %72 = call i32 @irqd_get_trigger_type(%struct.irq_data* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @__irq_set_trigger(%struct.irq_desc* %77, i32 %78)
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %82 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %85 = call i32 @irq_settings_set_noprobe(%struct.irq_desc* %84)
  %86 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %87 = call i32 @irq_settings_set_norequest(%struct.irq_desc* %86)
  %88 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %89 = call i32 @irq_settings_set_nothread(%struct.irq_desc* %88)
  %90 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %91 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %90, i32 0, i32 2
  store i32* @chained_action, i32** %91, align 8
  %92 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %93 = load i32, i32* @IRQ_RESEND, align 4
  %94 = call i32 @irq_activate_and_startup(%struct.irq_desc* %92, i32 %93)
  br label %95

95:                                               ; preds = %30, %83, %66, %56
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mask_ack_irq(%struct.irq_desc*) #1

declare dso_local i32 @irq_state_set_disabled(%struct.irq_desc*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @__irq_set_trigger(%struct.irq_desc*, i32) #1

declare dso_local i32 @irq_settings_set_noprobe(%struct.irq_desc*) #1

declare dso_local i32 @irq_settings_set_norequest(%struct.irq_desc*) #1

declare dso_local i32 @irq_settings_set_nothread(%struct.irq_desc*) #1

declare dso_local i32 @irq_activate_and_startup(%struct.irq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
