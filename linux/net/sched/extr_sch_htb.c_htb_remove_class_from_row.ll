; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_remove_class_from_row.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_remove_class_from_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i32*, %struct.htb_level* }
%struct.htb_level = type { %struct.htb_prio* }
%struct.htb_prio = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.htb_class = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, i32)* @htb_remove_class_from_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_remove_class_from_row(%struct.htb_sched* %0, %struct.htb_class* %1, i32 %2) #0 {
  %4 = alloca %struct.htb_sched*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.htb_level*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.htb_prio*, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %4, align 8
  store %struct.htb_class* %1, %struct.htb_class** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %12 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %11, i32 0, i32 1
  %13 = load %struct.htb_level*, %struct.htb_level** %12, align 8
  %14 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %15 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %13, i64 %16
  store %struct.htb_level* %17, %struct.htb_level** %8, align 8
  br label %18

18:                                               ; preds = %70, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @ffz(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.htb_level*, %struct.htb_level** %8, align 8
  %26 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %25, i32 0, i32 0
  %27 = load %struct.htb_prio*, %struct.htb_prio** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %27, i64 %29
  store %struct.htb_prio* %30, %struct.htb_prio** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.htb_prio*, %struct.htb_prio** %10, align 8
  %37 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %40 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = icmp eq i64 %38, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %21
  %47 = load %struct.htb_prio*, %struct.htb_prio** %10, align 8
  %48 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %47, i32 0, i32 0
  %49 = call i32 @htb_next_rb_node(i64* %48)
  br label %50

50:                                               ; preds = %46, %21
  %51 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %52 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load %struct.htb_prio*, %struct.htb_prio** %10, align 8
  %58 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %57, i32 0, i32 1
  %59 = call i32 @htb_safe_rb_erase(i64 %56, %struct.TYPE_2__* %58)
  %60 = load %struct.htb_prio*, %struct.htb_prio** %10, align 8
  %61 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %65, %50
  br label %18

71:                                               ; preds = %18
  %72 = load i32, i32* %7, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %75 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %78 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %73
  store i32 %82, i32* %80, align 4
  ret void
}

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @htb_next_rb_node(i64*) #1

declare dso_local i32 @htb_safe_rb_erase(i64, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
