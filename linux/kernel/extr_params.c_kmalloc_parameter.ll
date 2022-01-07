; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_params.c_kmalloc_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_params.c_kmalloc_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmalloced_param = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@kmalloced_params_lock = common dso_local global i32 0, align 4
@kmalloced_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @kmalloc_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kmalloc_parameter(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmalloced_param*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = zext i32 %5 to i64
  %7 = add i64 16, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.kmalloced_param* @kmalloc(i32 %8, i32 %9)
  store %struct.kmalloced_param* %10, %struct.kmalloced_param** %4, align 8
  %11 = load %struct.kmalloced_param*, %struct.kmalloced_param** %4, align 8
  %12 = icmp ne %struct.kmalloced_param* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %23

14:                                               ; preds = %1
  %15 = call i32 @spin_lock(i32* @kmalloced_params_lock)
  %16 = load %struct.kmalloced_param*, %struct.kmalloced_param** %4, align 8
  %17 = getelementptr inbounds %struct.kmalloced_param, %struct.kmalloced_param* %16, i32 0, i32 1
  %18 = call i32 @list_add(i32* %17, i32* @kmalloced_params)
  %19 = call i32 @spin_unlock(i32* @kmalloced_params_lock)
  %20 = load %struct.kmalloced_param*, %struct.kmalloced_param** %4, align 8
  %21 = getelementptr inbounds %struct.kmalloced_param, %struct.kmalloced_param* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

declare dso_local %struct.kmalloced_param* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
