; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_do_inotify_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_do_inotify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32 }

@IN_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@IN_NONBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@inotify_max_queued_events = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"inotify\00", align 1
@inotify_fops = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_inotify_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_inotify_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsnotify_group*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @IN_CLOEXEC, align 4
  %7 = load i32, i32* @O_CLOEXEC, align 4
  %8 = icmp ne i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load i32, i32* @IN_NONBLOCK, align 4
  %12 = load i32, i32* @O_NONBLOCK, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IN_CLOEXEC, align 4
  %18 = load i32, i32* @IN_NONBLOCK, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load i32, i32* @inotify_max_queued_events, align 4
  %28 = call %struct.fsnotify_group* @inotify_new_group(i32 %27)
  store %struct.fsnotify_group* %28, %struct.fsnotify_group** %4, align 8
  %29 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %30 = call i64 @IS_ERR(%struct.fsnotify_group* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.fsnotify_group* %33)
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %26
  %36 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* @inotify_fops, %struct.fsnotify_group* %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %45 = call i32 @fsnotify_destroy_group(%struct.fsnotify_group* %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %32, %23
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.fsnotify_group* @inotify_new_group(i32) #1

declare dso_local i64 @IS_ERR(%struct.fsnotify_group*) #1

declare dso_local i32 @PTR_ERR(%struct.fsnotify_group*) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.fsnotify_group*, i32) #1

declare dso_local i32 @fsnotify_destroy_group(%struct.fsnotify_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
