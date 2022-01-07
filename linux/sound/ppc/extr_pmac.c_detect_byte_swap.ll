; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_detect_byte_swap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_pmac.c_detect_byte_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { %struct.device_node* }

@.str = private unnamed_addr constant [7 x i8] c"mac-io\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Keylargo\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PowerBook3,1\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"PowerBook2,1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*)* @detect_byte_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_byte_swap(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  %3 = alloca %struct.device_node*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %4 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %3, align 8
  br label %9

9:                                                ; preds = %25, %1
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = call i64 @of_node_name_eq(%struct.device_node* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.device_node*, %struct.device_node** %3, align 8
  %18 = call i64 @of_device_is_compatible(%struct.device_node* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %16
  br label %29

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.device_node*, %struct.device_node** %3, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 0
  %28 = load %struct.device_node*, %struct.device_node** %27, align 8
  store %struct.device_node* %28, %struct.device_node** %3, align 8
  br label %9

29:                                               ; preds = %23, %9
  %30 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %37 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @of_machine_is_compatible(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
