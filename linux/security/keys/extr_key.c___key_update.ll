; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c___key_update.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c___key_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_preparsed_payload = type { i32 }
%struct.key = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.key*, %struct.key_preparsed_payload*)* }

@KEY_NEED_WRITE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.key_preparsed_payload*)* @__key_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__key_update(i32 %0, %struct.key_preparsed_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key_preparsed_payload*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.key* @key_ref_to_ptr(i32 %7)
  store %struct.key* %8, %struct.key** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @KEY_NEED_WRITE, align 4
  %11 = call i32 @key_permission(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %52

15:                                               ; preds = %2
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.key*, %struct.key** %5, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.key*, %struct.key_preparsed_payload*)*, i32 (%struct.key*, %struct.key_preparsed_payload*)** %21, align 8
  %23 = icmp ne i32 (%struct.key*, %struct.key_preparsed_payload*)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %52

25:                                               ; preds = %15
  %26 = load %struct.key*, %struct.key** %5, align 8
  %27 = getelementptr inbounds %struct.key, %struct.key* %26, i32 0, i32 0
  %28 = call i32 @down_write(i32* %27)
  %29 = load %struct.key*, %struct.key** %5, align 8
  %30 = getelementptr inbounds %struct.key, %struct.key* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.key*, %struct.key_preparsed_payload*)*, i32 (%struct.key*, %struct.key_preparsed_payload*)** %32, align 8
  %34 = load %struct.key*, %struct.key** %5, align 8
  %35 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %4, align 8
  %36 = call i32 %33(%struct.key* %34, %struct.key_preparsed_payload* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load %struct.key*, %struct.key** %5, align 8
  %41 = call i32 @mark_key_instantiated(%struct.key* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %25
  %43 = load %struct.key*, %struct.key** %5, align 8
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 0
  %45 = call i32 @up_write(i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %52

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %52, %49
  %51 = load i32, i32* %3, align 4
  ret i32 %51

52:                                               ; preds = %48, %24, %14
  %53 = load %struct.key*, %struct.key** %5, align 8
  %54 = call i32 @key_put(%struct.key* %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @ERR_PTR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %50
}

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_permission(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mark_key_instantiated(%struct.key*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
