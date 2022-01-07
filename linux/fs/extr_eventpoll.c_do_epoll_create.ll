; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_do_epoll_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_do_epoll_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { %struct.file* }
%struct.file = type { i32 }

@EPOLL_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[eventpoll]\00", align 1
@eventpoll_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_epoll_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_epoll_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.eventpoll*, align 8
  %7 = alloca %struct.file*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.eventpoll* null, %struct.eventpoll** %6, align 8
  %8 = load i32, i32* @EPOLL_CLOEXEC, align 4
  %9 = load i32, i32* @O_CLOEXEC, align 4
  %10 = icmp ne i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @EPOLL_CLOEXEC, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = call i32 @ep_alloc(%struct.eventpoll** %6)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %67

27:                                               ; preds = %21
  %28 = load i32, i32* @O_RDWR, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @O_CLOEXEC, align 4
  %31 = and i32 %29, %30
  %32 = or i32 %28, %31
  %33 = call i32 @get_unused_fd_flags(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %27
  %39 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @O_CLOEXEC, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %40, %43
  %45 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @eventpoll_fops, %struct.eventpoll* %39, i32 %44)
  store %struct.file* %45, %struct.file** %7, align 8
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = call i64 @IS_ERR(%struct.file* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.file*, %struct.file** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.file* %50)
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %38
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %55 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %54, i32 0, i32 0
  store %struct.file* %53, %struct.file** %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.file*, %struct.file** %7, align 8
  %58 = call i32 @fd_install(i32 %56, %struct.file* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %49
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @put_unused_fd(i32 %61)
  br label %63

63:                                               ; preds = %60, %36
  %64 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %65 = call i32 @ep_free(%struct.eventpoll* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %52, %25, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ep_alloc(%struct.eventpoll**) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.eventpoll*, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @ep_free(%struct.eventpoll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
