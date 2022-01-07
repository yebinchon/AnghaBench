; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_add_mark_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_add_mark_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32, i32, i32, i32, i64, %struct.fsnotify_group* }
%struct.fsnotify_group = type { i32, i32, i32 }

@FSNOTIFY_MARK_FLAG_ALIVE = common dso_local global i32 0, align 4
@FSNOTIFY_MARK_FLAG_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsnotify_add_mark_locked(%struct.fsnotify_mark* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsnotify_mark*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fsnotify_group*, align 8
  %13 = alloca i32, align 4
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %15 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %14, i32 0, i32 5
  %16 = load %struct.fsnotify_group*, %struct.fsnotify_group** %15, align 8
  store %struct.fsnotify_group* %16, %struct.fsnotify_group** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.fsnotify_group*, %struct.fsnotify_group** %12, align 8
  %18 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %17, i32 0, i32 2
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %25 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* @FSNOTIFY_MARK_FLAG_ALIVE, align 4
  %28 = load i32, i32* @FSNOTIFY_MARK_FLAG_ATTACHED, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %31 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %35 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %34, i32 0, i32 2
  %36 = load %struct.fsnotify_group*, %struct.fsnotify_group** %12, align 8
  %37 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %36, i32 0, i32 1
  %38 = call i32 @list_add(i32* %35, i32* %37)
  %39 = load %struct.fsnotify_group*, %struct.fsnotify_group** %12, align 8
  %40 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %39, i32 0, i32 0
  %41 = call i32 @atomic_inc(i32* %40)
  %42 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %43 = call i32 @fsnotify_get_mark(%struct.fsnotify_mark* %42)
  %44 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %45 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @fsnotify_add_mark_list(%struct.fsnotify_mark* %47, i32* %48, i32 %49, i32 %50, i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %5
  br label %68

56:                                               ; preds = %5
  %57 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %58 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %63 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fsnotify_recalc_mask(i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %92

68:                                               ; preds = %55
  %69 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %70 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %69, i32 0, i32 1
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load i32, i32* @FSNOTIFY_MARK_FLAG_ALIVE, align 4
  %73 = load i32, i32* @FSNOTIFY_MARK_FLAG_ATTACHED, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %77 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %81 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %80, i32 0, i32 2
  %82 = call i32 @list_del_init(i32* %81)
  %83 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %84 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.fsnotify_group*, %struct.fsnotify_group** %12, align 8
  %87 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %86, i32 0, i32 0
  %88 = call i32 @atomic_dec(i32* %87)
  %89 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %7, align 8
  %90 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %68, %66
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @fsnotify_get_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_add_mark_list(%struct.fsnotify_mark*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fsnotify_recalc_mask(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
