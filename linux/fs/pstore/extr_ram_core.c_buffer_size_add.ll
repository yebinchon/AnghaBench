; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram_core.c_buffer_size_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram_core.c_buffer_size_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persistent_ram_zone = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PRZ_FLAG_NO_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.persistent_ram_zone*, i64)* @buffer_size_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_size_add(%struct.persistent_ram_zone* %0, i64 %1) #0 {
  %3 = alloca %struct.persistent_ram_zone*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
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
  %24 = call i64 @atomic_read(i32* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %27 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %51

31:                                               ; preds = %19
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %37 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %42 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %46 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @atomic_set(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %30
  %52 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %53 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PRZ_FLAG_NO_LOCK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %3, align 8
  %60 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %59, i32 0, i32 2
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %51
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
