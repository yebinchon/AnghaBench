; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram_core.c_buffer_start_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram_core.c_buffer_start_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persistent_ram_zone = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PRZ_FLAG_NO_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.persistent_ram_zone*, i64)* @buffer_start_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @buffer_start_add(%struct.persistent_ram_zone* %0, i64 %1) #0 {
  %3 = alloca %struct.persistent_ram_zone*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.persistent_ram_zone* %0, %struct.persistent_ram_zone** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %9 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PRZ_FLAG_NO_LOCK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %16 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %15, i32 0, i32 2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %21 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %39, %19
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %33 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %41 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %47 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @atomic_set(i32* %49, i32 %50)
  %52 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %53 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PRZ_FLAG_NO_LOCK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %45
  %59 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %60 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %59, i32 0, i32 2
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %45
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  ret i64 %65
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
