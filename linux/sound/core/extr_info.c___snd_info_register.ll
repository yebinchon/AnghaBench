; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c___snd_info_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c___snd_info_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type { i32 }
%struct.file_operations = type { i32 }
%struct.snd_info_entry = type { i64, %struct.proc_dir_entry*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.proc_dir_entry* }

@ENXIO = common dso_local global i32 0, align 4
@snd_proc_root = common dso_local global %struct.TYPE_4__* null, align 8
@info_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_INFO_CONTENT_DATA = common dso_local global i64 0, align 8
@snd_info_entry_operations = common dso_local global %struct.file_operations zeroinitializer, align 4
@snd_info_text_entry_ops = common dso_local global %struct.file_operations zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_info_entry*)* @__snd_info_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__snd_info_register(%struct.snd_info_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.file_operations*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %5, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = icmp ne %struct.snd_info_entry* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  %17 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %18 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snd_proc_root, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %23, align 8
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %27 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %29, align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi %struct.proc_dir_entry* [ %24, %21 ], [ %30, %25 ]
  store %struct.proc_dir_entry* %32, %struct.proc_dir_entry** %4, align 8
  %33 = call i32 @mutex_lock(i32* @info_mutex)
  %34 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %35 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %34, i32 0, i32 1
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %35, align 8
  %37 = icmp ne %struct.proc_dir_entry* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %40 = icmp ne %struct.proc_dir_entry* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %31
  br label %99

42:                                               ; preds = %38
  %43 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %44 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @S_ISDIR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %50 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %53 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %56 = call %struct.proc_dir_entry* @proc_mkdir_mode(i32 %51, i32 %54, %struct.proc_dir_entry* %55)
  store %struct.proc_dir_entry* %56, %struct.proc_dir_entry** %5, align 8
  %57 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %58 = icmp ne %struct.proc_dir_entry* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = call i32 @mutex_unlock(i32* @info_mutex)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %101

63:                                               ; preds = %48
  br label %95

64:                                               ; preds = %42
  %65 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %66 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SNDRV_INFO_CONTENT_DATA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store %struct.file_operations* @snd_info_entry_operations, %struct.file_operations** %6, align 8
  br label %72

71:                                               ; preds = %64
  store %struct.file_operations* @snd_info_text_entry_ops, %struct.file_operations** %6, align 8
  br label %72

72:                                               ; preds = %71, %70
  %73 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %74 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %77 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %80 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %81 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %82 = call %struct.proc_dir_entry* @proc_create_data(i32 %75, i32 %78, %struct.proc_dir_entry* %79, %struct.file_operations* %80, %struct.snd_info_entry* %81)
  store %struct.proc_dir_entry* %82, %struct.proc_dir_entry** %5, align 8
  %83 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %84 = icmp ne %struct.proc_dir_entry* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %72
  %86 = call i32 @mutex_unlock(i32* @info_mutex)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %101

89:                                               ; preds = %72
  %90 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %91 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %92 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @proc_set_size(%struct.proc_dir_entry* %90, i32 %93)
  br label %95

95:                                               ; preds = %89, %63
  %96 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %97 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %98 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %97, i32 0, i32 1
  store %struct.proc_dir_entry* %96, %struct.proc_dir_entry** %98, align 8
  br label %99

99:                                               ; preds = %95, %41
  %100 = call i32 @mutex_unlock(i32* @info_mutex)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %85, %59, %13
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir_mode(i32, i32, %struct.proc_dir_entry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i32, i32, %struct.proc_dir_entry*, %struct.file_operations*, %struct.snd_info_entry*) #1

declare dso_local i32 @proc_set_size(%struct.proc_dir_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
