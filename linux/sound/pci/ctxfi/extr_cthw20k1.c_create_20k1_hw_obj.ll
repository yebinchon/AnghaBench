; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_create_20k1_hw_obj.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_create_20k1_hw_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.hw20k1 = type { %struct.hw, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ct20k1_preset = common dso_local global %struct.hw zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_20k1_hw_obj(%struct.hw** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw**, align 8
  %4 = alloca %struct.hw20k1*, align 8
  store %struct.hw** %0, %struct.hw*** %3, align 8
  %5 = load %struct.hw**, %struct.hw*** %3, align 8
  store %struct.hw* null, %struct.hw** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hw20k1* @kzalloc(i32 12, i32 %6)
  store %struct.hw20k1* %7, %struct.hw20k1** %4, align 8
  %8 = load %struct.hw20k1*, %struct.hw20k1** %4, align 8
  %9 = icmp ne %struct.hw20k1* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.hw20k1*, %struct.hw20k1** %4, align 8
  %15 = getelementptr inbounds %struct.hw20k1, %struct.hw20k1* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.hw20k1*, %struct.hw20k1** %4, align 8
  %18 = getelementptr inbounds %struct.hw20k1, %struct.hw20k1* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.hw20k1*, %struct.hw20k1** %4, align 8
  %21 = getelementptr inbounds %struct.hw20k1, %struct.hw20k1* %20, i32 0, i32 0
  %22 = bitcast %struct.hw* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.hw* @ct20k1_preset to i8*), i64 4, i1 false)
  %23 = load %struct.hw20k1*, %struct.hw20k1** %4, align 8
  %24 = getelementptr inbounds %struct.hw20k1, %struct.hw20k1* %23, i32 0, i32 0
  %25 = load %struct.hw**, %struct.hw*** %3, align 8
  store %struct.hw* %24, %struct.hw** %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.hw20k1* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
