; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_cred_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_cred_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cred = type { i32 }
%struct.tomoyo_task = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*, i32)* @tomoyo_cred_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_cred_prepare(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tomoyo_task*, align 8
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %9 = call %struct.tomoyo_task* @tomoyo_task(%struct.TYPE_5__* %8)
  store %struct.tomoyo_task* %9, %struct.tomoyo_task** %7, align 8
  %10 = load %struct.tomoyo_task*, %struct.tomoyo_task** %7, align 8
  %11 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = load %struct.tomoyo_task*, %struct.tomoyo_task** %7, align 8
  %21 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @atomic_dec(i32* %23)
  %25 = load %struct.tomoyo_task*, %struct.tomoyo_task** %7, align 8
  %26 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.tomoyo_task*, %struct.tomoyo_task** %7, align 8
  %29 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %28, i32 0, i32 1
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.tomoyo_task*, %struct.tomoyo_task** %7, align 8
  %31 = getelementptr inbounds %struct.tomoyo_task, %struct.tomoyo_task* %30, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %31, align 8
  br label %32

32:                                               ; preds = %19, %14, %3
  ret i32 0
}

declare dso_local %struct.tomoyo_task* @tomoyo_task(%struct.TYPE_5__*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
