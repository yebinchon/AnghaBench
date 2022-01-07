; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_entry_poll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_entry_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_info_private_data* }
%struct.snd_info_private_data = type { i32, %struct.snd_info_entry* }
%struct.snd_info_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_info_entry*, i32, %struct.file*, i32*)*, i64, i64 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @snd_info_entry_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_info_entry_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snd_info_private_data*, align 8
  %7 = alloca %struct.snd_info_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %10, align 8
  store %struct.snd_info_private_data* %11, %struct.snd_info_private_data** %6, align 8
  %12 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %13 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %12, i32 0, i32 1
  %14 = load %struct.snd_info_entry*, %struct.snd_info_entry** %13, align 8
  store %struct.snd_info_entry* %14, %struct.snd_info_entry** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %16 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.snd_info_entry*, i32, %struct.file*, i32*)*, i32 (%struct.snd_info_entry*, i32, %struct.file*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.snd_info_entry*, i32, %struct.file*, i32*)* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %24 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.snd_info_entry*, i32, %struct.file*, i32*)*, i32 (%struct.snd_info_entry*, i32, %struct.file*, i32*)** %27, align 8
  %29 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %30 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %31 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 %28(%struct.snd_info_entry* %29, i32 %32, %struct.file* %33, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %2
  %37 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %38 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @EPOLLIN, align 4
  %46 = load i32, i32* @EPOLLRDNORM, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.snd_info_entry*, %struct.snd_info_entry** %7, align 8
  %52 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* @EPOLLOUT, align 4
  %60 = load i32, i32* @EPOLLWRNORM, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %58, %50
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %22
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
