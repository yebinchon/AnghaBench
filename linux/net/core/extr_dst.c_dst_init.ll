; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dst.c_dst_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dst.c_dst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dst_entry = type { i64, i32, i16, i32, i64, i32, i32*, i64, i64, i64, i64, i32, i32, i32*, %struct.dst_ops*, %struct.net_device* }
%struct.dst_ops = type { i32 }
%struct.net_device = type { i32 }

@dst_default_metrics = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dst_discard = common dso_local global i32 0, align 4
@dst_discard_out = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DST_NOCOUNT = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dst_init(%struct.dst_entry* %0, %struct.dst_ops* %1, %struct.net_device* %2, i32 %3, i32 %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.dst_ops*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.dst_entry* %0, %struct.dst_entry** %7, align 8
  store %struct.dst_ops* %1, %struct.dst_ops** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i16 %5, i16* %12, align 2
  %13 = load %struct.net_device*, %struct.net_device** %9, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %15 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %14, i32 0, i32 15
  store %struct.net_device* %13, %struct.net_device** %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = call i32 @dev_hold(%struct.net_device* %19)
  br label %21

21:                                               ; preds = %18, %6
  %22 = load %struct.dst_ops*, %struct.dst_ops** %8, align 8
  %23 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 14
  store %struct.dst_ops* %22, %struct.dst_ops** %24, align 8
  %25 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dst_default_metrics, i32 0, i32 0), align 4
  %27 = call i32 @dst_init_metrics(%struct.dst_entry* %25, i32 %26, i32 1)
  %28 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %29 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @dst_discard, align 4
  %31 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %32 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @dst_discard_out, align 4
  %34 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %35 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %37 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %36, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %40 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %42 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %44 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %43, i32 0, i32 8
  store i64 0, i64* %44, align 8
  %45 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %46 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %45, i32 0, i32 6
  store i32* null, i32** %46, align 8
  %47 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %48 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %47, i32 0, i32 5
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @atomic_set(i32* %48, i32 %49)
  %51 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %52 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @jiffies, align 4
  %54 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %55 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i16, i16* %12, align 2
  %57 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %58 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %57, i32 0, i32 2
  store i16 %56, i16* %58, align 4
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @DST_NOCOUNT, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %21
  %66 = load %struct.dst_ops*, %struct.dst_ops** %8, align 8
  %67 = call i32 @dst_entries_add(%struct.dst_ops* %66, i32 1)
  br label %68

68:                                               ; preds = %65, %21
  ret void
}

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dst_init_metrics(%struct.dst_entry*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dst_entries_add(%struct.dst_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
