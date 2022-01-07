; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_remove_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_remove_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32 }
%struct.fsnotify_mark = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_group*, i32*, i32, i32)* @fanotify_remove_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fanotify_remove_mark(%struct.fsnotify_group* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsnotify_group*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsnotify_mark*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fsnotify_mark* null, %struct.fsnotify_mark** %10, align 8
  %13 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %14 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %18 = call %struct.fsnotify_mark* @fsnotify_find_mark(i32* %16, %struct.fsnotify_group* %17)
  store %struct.fsnotify_mark* %18, %struct.fsnotify_mark** %10, align 8
  %19 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %20 = icmp ne %struct.fsnotify_mark* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %23 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %62

27:                                               ; preds = %4
  %28 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @fanotify_mark_remove_from_mask(%struct.fsnotify_mark* %28, i32 %29, i32 %30, i32* %12)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %34 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fsnotify_conn_mask(i32 %35)
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %41 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fsnotify_recalc_mask(i32 %42)
  br label %44

44:                                               ; preds = %39, %27
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %49 = call i32 @fsnotify_detach_mark(%struct.fsnotify_mark* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %52 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %58 = call i32 @fsnotify_free_mark(%struct.fsnotify_mark* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %10, align 8
  %61 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %21
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fsnotify_mark* @fsnotify_find_mark(i32*, %struct.fsnotify_group*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fanotify_mark_remove_from_mask(%struct.fsnotify_mark*, i32, i32, i32*) #1

declare dso_local i32 @fsnotify_conn_mask(i32) #1

declare dso_local i32 @fsnotify_recalc_mask(i32) #1

declare dso_local i32 @fsnotify_detach_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @fsnotify_free_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
