; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_get_late_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_framereg.c_get_late_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_port = type { i32 }
%struct.hsr_priv = type { i32 }
%struct.hsr_node = type { i64*, i64* }

@HSR_PT_SLAVE_A = common dso_local global i64 0, align 8
@HSR_PT_SLAVE_B = common dso_local global i64 0, align 8
@MAX_SLAVE_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hsr_port* (%struct.hsr_priv*, %struct.hsr_node*)* @get_late_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hsr_port* @get_late_port(%struct.hsr_priv* %0, %struct.hsr_node* %1) #0 {
  %3 = alloca %struct.hsr_port*, align 8
  %4 = alloca %struct.hsr_priv*, align 8
  %5 = alloca %struct.hsr_node*, align 8
  store %struct.hsr_priv* %0, %struct.hsr_priv** %4, align 8
  store %struct.hsr_node* %1, %struct.hsr_node** %5, align 8
  %6 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %7 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @HSR_PT_SLAVE_A, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %15 = load i64, i64* @HSR_PT_SLAVE_A, align 8
  %16 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %14, i64 %15)
  store %struct.hsr_port* %16, %struct.hsr_port** %3, align 8
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %19 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @HSR_PT_SLAVE_B, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %27 = load i64, i64* @HSR_PT_SLAVE_B, align 8
  %28 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %26, i64 %27)
  store %struct.hsr_port* %28, %struct.hsr_port** %3, align 8
  br label %74

29:                                               ; preds = %17
  %30 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %31 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @HSR_PT_SLAVE_B, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %37 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @HSR_PT_SLAVE_A, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @MAX_SLAVE_DIFF, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i64 @time_after(i64 %35, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %49 = load i64, i64* @HSR_PT_SLAVE_A, align 8
  %50 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %48, i64 %49)
  store %struct.hsr_port* %50, %struct.hsr_port** %3, align 8
  br label %74

51:                                               ; preds = %29
  %52 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %53 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @HSR_PT_SLAVE_A, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.hsr_node*, %struct.hsr_node** %5, align 8
  %59 = getelementptr inbounds %struct.hsr_node, %struct.hsr_node* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @HSR_PT_SLAVE_B, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @MAX_SLAVE_DIFF, align 4
  %65 = call i64 @msecs_to_jiffies(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = call i64 @time_after(i64 %57, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load %struct.hsr_priv*, %struct.hsr_priv** %4, align 8
  %71 = load i64, i64* @HSR_PT_SLAVE_B, align 8
  %72 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %70, i64 %71)
  store %struct.hsr_port* %72, %struct.hsr_port** %3, align 8
  br label %74

73:                                               ; preds = %51
  store %struct.hsr_port* null, %struct.hsr_port** %3, align 8
  br label %74

74:                                               ; preds = %73, %69, %47, %25, %13
  %75 = load %struct.hsr_port*, %struct.hsr_port** %3, align 8
  ret %struct.hsr_port* %75
}

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
