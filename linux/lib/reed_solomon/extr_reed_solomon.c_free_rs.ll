; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_reed_solomon.c_free_rs.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_reed_solomon.c_free_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.rs_control*, %struct.rs_control*, %struct.rs_control*, i32, i32, %struct.rs_control* }
%struct.rs_codec = type { %struct.rs_codec*, %struct.rs_codec*, %struct.rs_codec*, i32, i32, %struct.rs_codec* }

@rslistlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_rs(%struct.rs_control* %0) #0 {
  %2 = alloca %struct.rs_control*, align 8
  %3 = alloca %struct.rs_codec*, align 8
  store %struct.rs_control* %0, %struct.rs_control** %2, align 8
  %4 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %5 = icmp ne %struct.rs_control* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %9 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %8, i32 0, i32 5
  %10 = load %struct.rs_control*, %struct.rs_control** %9, align 8
  %11 = bitcast %struct.rs_control* %10 to %struct.rs_codec*
  store %struct.rs_codec* %11, %struct.rs_codec** %3, align 8
  %12 = call i32 @mutex_lock(i32* @rslistlock)
  %13 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %14 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %18 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %7
  %22 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %23 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %22, i32 0, i32 3
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %26 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %25, i32 0, i32 2
  %27 = load %struct.rs_codec*, %struct.rs_codec** %26, align 8
  %28 = bitcast %struct.rs_codec* %27 to %struct.rs_control*
  %29 = call i32 @kfree(%struct.rs_control* %28)
  %30 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %31 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %30, i32 0, i32 1
  %32 = load %struct.rs_codec*, %struct.rs_codec** %31, align 8
  %33 = bitcast %struct.rs_codec* %32 to %struct.rs_control*
  %34 = call i32 @kfree(%struct.rs_control* %33)
  %35 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %36 = getelementptr inbounds %struct.rs_codec, %struct.rs_codec* %35, i32 0, i32 0
  %37 = load %struct.rs_codec*, %struct.rs_codec** %36, align 8
  %38 = bitcast %struct.rs_codec* %37 to %struct.rs_control*
  %39 = call i32 @kfree(%struct.rs_control* %38)
  %40 = load %struct.rs_codec*, %struct.rs_codec** %3, align 8
  %41 = bitcast %struct.rs_codec* %40 to %struct.rs_control*
  %42 = call i32 @kfree(%struct.rs_control* %41)
  br label %43

43:                                               ; preds = %21, %7
  %44 = call i32 @mutex_unlock(i32* @rslistlock)
  %45 = load %struct.rs_control*, %struct.rs_control** %2, align 8
  %46 = call i32 @kfree(%struct.rs_control* %45)
  br label %47

47:                                               ; preds = %43, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.rs_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
