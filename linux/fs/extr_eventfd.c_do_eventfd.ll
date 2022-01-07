; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventfd.c_do_eventfd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventfd.c_do_eventfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventfd_ctx = type { i32, i32, i32, i32, i32 }

@EFD_CLOEXEC = common dso_local global i64 0, align 8
@O_CLOEXEC = common dso_local global i64 0, align 8
@EFD_NONBLOCK = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i64 0, align 8
@EFD_FLAGS_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@eventfd_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[eventfd]\00", align 1
@eventfd_fops = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EFD_SHARED_FCNTL_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_eventfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_eventfd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.eventfd_ctx*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @EFD_CLOEXEC, align 8
  %9 = load i64, i64* @O_CLOEXEC, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load i64, i64* @EFD_NONBLOCK, align 8
  %14 = load i64, i64* @O_NONBLOCK, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EFD_FLAGS_SET, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.eventfd_ctx* @kmalloc(i32 20, i32 %27)
  store %struct.eventfd_ctx* %28, %struct.eventfd_ctx** %6, align 8
  %29 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %30 = icmp ne %struct.eventfd_ctx* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %26
  %35 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %35, i32 0, i32 4
  %37 = call i32 @kref_init(i32* %36)
  %38 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %38, i32 0, i32 3
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @ida_simple_get(i32* @eventfd_ida, i32 0, i32 0, i32 %47)
  %49 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %52 = load i32, i32* @O_RDWR, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @EFD_SHARED_FCNTL_FLAGS, align 4
  %55 = and i32 %53, %54
  %56 = or i32 %52, %55
  %57 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @eventfd_fops, %struct.eventfd_ctx* %51, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %34
  %61 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %6, align 8
  %62 = call i32 @eventfd_free_ctx(%struct.eventfd_ctx* %61)
  br label %63

63:                                               ; preds = %60, %34
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %31, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.eventfd_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.eventfd_ctx*, i32) #1

declare dso_local i32 @eventfd_free_ctx(%struct.eventfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
