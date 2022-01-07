; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_domain.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tomoyo_domain_info = type { i32 }
%struct.tomoyo_task = type { %struct.tomoyo_domain_info*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tomoyo_domain_info* @tomoyo_domain() #0 {
  %1 = alloca %struct.tomoyo_task*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %3 = call %struct.tomoyo_task* @tomoyo_task(%struct.TYPE_5__* %2)
  store %struct.tomoyo_task* %3, %struct.tomoyo_task** %1, align 8
  %4 = load %struct.tomoyo_task*, %struct.tomoyo_task** %1, align 8
  %5 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = load %struct.tomoyo_task*, %struct.tomoyo_task** %1, align 8
  %15 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @atomic_dec(i32* %17)
  %19 = load %struct.tomoyo_task*, %struct.tomoyo_task** %1, align 8
  %20 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %19, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  br label %21

21:                                               ; preds = %13, %8, %0
  %22 = load %struct.tomoyo_task*, %struct.tomoyo_task** %1, align 8
  %23 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %22, i32 0, i32 0
  %24 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %23, align 8
  ret %struct.tomoyo_domain_info* %24
}

declare dso_local %struct.tomoyo_task* @tomoyo_task(%struct.TYPE_5__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
