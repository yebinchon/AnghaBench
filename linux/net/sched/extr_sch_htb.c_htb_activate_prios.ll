; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_activate_prios.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_activate_prios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i32 }
%struct.htb_class = type { i64, i64, %struct.htb_class*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@HTB_MAY_BORROW = common dso_local global i64 0, align 8
@HTB_CAN_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*)* @htb_activate_prios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_activate_prios(%struct.htb_sched* %0, %struct.htb_class* %1) #0 {
  %3 = alloca %struct.htb_sched*, align 8
  %4 = alloca %struct.htb_class*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.htb_sched* %0, %struct.htb_sched** %3, align 8
  store %struct.htb_class* %1, %struct.htb_class** %4, align 8
  %9 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %10 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %9, i32 0, i32 2
  %11 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  store %struct.htb_class* %11, %struct.htb_class** %5, align 8
  %12 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %13 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %74, %2
  %16 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %17 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HTB_MAY_BORROW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %23 = icmp ne %struct.htb_class* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21, %15
  %28 = phi i1 [ false, %21 ], [ false, %15 ], [ %26, %24 ]
  br i1 %28, label %29, label %84

29:                                               ; preds = %27
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %62, %29
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = xor i64 %35, -1
  %37 = call i32 @ffz(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %45 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %34
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %7, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %55, %34
  %63 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %64 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @htb_add_to_id_tree(%struct.TYPE_6__* %70, %struct.htb_class* %71, i32 %72)
  br label %31

74:                                               ; preds = %31
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %77 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  store %struct.htb_class* %80, %struct.htb_class** %4, align 8
  %81 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %82 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %81, i32 0, i32 2
  %83 = load %struct.htb_class*, %struct.htb_class** %82, align 8
  store %struct.htb_class* %83, %struct.htb_class** %5, align 8
  br label %15

84:                                               ; preds = %27
  %85 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %86 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HTB_CAN_SEND, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.htb_sched*, %struct.htb_sched** %3, align 8
  %95 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @htb_add_class_to_row(%struct.htb_sched* %94, %struct.htb_class* %95, i64 %96)
  br label %98

98:                                               ; preds = %93, %90, %84
  ret void
}

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @htb_add_to_id_tree(%struct.TYPE_6__*, %struct.htb_class*, i32) #1

declare dso_local i32 @htb_add_class_to_row(%struct.htb_sched*, %struct.htb_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
