; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_get_next_prz.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ramoops_get_next_prz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persistent_ram_zone = type { i64 }
%struct.pstore_record = type { i64, i32 }

@PSTORE_TYPE_DMESG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.persistent_ram_zone* (%struct.persistent_ram_zone**, i32, %struct.pstore_record*)* @ramoops_get_next_prz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.persistent_ram_zone* @ramoops_get_next_prz(%struct.persistent_ram_zone** %0, i32 %1, %struct.pstore_record* %2) #0 {
  %4 = alloca %struct.persistent_ram_zone*, align 8
  %5 = alloca %struct.persistent_ram_zone**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pstore_record*, align 8
  %8 = alloca %struct.persistent_ram_zone*, align 8
  store %struct.persistent_ram_zone** %0, %struct.persistent_ram_zone*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pstore_record* %2, %struct.pstore_record** %7, align 8
  %9 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %5, align 8
  %10 = icmp ne %struct.persistent_ram_zone** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store %struct.persistent_ram_zone* null, %struct.persistent_ram_zone** %4, align 8
  br label %45

12:                                               ; preds = %3
  %13 = load %struct.persistent_ram_zone**, %struct.persistent_ram_zone*** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %13, i64 %15
  %17 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %16, align 8
  store %struct.persistent_ram_zone* %17, %struct.persistent_ram_zone** %8, align 8
  %18 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %8, align 8
  %19 = icmp ne %struct.persistent_ram_zone* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store %struct.persistent_ram_zone* null, %struct.persistent_ram_zone** %4, align 8
  br label %45

21:                                               ; preds = %12
  %22 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %8, align 8
  %23 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PSTORE_TYPE_DMESG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %8, align 8
  %29 = call i32 @persistent_ram_save_old(%struct.persistent_ram_zone* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %8, align 8
  %32 = call i32 @persistent_ram_old_size(%struct.persistent_ram_zone* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store %struct.persistent_ram_zone* null, %struct.persistent_ram_zone** %4, align 8
  br label %45

35:                                               ; preds = %30
  %36 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %8, align 8
  %37 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pstore_record*, %struct.pstore_record** %7, align 8
  %40 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.pstore_record*, %struct.pstore_record** %7, align 8
  %43 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %8, align 8
  store %struct.persistent_ram_zone* %44, %struct.persistent_ram_zone** %4, align 8
  br label %45

45:                                               ; preds = %35, %34, %20, %11
  %46 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %4, align 8
  ret %struct.persistent_ram_zone* %46
}

declare dso_local i32 @persistent_ram_save_old(%struct.persistent_ram_zone*) #1

declare dso_local i32 @persistent_ram_old_size(%struct.persistent_ram_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
