; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_create_entry.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_snd_info_create_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i32, i32, i32, i32, %struct.module*, %struct.snd_info_entry*, i32, i32* }
%struct.module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@SNDRV_INFO_CONTENT_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_info_entry* (i8*, %struct.snd_info_entry*, %struct.module*)* @snd_info_create_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_info_entry* @snd_info_create_entry(i8* %0, %struct.snd_info_entry* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.snd_info_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_info_entry*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.snd_info_entry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.snd_info_entry* %1, %struct.snd_info_entry** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.snd_info_entry* @kzalloc(i32 48, i32 %9)
  store %struct.snd_info_entry* %10, %struct.snd_info_entry** %8, align 8
  %11 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %12 = icmp eq %struct.snd_info_entry* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.snd_info_entry* null, %struct.snd_info_entry** %4, align 8
  br label %66

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kstrdup(i8* %15, i32 %16)
  %18 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %19 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %18, i32 0, i32 7
  store i32* %17, i32** %19, align 8
  %20 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %21 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %20, i32 0, i32 7
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %26 = call i32 @kfree(%struct.snd_info_entry* %25)
  store %struct.snd_info_entry* null, %struct.snd_info_entry** %4, align 8
  br label %66

27:                                               ; preds = %14
  %28 = load i32, i32* @S_IFREG, align 4
  %29 = or i32 %28, 292
  %30 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %31 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @SNDRV_INFO_CONTENT_TEXT, align 4
  %33 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %34 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %36 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %35, i32 0, i32 1
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %39 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %38, i32 0, i32 2
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %42 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %41, i32 0, i32 3
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %45 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %46 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %45, i32 0, i32 5
  store %struct.snd_info_entry* %44, %struct.snd_info_entry** %46, align 8
  %47 = load %struct.module*, %struct.module** %7, align 8
  %48 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %49 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %48, i32 0, i32 4
  store %struct.module* %47, %struct.module** %49, align 8
  %50 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %51 = icmp ne %struct.snd_info_entry* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %27
  %53 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %54 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  %57 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %56, i32 0, i32 3
  %58 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %59 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %58, i32 0, i32 2
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %62 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %52, %27
  %65 = load %struct.snd_info_entry*, %struct.snd_info_entry** %8, align 8
  store %struct.snd_info_entry* %65, %struct.snd_info_entry** %4, align 8
  br label %66

66:                                               ; preds = %64, %24, %13
  %67 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  ret %struct.snd_info_entry* %67
}

declare dso_local %struct.snd_info_entry* @kzalloc(i32, i32) #1

declare dso_local i32* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.snd_info_entry*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
