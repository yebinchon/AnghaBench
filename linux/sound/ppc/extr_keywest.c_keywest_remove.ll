; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_keywest.c_keywest_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_keywest.c_keywest_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@keywest_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @keywest_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keywest_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keywest_ctx, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keywest_ctx, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %12 = icmp eq %struct.i2c_client* %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keywest_ctx, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.i2c_client* null, %struct.i2c_client** %15, align 8
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
