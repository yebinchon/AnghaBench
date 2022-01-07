; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_entry_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_entry_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.snd_info_private_data* }
%struct.snd_info_private_data = type { i32, %struct.snd_info_entry* }
%struct.snd_info_entry = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.snd_info_entry*, i32, %struct.file*, i64, i32)* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @snd_info_entry_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_info_entry_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_info_private_data*, align 8
  %8 = alloca %struct.snd_info_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @EINVAL, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %9, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %14, align 8
  store %struct.snd_info_private_data* %15, %struct.snd_info_private_data** %7, align 8
  %16 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %17 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %16, i32 0, i32 1
  %18 = load %struct.snd_info_entry*, %struct.snd_info_entry** %17, align 8
  store %struct.snd_info_entry* %18, %struct.snd_info_entry** %8, align 8
  %19 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %20 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %23 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64 (%struct.snd_info_entry*, i32, %struct.file*, i64, i32)*, i64 (%struct.snd_info_entry*, i32, %struct.file*, i64, i32)** %26, align 8
  %28 = icmp ne i64 (%struct.snd_info_entry*, i32, %struct.file*, i64, i32)* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %3
  %30 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %31 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64 (%struct.snd_info_entry*, i32, %struct.file*, i64, i32)*, i64 (%struct.snd_info_entry*, i32, %struct.file*, i64, i32)** %34, align 8
  %36 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %37 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %7, align 8
  %38 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 %35(%struct.snd_info_entry* %36, i32 %39, %struct.file* %40, i64 %41, i32 %42)
  store i64 %43, i64* %5, align 8
  br label %83

44:                                               ; preds = %3
  %45 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %46 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %64 [
    i32 128, label %49
    i32 130, label %50
    i32 129, label %56
  ]

49:                                               ; preds = %44
  br label %65

50:                                               ; preds = %44
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %65

56:                                               ; preds = %44
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %83

60:                                               ; preds = %56
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %5, align 8
  br label %65

64:                                               ; preds = %44
  br label %83

65:                                               ; preds = %60, %50, %49
  %66 = load i64, i64* %5, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %83

69:                                               ; preds = %65
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %76, %72, %69
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.file*, %struct.file** %4, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %78, %68, %64, %59, %29
  %84 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %85 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  ret i64 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
